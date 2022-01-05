using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.Entidades
{
    internal class ClienteFactura
    {
        public int Id { get; set; }
        public string NombreCliente { get; set; }
        public string Dni { get; set; }
        public string Fecha { get; set; }
        public float Total { get; set; }

        public ClienteFactura(int id, string nombreCliente, string dni, string fecha, float total)
        {
            Id=id;
            NombreCliente=nombreCliente;
            Dni=dni;
            Fecha=fecha;
            Total=total;
        }
    }
}
