using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Facturacion.BBDD;
using Facturacion.Datos;

namespace Facturacion.Gestion
{
    class GestionPropietario
    {
        public Propietario Propietario { get; set; }

        public GestionPropietario()
        {
            Propietario = new Propietario();
        }

        public DataTable ConsultaTabla(string sql)
        {
            return ConexionBBDD.ConsultaTabla(sql);
        }

        public int Anyadir()
        {
            string sql = "";
            sql = "insert into propietario ('" + Propietario.Nombre + "', '" + Propietario.Nif + "', '" + Propietario.Calle + "', '" + Propietario.Provincia + "', '" +
                 Propietario.Localidad + "', " + Propietario.Cp + ", " + Propietario.Telefono + ", '" + Propietario.Correo + "'";
            return ConexionBBDD.Modificacion(sql);
        }

        public int Borrar()
        {
            string sql = "";
            sql = "delete from propierario where nif = '" + Propietario.Nif + "'";
            return ConexionBBDD.Modificacion(sql);
        }

        public int Modificar()
        {
            string sql = "";
            sql = "update propietario set nombre = '" + Propietario.Nombre + "', calle = '" + Propietario.Calle + "', '" + Propietario.Provincia + "', '" + Propietario.Localidad + "', cp = " +
                Propietario.Cp + " telefono = " + Propietario.Telefono + " correo = '" + Propietario.Correo + "'";
            return ConexionBBDD.Modificacion(sql);
        }

    }
}
