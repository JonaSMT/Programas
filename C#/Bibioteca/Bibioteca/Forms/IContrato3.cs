using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bibioteca.Forms
{
    public interface IContrato3
    {
        public void Ejecutar(string titulo, string autor, int volumen, int numero, int anyo);
        public void Consulta(string titulo, int volumen, int numero);
    }
}
