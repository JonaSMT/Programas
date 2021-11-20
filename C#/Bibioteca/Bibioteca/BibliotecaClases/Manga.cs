using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bibioteca.BibliotecaClases
{
    class Manga : Datos
    {
        public int Volumen { get; set; }
        public int Numero { get; set; }
        public int Anyo { get; set; }

        public Manga(string titulo, string autor, int volumen, int numero, int anyo) : base(titulo, autor)
        {
            Volumen = volumen;
            Numero = numero;
            Anyo = anyo;
        }

        public Manga()
        {
        }
    }
}
