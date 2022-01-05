using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.Entidades
{
    internal class Factura
    {
        public int Id { get; set; }
        public string Fecha { get; set; }
        public string Descripcion { get; set; }
        public float Cantidad { get; set; }
        public float Precio { get; set; }
        public float Importe { get; set; }
        public float Subtotal { get; set; }
        public int Iva { get; set; }
        public float TotalIva { get; set; }
        public float Total { get; set; }
        public string Dni { get; set; }

        public Factura()
        {
            Descripcion = "";
        }

        public Factura(int id, string fecha, string descripcion, float cantidad, float precio, float importe, float subtotal, int iva, float totalIva, float total, string dni)
        {
            Id = id;
            Fecha = fecha;
            Descripcion = descripcion;
            Cantidad = cantidad;
            Precio = precio;
            Importe = importe;
            Subtotal = subtotal;
            Iva = iva;
            TotalIva = totalIva;
            Total = total;
            Dni = dni;
        }
    }
}
