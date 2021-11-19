using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Facturacion.BBDD;
using Facturacion.Datos;
using MySql.Data.MySqlClient;

namespace Facturacion.Gestion
{
    class GestionContenido
    {
        public Contenido Contenido { get; set; }
        Fichero fichero = new Fichero();

        public GestionContenido()
        {
            Contenido = new Contenido();
        }
        public int Anyadir()
        {
            string sql = "";
            sql = "insert into datos (id, descripcion, cantidad, precio, importe, subtotal, iva, totalIva, total) values (" + Contenido.Id + ", '" + Contenido.Descripcion + "', '" +
                Contenido.Cantidad + "', '" + Contenido.Precio + "', '" + Contenido.Importe + "', '" + Contenido.Subtotal + "', '" + Contenido.Iva + "', '" + Contenido.IvaTotal + 
                "', '" + Contenido.Total + "')";
            return ConexionBBDD.Modificacion(sql);
        }
        public int Eliminar()
        {
            string sql = "";
            sql = "delete from datos where id = " + Contenido.Id;
            return ConexionBBDD.Modificacion(sql);
        }
        public int Modificar(string descripcion)
        {
            string sql = "";
            if (ConexionBBDD.Consulta("select * from datos where id = " + Contenido.Id + " and descripcion = '" + descripcion + "' order by cantidad") != null)
                sql = "update datos set descripcion = '" + Contenido.Descripcion + "', cantidad = '" + Contenido.Cantidad + "', precio = '" + Contenido.Precio + "', importe = '" 
                + Contenido.Importe + "', subtotal = '" + Contenido.Subtotal + "', iva = '" + Contenido.Iva + "', totalIva = '" + Contenido.IvaTotal + "', total = '" 
                + Contenido.Total + "' where id = " + Contenido.Id + " and descripcion = '" + descripcion  + "'" ;
            else
                sql = "insert into datos (id, descripcion, cantidad, precio, importe, subtotal, iva, totalIva, total) values (" + Contenido.Id + ", '" + Contenido.Descripcion + "', '" +
                Contenido.Cantidad + "', '" + Contenido.Precio + "', '" + Contenido.Importe + "', '" + Contenido.Subtotal + "', '" + Contenido.Iva + "', '" + Contenido.IvaTotal +
                "', '" + Contenido.Total + "')";
            return ConexionBBDD.Modificacion(sql);
        }
    }
}
