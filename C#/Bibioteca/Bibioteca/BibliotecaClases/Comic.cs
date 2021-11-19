using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bibioteca.BibliotecaClases
{
    class Comic : Datos
    {
        public string Coleccion { get; set; }
        public int Anyo { get; set; }
        public Comic(string titulo, string autor, string coleccion, int anyo) : base(titulo, autor)
        {
            Coleccion = coleccion;
            Anyo = anyo;
        }
        public Comic()
        {

        }
    }
}
