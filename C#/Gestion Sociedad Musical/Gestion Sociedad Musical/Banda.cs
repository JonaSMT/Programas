using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gestion_Sociedad_Musical
{
    class Banda
    {
        public string Tipo { get; set; }

        public Banda(string tipo)
        {
            this.Tipo = tipo;
        }

        public override string ToString()
        {
            return Tipo; 
        }

        public string toArchivo()
        {
            return Tipo;
        }
    }
}
