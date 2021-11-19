using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.Datos
{
    class Factura
    {
        public string Nif { get; set; }
        public string Dni { get; set; }
        public int Id { get; set; }
        public string Fecha { get; set; }

        public Factura()
        {
        }

        public Factura(string nif, string dni, int id, string fecha)
        {
            Nif = nif;
            Dni = dni;
            Id = id;
            Fecha = fecha;
        }
    }
}
