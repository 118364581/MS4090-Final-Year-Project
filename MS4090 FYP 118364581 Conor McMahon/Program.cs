using Microsoft.VisualBasic;
using MS4090_FYP_118364581_Conor_McMahon;
using System;
using System.Runtime.CompilerServices;
using System.Diagnostics;

namespace MS4090_FYP_118364581_Conor_McMahon
{
    class Program
    {
        static void Main(string[] args)
        {
            ECA CA = new ECA(150, 1001, 500);
            CA.Cellular_Automata();
            CA.Lyapunov_Exponent();

            ReCA reCA = new ReCA("C:/Users/conor/Downloads/CPM01.20230202T190255.csv", 3, 48, 40, 0.8, 21, false);
            reCA.Train();
            reCA.Test();
            reCA.Forecast();

            ElmanNN Elman = new ElmanNN("C:/Users/conor/Downloads/CPM01.20230202T190255.csv", 6, 0.8, 10, false);
            Elman.Train();
            Elman.Test();
            Elman.Forecast();

            JordanNN Jordan = new JordanNN("C:/Users/conor/Downloads/CPM01.20230202T190255.csv", 9, 0.8, 9, false);
            Jordan.Train();
            Jordan.Test();
            Jordan.Forecast();
        }
    }
}
