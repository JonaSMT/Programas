using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.Entidades
{
    internal class Cliente
    {
        public string NombreCliente { get; set; }
        public string Dni { get; set; }
        public string Calle { get; set; }
        public string Provincia { get; set; }
        public string Poblacion { get; set; }
        public int Cp { get; set; }

        public Cliente()
        {
        }

        public Cliente(string cliente, string dni, string calle, string provincia, string municipio, int cp)
        {
            NombreCliente = cliente;
            Dni = dni;
            Calle = calle;
            Provincia = provincia;
            Poblacion = municipio;
            Cp = cp;
        }
    }
}
