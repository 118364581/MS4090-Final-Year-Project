using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace MS4090_FYP_118364581_Conor_McMahon
{
    internal class ECA
    {
        private BitArray Cells; private BitArray NewCells;
        private double[] Damage_Vector; private double[] NewDamage_Vector;
        
        private BitArray Rule_binary;
        private int Cell_length;
        private int Generations;
        
        // Default Constructor Method
        public ECA(int Rule, int Cell_length, int Generations) 
        {
            this.Cell_length= Cell_length;
            this.Generations = Generations;

            BitArray Rule_binary = new BitArray(8);
            for (int len = 7; len >= 0; len--)
            {
                if (Rule / (int)Math.Pow(2, len) >= 1)
                {
                    Rule_binary.Set(len, true);
                    Rule = Rule % (int)Math.Pow(2, len);
                }
            }
            this.Rule_binary = Rule_binary;

            double[] Damage_Vector = new double[Cell_length]; double[] NewDamage_Vector = new double[Cell_length]; 
            this.Damage_Vector = Damage_Vector; this.NewDamage_Vector = NewDamage_Vector;

            BitArray Cells = new BitArray(Cell_length); BitArray NewCells = new BitArray(Cell_length);
            this.Cells = Cells; this.NewCells = NewCells;
        }

        private bool Evolve(int index, BitArray source)
        {
            byte b;
            int left = index - 1,
                middle = index,
                right = index + 1;

            if (left < 0)
            {
                left = Cell_length - 1;
            }
            if (right >= Cell_length)
            {
                right -= Cell_length;
            }

            b = Convert.ToByte(4 * Convert.ToByte(source.Get(left)) + 2 * Convert.ToByte(source.Get(middle)) + Convert.ToByte(source.Get(right)));
            return Rule_binary[b];
        }

        public double[] Lyapunov_Exponent()
        {
            double lambda = 0.0;
            double[] Lambda = new double[Generations];

            Random Rnd = new Random();
            for (int i = 0; i < Cell_length; i++)
            {
                int rnd = Rnd.Next(0, 2);
                if (rnd == 1)
                {
                    Cells.Set(i, true);
                }
            }

            // Set initial Cells2 with 1 perturbation
            int perturbation = 1;
            while (true)
            {
                if (Cells[Cell_length - perturbation] == false)
                {
                    Damage_Vector[Cell_length - perturbation] = 1;
                    break;
                }
                perturbation++;
            }

            // Loop for each gen
            for (int gen = 1; gen <= Generations; gen++)
            {
                // Set NewCells1 to 1 step forward from Cells1
                for (int j = 0; j < Cell_length; j++)              
                    NewCells.Set(j, Evolve(j, Cells));

                // For each difference between Cells1 and Cells2: create replicas
                for (int j = 0; j < Cell_length; j++)
                {
                    if (Damage_Vector[j] > 0)
                    {
                        // Create replica Rj = Cells1 with 1 difference at j
                        BitArray Rj = new BitArray(Cell_length); BitArray NewRj = new BitArray(Cell_length);

                        for (int k = 0; k < Cell_length; k++)
                            Rj.Set(k, Cells[k]);

                        if (Rj[j] == true)
                            Rj.Set(j, false);
                        else
                            Rj.Set(j, true);

                        // Evolve Rj over 1 timestep
                        for (int k = 0; k < Cell_length; k++)
                            NewRj.Set(k, Evolve(k, Rj));

                        // For each difference between NewRj and NewCells1:
                        for (int i = 0; i < Cell_length; i++)
                            if (NewCells[i] ^ NewRj[i])
                                NewDamage_Vector[i] += Damage_Vector[j];
                    }
                }

                // Sum NewDamage_Vector values
                double damage = 0;
                for (int i = 0; i < Cell_length; i++)
                    damage += NewDamage_Vector[i];

                // Calculate lambda
                lambda = Math.Log(damage) / gen;
                Lambda[gen - 1] = lambda;

                // Set Damage_Vector = NewDamage_Vector
                Damage_Vector = NewDamage_Vector;

                // Set NewDamage_Vector to 0s
                NewDamage_Vector = new double[Cell_length];

                // Set Cells1 = NewCells1
                for (int i = 0; i < Cell_length; i++)
                    Cells.Set(i, NewCells[i]);
            }
            return Lambda;
        }

        public void Cellular_Automata()
        {
            // Set initial Cells
            Cells.Set(Cell_length / 2, true);

            // Loop for each gen
            for (int gen = 1; gen <= Generations; gen++)
            {
                // Set NewCells1 to 1 step forward from Cells1
                for (int j = 0; j < Cell_length; j++)
                    NewCells.Set(j, Evolve(j, Cells));

                //----------------------------------------------------------------------------------------------------------------------------------
                Console.WriteLine("Cells 1 evolved 1 timestep, gen = " + gen);
                for (int i = 0; i < Cell_length; i++)
                {
                    if (NewCells[i] == false)
                        Console.Write("0");
                    else
                        Console.Write("1");
                }
                Console.WriteLine(); Console.WriteLine();
                //----------------------------------------------------------------------------------------------------------------------------------

                // Set Cells1 = NewCells1
                for (int i = 0; i < Cell_length; i++)
                    Cells.Set(i, NewCells[i]);
            }
        }
    }
}
