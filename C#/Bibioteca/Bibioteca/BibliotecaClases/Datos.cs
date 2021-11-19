using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bibioteca.BibliotecaClases
{
    abstract class Datos
    {
        public string Titulo { get; set; }
        public string Autor { get; set; }


        public Datos()
        {

        }

        public Datos(string titulo, string autor)
        {
            Titulo = titulo;
            Autor = autor;
        }
    }
}
