using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.Datos
{
    class Contenido
    {
        public string Id { get; set; }
        public string Descripcion { get; set; }
        public int Cantidad { get; set; }
        public float Importe { get; set; }
        public float Precio { get; set; }
        public float Subtotal { get; set; }
        public float Iva { get; set; }
        public float IvaTotal { get; set; }
        public float Total { get; set; }

        public Contenido()
        {
        }

        public Contenido(string id, string descripcion, int cantidad, float importe, float precio, float subtotal, float iva, float totalIva, float total)
        {
            Id = id;
            Descripcion = descripcion;
            Cantidad = cantidad;
            Importe = importe;
            Precio = precio;
            Subtotal = subtotal;
            Iva = iva;
            IvaTotal = totalIva;
            Total = total;
        }
    }
}
