using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Crudd
{
    public class Operaciones
    {
        public static double OperacionI(double Salario)
        {
            return Salario * 0.0483;
        }

        public static double OperacionIr(double Salario)
        {
            return Salario * 0.01;
        }

        public static double OperacionPa(int hijo)
        {
            return 133 * hijo ;
        }

        public static double Operaciontotal(double Base,double Bono, double hijos )
        {
            return Base+Bono+hijos;
        }

        public static double OperacionLi(double Salario, double a, double b)
        {
            double w = Salario - a;
            double x = w - b;
            return x;
        }

     

    }
}