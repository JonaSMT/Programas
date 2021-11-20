using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.Entidades
{
    internal class Localidad
    {
        public int CodigoPostal { get; set; }
        public string Poblacion { get; set; }
        public string Provincia { get; set; }

        public Localidad()
        {
        }

        public Localidad(string poblacion, string provincia)
        {
            CodigoPostal = 0;
            Poblacion = poblacion;
            Provincia = provincia;
        }

        public Localidad(int codigopostal, string poblacion, string provincia)
        {
            CodigoPostal = codigopostal;
            Poblacion = poblacion;
            Provincia = provincia;
        }
    }
}
