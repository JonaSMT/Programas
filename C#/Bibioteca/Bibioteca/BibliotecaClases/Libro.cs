using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bibioteca.BibliotecaClases
{
    class Libro : Datos
    {
        public string Genero { get; set; }
        public int AnyoCopy { get; set; }
        public int AnyoEdicion { get; set; }
        public string Idioma { get; set; }
        public Libro()
        {
        }
            
        public Libro(string titulo, string autor, string genero, int anyoCopy, int anyoEdicion, string idioma) : base(titulo, autor)
        {
            Genero = genero;
            AnyoCopy = anyoCopy;
            AnyoEdicion = anyoEdicion;
            Idioma = idioma;
        }
    }
}
