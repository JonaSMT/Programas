using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bibioteca.Forms
{
    public interface IContrato
    {
        public void Ejecutar(string titulo, string autor, string genero, int anyoCopy, int anyoEdicion, string idioma);
        public void Consulta(string titulo, int anyoEdicion);
    }
}
