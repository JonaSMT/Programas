using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.Entidades
{
    internal class Localidad
    {
        public int CodPostal { get; set; }
        public string Poblacion { get; set; }
        public string Provincia { get; set; }

        public Localidad()
        {
        }

        public Localidad(string poblacion, string provincia)
        {
            CodPostal = 0;
            Poblacion = poblacion;
            Provincia = provincia;
        }

        public Localidad(int codigopostal, string poblacion, string provincia)
        {
            CodPostal = codigopostal;
            Poblacion = poblacion;
            Provincia = provincia;
        }

        public override string? ToString()
        {
            return Poblacion + ";" + Provincia +";"+CodPostal;
        }
    }
}
