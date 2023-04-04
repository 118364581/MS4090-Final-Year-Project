using System.Collections;
using Encog.Engine.Network.Activation;
using Encog.ML.Data;
using Encog.ML.Data.Basic;
using Encog.ML.Train;
using Encog.Neural.Networks;
using Encog.Neural.Networks.Layers;
using Encog.Neural.Networks.Training.Propagation.Resilient;
using Encog.Util.Arrayutil;

namespace MS4090_FYP_118364581_Conor_McMahon
{
    internal class ReCA
    {
        private BitArray Cells; private BitArray Cells2;
        private BitArray Rule_binary = new BitArray(8);
        private int Generations; private int window_size; private int train_size; private int test_size;
        private double[][] Train_Input; private double[][] Train_Output;
        private double[][] Test_Input; private double[][] Test_Output;
        private double[][] Input; private double[][] Output;
        private BasicNetwork network;

        public ReCA(string CSVPath, int window_size, int rule, int Generations, double trainpercent, int neurons, bool Validation)
        {
            this.Generations = Generations; this.window_size = window_size; 
            this.Cells = new BitArray(32); this.Cells2 = new BitArray(32);
            
            // Inputting & Encoding
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

            double[][] Input = Enumerable.Range(0, nrows - window_size).Select(x => Enumerable.Range(0, window_size).Select(y => 0.0).ToArray()).ToArray();
            double[][] Ideal_Output = Enumerable.Range(0, nrows - window_size).Select(x => Enumerable.Range(0, 1).Select(y => 0.0).ToArray()).ToArray();
            this.Input = Input; this.Output = Ideal_Output;

            for (int i = 0; i < nrows - window_size; i++)
            {
                for (int j = 0; j < window_size; j++)
                {
                    Input[i][j] = norm_diff[i + j];
                }
                Ideal_Output[i][0] = norm_diff[i + window_size];
            }

            // Convert int rule into an array of bit values
            BitArray Rule_binary = new BitArray(8);
            for (int len = 7; len >= 0; len--)
            {
                if (rule / (int)Math.Pow(2, len) >= 1)
                {
                    Rule_binary.Set(len, true);
                    rule = rule % (int)Math.Pow(2, len);
                }
            }
            this.Rule_binary = Rule_binary;
            //--------------------------------------------------------------------------------

            // Split into training and testing sets
            //--------------------------------------------------------------------------------
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
                

            double[][] Train_Input = Enumerable.Range(0, train_size).Select(x => Enumerable.Range(0, Cells.Length).Select(y => 0.0).ToArray()).ToArray();
            double[][] Test_Input = Enumerable.Range(0, test_size).Select(x => Enumerable.Range(0, Cells.Length).Select(y => 0.0).ToArray()).ToArray();

            double[][] Train_Output = Enumerable.Range(0, train_size).Select(x => Enumerable.Range(0, 1).Select(y => 0.0).ToArray()).ToArray();
            double[][] Test_Output = Enumerable.Range(0, test_size).Select(x => Enumerable.Range(0, 1).Select(y => 0.0).ToArray()).ToArray();

            for (int i = 0; i < nrows - window_size; i++)
            {
                if (i < train_size)
                {
                    Train_Input[i] = Input[i];
                    Train_Output[i] = Ideal_Output[i];
                }
                else if (i < train_size + test_size)
                {
                    Test_Input[i - train_size] = Input[i];
                    Test_Output[i - train_size] = Ideal_Output[i];
                }
            }

            // create a neural network, without using a factory
            BasicNetwork network = new BasicNetwork();
            network.AddLayer(new BasicLayer(new ActivationLinear(), true, 32));
            network.AddLayer(new BasicLayer(new ActivationLinear(), true, neurons));
            network.AddLayer(new BasicLayer(new ActivationSoftMax(), false, 4));
            network.Structure.FinalizeStructure();
            network.Reset();

            this.network = network;
            this.Train_Input = Train_Input; this.Train_Output = Train_Output;
            this.Test_Input = Test_Input; this.Test_Output = Test_Output;
            this.train_size = train_size; this.test_size = test_size;
        }

        private BitArray Encode32(float val)
        {
            byte[] Bytes = BitConverter.GetBytes(val);
            BitArray Bits = new BitArray(Bytes.ToArray());
            
            return Bits;
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

        private bool Evolve(int index) 
        {
            byte b;
            int left = index - 1,
                middle = index,
                right = index + 1;

            if (left < 0)
                left = Cells.Length - 1;
            
            if (right >= Cells.Length)
                right -= Cells.Length;
            
            b = Convert.ToByte(4 * Convert.ToByte(Cells.Get(left)) + 2 * Convert.ToByte(Cells.Get(middle)) + Convert.ToByte(Cells.Get(right)));
            return Rule_binary[b];
        }

        private BitArray EchoStateMechanism(BitArray Cells, BitArray Cells2)
        {
            BitArray NewCells = new BitArray(Cells.Length);
            Random Rnd = new Random();

            for (int i = 0; i < Cells.Length; i++)
            {
                // Normalized Addition ESM
                if (Cells[i] && Cells2[i] == true)
                {
                    NewCells.Set(i, true);
                }
                else if (Cells[i] && Cells2[i] == false)
                {
                    NewCells.Set(i, false);
                }
                else
                {
                    int rnd = Rnd.Next(0, 2);
                    if (rnd == 1)
                    {
                        NewCells.Set(i, true);
                    }
                }
            }
            return NewCells;
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

        private double[][] Reservoir(double[][] Input_vals)
        {
            double[][] NNInput = Enumerable.Range(0, Input_vals.Length).Select(x => Enumerable.Range(0, Cells.Length).Select(y => 0.0).ToArray()).ToArray();

            for (int row = 0; row < Input_vals.Length; row++)
            {
                Cells = Encode32(Convert.ToSingle(Input_vals[row][0]));

                // Loop for each gen
                for (int gen = 1; gen <= Generations; gen++)
                {
                    BitArray NewCells = new BitArray(Cells.Length);

                    // Set NewCells to 1 step forward from Cells
                    for (int j = 0; j < Cells.Length; j++)
                        NewCells.Set(j, Evolve(j));

                    // Set Cells = NewCells
                    for (int i = 0; i < Cells.Length; i++)
                        Cells.Set(i, NewCells[i]);
                }

                for (int column = 1; column < window_size; column++)
                {
                    Cells2 = Encode32(Convert.ToSingle(Input_vals[row][column]));
                    Cells = EchoStateMechanism(Cells, Cells2);

                    // Loop for each gen
                    for (int gen = 1; gen <= Generations; gen++)
                    {
                        BitArray NewCells = new BitArray(Cells.Length);

                        // Set NewCells1 to 1 step forward from Cells1
                        for (int j = 0; j < Cells.Length; j++)
                            NewCells.Set(j, Evolve(j));

                        // Set Cells = NewCells
                        for (int i = 0; i < Cells.Length; i++)
                            Cells.Set(i, NewCells[i]);
                    }
                }
                for (int i = 0; i < Cells.Length; i++)
                    NNInput[row][i] = Convert.ToDouble(Cells[i]);
            }
            return NNInput;
        }

        public double[] Train()
        {
            network.Reset();
            // Reservoir
            //--------------------------------------------------------------------------------
            double[][] NNTrain_Input = Enumerable.Range(0, train_size).Select(x => Enumerable.Range(0, Cells.Length).Select(y => 0.0).ToArray()).ToArray();
            double[][] NNTrain_Output = Enumerable.Range(0, train_size).Select(x => Enumerable.Range(0, 4).Select(y => 0.0).ToArray()).ToArray();

            NNTrain_Input = Reservoir(Train_Input);
            NNTrain_Output = Classify(Train_Output);

            // Feed Forward Resilientpropagating Neural Network
            //--------------------------------------------------------------------------------

            // create training data
            IMLDataSet trainingSet = new BasicMLDataSet(NNTrain_Input, NNTrain_Output);
            
            // train the neural network
            IMLTrain train = new ResilientPropagation(network, trainingSet);

            double[] train_errors = new double[5000];
            int epoch = 0;
            while (epoch < 5000)
            {
                train.Iteration();
                train_errors[epoch] = train.Error;
                
                if(epoch > 5)
                    if (Math.Abs(train_errors[epoch] - train_errors[epoch - 1]) < 0.0001)
                        break;
                epoch++;
            } 
            return train_errors;
        }

        public double[] Test()
        {
            // Reservoir
            //--------------------------------------------------------------------------------
            double[][] NNTest_Input = Enumerable.Range(0, test_size).Select(x => Enumerable.Range(0, Cells.Length).Select(y => 0.0).ToArray()).ToArray();
            double[][] NNTest_Output = Enumerable.Range(0, test_size).Select(x => Enumerable.Range(0, 4).Select(y => 0.0).ToArray()).ToArray();

            NNTest_Input = Reservoir(Test_Input);
            NNTest_Output = Classify(Test_Output);
            //--------------------------------------------------------------------------------
            
            var ideal_midpoint = Midpoint(NNTest_Output);
            
            //Create test data
            IMLDataSet testSet = new BasicMLDataSet(NNTest_Input, NNTest_Output);

            // test the neural network
            int count = 0; double[] error = new double[test_size];
            foreach (IMLDataPair pair in testSet)
            {
                IMLData output = network.Compute(pair.Input);
                //error[count] = (Math.Pow(output[0] - NNTest_Output[count][0], 2) + Math.Pow(output[1] - NNTest_Output[count][1], 2) + Math.Pow(output[2] - NNTest_Output[count][2], 2) + Math.Pow(output[3] - NNTest_Output[count][3], 2))/4.0;
                error[count] = (Math.Pow(ideal_midpoint[count] - 1.25, 2) * Math.Pow(output[0] - NNTest_Output[count][0], 2) + Math.Pow(ideal_midpoint[count] - 0.4, 2) * Math.Pow(output[1] - NNTest_Output[count][1], 2) + Math.Pow(ideal_midpoint[count] - 0.0, 2) * Math.Pow(output[2] - NNTest_Output[count][2], 2) + Math.Pow(ideal_midpoint[count] + 1.3, 2) * Math.Pow(output[3] - NNTest_Output[count][3], 2)) / 4.0;
                count++;
            }
            return error;
        }

        public double[][] Forecast()
        {
            double[][] NNForecast_Input = Enumerable.Range(0, train_size + test_size).Select(x => Enumerable.Range(0, Cells.Length).Select(y => 0.0).ToArray()).ToArray();
            double[][] NNForecast_Output = Enumerable.Range(0, train_size + test_size).Select(x => Enumerable.Range(0, 4).Select(y => 0.0).ToArray()).ToArray();

            NNForecast_Input = Reservoir(Input);
            NNForecast_Output = Classify(Output);

            //Create Forecast dataset
            IMLDataSet ForecastSet = new BasicMLDataSet(NNForecast_Input, NNForecast_Output);
            double[][] Forecast = Enumerable.Range(0, train_size + test_size).Select(x => Enumerable.Range(0, 4).Select(y => 0.0).ToArray()).ToArray();

            int count = 0;
            foreach (IMLDataPair pair in ForecastSet)
            {
                IMLData output = network.Compute(pair.Input);
                Forecast[count][0] = output[0]; Forecast[count][1] = output[1]; Forecast[count][2] = output[2]; Forecast[count][3] = output[3];
                if (count == train_size + test_size - 1)
                    break;
                count++;
            }
            return Forecast;
        }
    }
}
