using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Facturacion.BBDD;
using Facturacion.Datos;
using MySql.Data.MySqlClient;

namespace Facturacion.Gestion
{
    class GestionFactura
    {
        public Factura Factura { get; set; }
        Fichero fichero = new Fichero();
        public GestionFactura()
        {
            Factura = new Factura();
        }

        public DataTable ConsultarTabla(string sql)
        {
            return ConexionBBDD.ConsultaTabla(sql);
        }

        public int Anyadir()
        {
            string sql = "";
            int id = fichero.cargarFichero();
            sql = "insert into factura (nif, dni, id, fecha) " + "values ('" + Factura.Nif + "', '" + Factura.Dni + "', " + id +", '" + Factura.Fecha + "')";
            return ConexionBBDD.Modificacion(sql);
        }
        public int Eliminar()
        {
            string sql = "";
            sql = "delete from factura where id = " + Factura.Id;
            return ConexionBBDD.Modificacion(sql);
        }
    }
}
