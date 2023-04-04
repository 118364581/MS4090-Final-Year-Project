using System;
using System;
using System.Runtime.CompilerServices;
using Encog.Bot.Browse.Range;
using Encog.Engine.Network.Activation;

using Encog.ML;
using Encog.ML.Data;
using Encog.ML.Data.Basic;
using Encog.ML.Train;
using Encog.ML.Train.Strategy;
using Encog.Neural.Networks;
using Encog.Neural.Networks.Training;
using Encog.Neural.Networks.Training.Anneal;
using Encog.Neural.Networks.Training.Lma;
using Encog.Neural.Networks.Training.Propagation.Back;
using Encog.Neural.Networks.Training.Propagation.Resilient;
using Encog.Neural.Pattern;
using Encog.Util.Arrayutil;
using SuperUtils = Encog.Util.NetworkUtil.NetworkUtility;
using SuperUtilsTrainer = Encog.Util.NetworkUtil.TrainerHelper;

namespace MS4090_FYP_118364581_Conor_McMahon
{
    internal class ElmanNN
    {
        private IMLDataSet trainingSet; private IMLDataSet testSet; private int test_size; private int train_size;
        private double[][] NNTrain_Output; private double[][] NNTest_Output;
        private double[][] NNForecast_Input; private double[][] Forecast_Output;

        private BasicNetwork elmanNetwork;

        public ElmanNN(string CSVPath, int window_size, double trainpercent, int neurons, bool Validation)
        {

            // Inputting data
            //--------------------------------------------------------------------------------
            string[] lines = File.ReadAllLines(CSVPath);
            int nrows = lines.Length - 2;
            double[] column5 = new double[nrows + 1]; double[] diff_vals = new double[nrows]; double[] norm_diff = new double[nrows];

            for (int i = 0; i <= nrows; i++)
            {
                string[] values = lines[i + 1].Split(',');
                column5[i] = Convert.ToDouble(values[4].Trim(new Char[] { '/', '"', ' ' }));
            }

            for (int i = 0; i < nrows; i++)
                diff_vals[i] = Math.Round(column5[i + 1] - column5[i], 3);

            var norm = new NormalizedField(NormalizationAction.Normalize, null, diff_vals.Max(), diff_vals.Min(), 1, 0);
            for (int i = 0; i < nrows; i++)
                norm_diff[i] = norm.Normalize(diff_vals[i]);


            int train_size = Convert.ToInt32(Math.Round(trainpercent * (nrows - window_size)));
            int test_size = 0;
            if (Validation == true)
            {
                test_size = Convert.ToInt32(Math.Round(0.15 * (nrows - window_size)));
            }
            else
            {
                test_size = nrows - window_size - train_size;
            }

            double[][] Train_Input = Enumerable.Range(0, train_size).Select(x => Enumerable.Range(0, window_size).Select(y => 0.0).ToArray()).ToArray();
            double[][] Test_Input = Enumerable.Range(0, test_size).Select(x => Enumerable.Range(0, window_size).Select(y => 0.0).ToArray()).ToArray();

            double[][] Train_Output = Enumerable.Range(0, train_size).Select(x => Enumerable.Range(0, 1).Select(y => 0.0).ToArray()).ToArray();
            double[][] Test_Output = Enumerable.Range(0, test_size).Select(x => Enumerable.Range(0, 1).Select(y => 0.0).ToArray()).ToArray();

            double[][] NNTrain_Output = Enumerable.Range(0, train_size).Select(x => Enumerable.Range(0, 4).Select(y => 0.0).ToArray()).ToArray();
            double[][] NNTest_Output = Enumerable.Range(0, test_size).Select(x => Enumerable.Range(0, 4).Select(y => 0.0).ToArray()).ToArray();

            double[][] NNForecast_Input = Enumerable.Range(0, nrows - window_size).Select(x => Enumerable.Range(0, window_size).Select(y => 0.0).ToArray()).ToArray();
            double[][] Forecast_Output = Enumerable.Range(0, nrows - window_size).Select(x => Enumerable.Range(0, 1).Select(y => 0.0).ToArray()).ToArray();



            for (int i = 0; i < nrows - window_size; i++)
            {
                if (i < train_size)
                {
                    for (int j = 0; j < window_size; j++)
                    {
                        Train_Input[i][j] = norm_diff[i + j];
                        NNForecast_Input[i][j] = norm_diff[i + j];
                    }
                    Train_Output[i][0] = norm_diff[i + window_size];
                    Forecast_Output[i][0] = norm_diff[i + window_size];
                }
                else if (i < train_size + test_size)
                {
                    for (int j = 0; j < window_size; j++)
                    {
                        Test_Input[i - train_size][j] = norm_diff[i + j];
                        NNForecast_Input[i][j] = norm_diff[i + j];
                    }
                    Test_Output[i - train_size][0] = norm_diff[i + window_size];
                    Forecast_Output[i][0] = norm_diff[i + window_size];
                }
            }

            NNTrain_Output = Classify(Train_Output); NNTest_Output = Classify(Test_Output);
            
            IMLDataSet trainingSet = new BasicMLDataSet(Train_Input, NNTrain_Output);
            IMLDataSet testSet = new BasicMLDataSet(Test_Input, NNTest_Output);
            this.trainingSet = trainingSet; this.testSet = testSet; this.test_size = test_size; this.train_size = train_size;
            this.NNTrain_Output = NNTrain_Output; this.NNTest_Output = NNTest_Output;
            this.NNForecast_Input = NNForecast_Input; this.Forecast_Output = Forecast_Output;

            // Elman Neural Network
            var elmanNetwork = (BasicNetwork)CreateElmanNetwork(trainingSet.InputSize, neurons);
            this.elmanNetwork = elmanNetwork;
        }

        private IMLMethod CreateElmanNetwork(int input, int neurons)
        {
            // construct an Elman type network
            var pattern = new ElmanPattern
            {
                ActivationFunction = new ActivationSoftMax(),
                InputNeurons = input
            };
            pattern.AddHiddenLayer(neurons);
            pattern.OutputNeurons = 4;
            return pattern.Generate();
        }

        private double[][] Classify(double[][] Input_vals)
        {
            double[][] Output_vals = Enumerable.Range(0, Input_vals.Length).Select(x => Enumerable.Range(0, 4).Select(y => 0.0).ToArray()).ToArray();

            for (int row = 0; row < Input_vals.Length; row++)
            {
                for (int col = 0; col < Input_vals[0].Length; col++)
                {
                    if (Input_vals[row][col] <= 0.4)
                    {
                        Output_vals[row][0] = 0.0;
                        Output_vals[row][1] = 0.0;
                        Output_vals[row][2] = 0.0;
                        Output_vals[row][3] = 1.0;
                    }
                    else if (Input_vals[row][col] <= 0.4727273 && Input_vals[row][col] > 0.4)
                    {
                        Output_vals[row][0] = 0.0;
                        Output_vals[row][1] = 0.0;
                        Output_vals[row][2] = 1.0;
                        Output_vals[row][3] = 0.0;
                    }
                    else if (Input_vals[row][col] <= 0.5454545 && Input_vals[row][col] > 0.4727273)
                    {
                        Output_vals[row][0] = 0.0;
                        Output_vals[row][1] = 1.0;
                        Output_vals[row][2] = 0.0;
                        Output_vals[row][3] = 0.0;
                    }
                    else if (Input_vals[row][col] > 0.5454545)
                    {
                        Output_vals[row][0] = 1.0;
                        Output_vals[row][1] = 0.0;
                        Output_vals[row][2] = 0.0;
                        Output_vals[row][3] = 0.0;
                    }
                }
            }
            return Output_vals;
        }

        private double[] Midpoint(double[][] input)
        {
            double[] ideal_midpoint = new double[input.Length];
            for (int i = 0; i < input.Length; i++)
            {
                if (input[i][0] == 1.0)
                    ideal_midpoint[i] = 1.25;
                else if (input[i][1] == 1.0)
                    ideal_midpoint[i] = 0.4;
                else if (input[i][2] == 1.0)
                    ideal_midpoint[i] = 0.0;
                else if (input[i][3] == 1.0)
                    ideal_midpoint[i] = -1.3;
            }
            return ideal_midpoint;
        }

        public double[] Train()
        {
            elmanNetwork.Reset();
            // train the neural network
            IMLTrain trainMain = new ResilientPropagation(elmanNetwork, trainingSet);

   

            int epoch = 0; double[] Train_errors = new double[5000];
            while (epoch < 5000)
            {
                trainMain.Iteration();
                Train_errors[epoch] = trainMain.Error;

                if (epoch > 2)
                    if (Math.Abs(Train_errors[epoch] - Train_errors[epoch - 1]) < 0.0001)
                        break;
                epoch++;
            }

            return Train_errors;
        }

        public double[] Test()
        {
            double[] Error = new double[test_size]; int count = 0;
            var ideal_midpoint = Midpoint(NNTest_Output);
            foreach (IMLDataPair pair in testSet)
            {
                IMLData output = elmanNetwork.Compute(pair.Input);
                Error[count] = (Math.Pow(ideal_midpoint[count] - 1.25, 2) * Math.Pow(output[0] - NNTest_Output[count][0], 2) + Math.Pow(ideal_midpoint[count] - 0.4, 2) * Math.Pow(output[1] - NNTest_Output[count][1], 2) + Math.Pow(ideal_midpoint[count] - 0.0, 2) * Math.Pow(output[2] - NNTest_Output[count][2], 2) + Math.Pow(ideal_midpoint[count] + 1.3, 2) * Math.Pow(output[3] - NNTest_Output[count][3], 2)) / 4.0;
                count++;
            }
            return Error;
        }

        public double[][] Forecast()
        {
            //Create Forecast dataset
            var NNForecast_Output = Classify(Forecast_Output);


            IMLDataSet ForecastSet = new BasicMLDataSet(NNForecast_Input, NNForecast_Output);
            double[][] Forecast = Enumerable.Range(0, train_size + test_size).Select(x => Enumerable.Range(0, 4).Select(y => 0.0).ToArray()).ToArray();

            int count = 0;
            foreach (IMLDataPair pair in ForecastSet)
            {
                IMLData output = elmanNetwork.Compute(pair.Input);
                Forecast[count][0] = output[0]; Forecast[count][1] = output[1]; Forecast[count][2] = output[2]; Forecast[count][3] = output[3];
                if (count == train_size + test_size - 1)
                    break;
                count++;
            }
            return Forecast;
        }
    }
}
