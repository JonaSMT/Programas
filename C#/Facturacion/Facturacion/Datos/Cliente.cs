using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.Datos
{
    class Cliente
    {
        public string Nombre { get; set; }
        public string Dni { get; set; }
        public string Calle { get; set; }
        public string Poblacion { get; set; }
        public int Cp { get; set; }
        public string Provincia { get; set; }

        public Cliente()
        {
        }

        public Cliente(string nombre, string dni, string calle, string poblacion, int cp, string provincia)
        {
            Nombre = nombre;
            Dni = dni;
            Calle = calle;
            Poblacion = poblacion;
            Cp = cp;
            Provincia = provincia;
        }
    }
}
