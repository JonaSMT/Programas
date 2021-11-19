using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bibioteca.Forms
{
    public interface IContrato2
    {
        public void Ejecutar(string titulo, string autor, string coleccion, int anyo);
        public void Consulta(string titulo, int anyo);
    }
}
