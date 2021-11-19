using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Facturacion.Datos;
using Facturacion.BBDD;

namespace Facturacion.Gestion
{
    class GestionCliente
    {
        public Cliente Cliente { get; set; }

        public GestionCliente()
        {
            Cliente = new Cliente();
        }

        public DataTable ConsultaTabla(string sql)
        {
            return ConexionBBDD.ConsultaTabla(sql);
        }

        public int Anyadir()
        {
            string sql = "";
            sql = "insert into cliente (nombre, dni, calle, poblacion, cp, provincia) " + " values ('" + Cliente.Nombre + "' ,'" + Cliente.Dni + "', '" + Cliente.Calle + "', '" + Cliente.Poblacion + "', " +
                Cliente.Cp + ", '" + Cliente.Provincia + "')";
            return ConexionBBDD.Modificacion(sql);
        }

        public int Borrar()
        {
            string sql = "";
            sql = "delete from cliente where dni = '" + Cliente.Dni + "'";
            return ConexionBBDD.Modificacion(sql);
        }

        public int Modificar()
        {
            string sql = "";
            sql = "update cliente set nombre = '" + Cliente.Nombre + "', calle = '" + Cliente.Calle + "', poblacion = '" + Cliente.Poblacion + "', cp = " + Cliente.Cp +
                ", provincia = '" + Cliente.Provincia + "' where dni = '" + Cliente.Dni + "'";
            return ConexionBBDD.Modificacion(sql);
        }
    }
}
