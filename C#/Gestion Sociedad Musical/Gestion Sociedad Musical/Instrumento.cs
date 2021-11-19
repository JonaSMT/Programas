using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gestion_Sociedad_Musical
{
    class Instrumento
    {
        public string TipoIns { get; set; }
        public string Nombre { get; set; }

        public Instrumento(string tipoIns, string nombre)
        {
            TipoIns = tipoIns;
            Nombre = nombre;
        }

        public override string ToString()
        {
            return TipoIns + ": " + Nombre;
        }

        public string toArchivo()
        {
            return TipoIns + ";" + Nombre;
        }
    }
}
