using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.Datos
{
    class Propietario
    {
        public string Nombre { get; set; }
        public string Nif { get; set; }
        public string Calle { get; set; }
        public string Provincia { get; set; }
        public string Localidad { get; set; }
        public int Cp { get; set; }
        public int Telefono { get; set; }
        public string Correo { get; set; }

        public Propietario()
        {
        }

        public Propietario(string nombre, string nif, string calle, string provincia, string localidad, int cp, int telefono, string correo)
        {
            Nombre = nombre;
            Nif = nif;
            Calle = calle;
            Provincia = provincia;
            Localidad = localidad;
            Cp = cp;
            Telefono = telefono;
            Correo = correo;
        }
    }
}
