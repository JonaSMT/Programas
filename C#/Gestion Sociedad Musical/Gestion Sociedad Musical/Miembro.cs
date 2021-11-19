using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gestion_Sociedad_Musical
{
    abstract class Miembro
    {

        public string Nombre { get; set; }
        public string Dni { get; set; }
        public int Edad { get; set; }

        public Miembro(string nombre, string dni, int edad)
        {
            Nombre = nombre;
            Dni = dni;
            Edad = edad;
        }

        public override string ToString()
        {
            return "\nNombre: " + Nombre + "\nDNI: " + Dni + "\nEdad: " + Edad;
        }

        public virtual string toArchivo()
        {
            return Nombre+";"+Dni+";"+Edad+";";
        }
    }
}
