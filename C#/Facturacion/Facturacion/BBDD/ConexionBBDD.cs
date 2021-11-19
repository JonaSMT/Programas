using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.BBDD
{
    class ConexionBBDD
    {
        static public string Error { get; set; }
        static public int NumRegModif { set; get; }
        // método que conecta directamante, es decir, tiene los datos 
        static private MySqlConnection Conectar()
        {
            string cadenaConexion = "datasource=127.0.0.1;port=3306;username=root;password=123456;database=armengol;";
            MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
            return (conexionBD);
        }
        //consulta qde tipo SELECT
        static public MySqlDataReader Consulta(string sql)
        {
            MySqlConnection conexionBD = Conectar();
            MySqlDataReader reader = null;
            try
            {
                MySqlCommand comando = new MySqlCommand(sql, conexionBD);
                conexionBD.Open();
                reader = comando.ExecuteReader();
                NumRegModif = 0;
                if (reader.HasRows)
                    return (reader);
                else
                    return (null);
            }
            catch (MySqlException ex)
            {
                Error = ex.Message;
                NumRegModif = -1;
                return (null);
            }
        }
        //consulta de acción SELECT, UPDATE Y DELETE se devuelve el número de registros afectados 
        static public int Modificacion(string sql)
        {
            MySqlConnection conexionBD = Conectar();
            try
            {
                MySqlCommand comando = new MySqlCommand(sql, conexionBD);
                conexionBD.Open();
                NumRegModif = comando.ExecuteNonQuery();
                return NumRegModif;
            }
            catch (MySqlException ex)
            {
                Error = ex.Message;
                NumRegModif = -1;
                return NumRegModif;
            }
            finally { conexionBD.Close(); }
        }
        //consulta de selección que devuelve un objeto DataTable que se puede conectar directamente a  
        // Forms.DataGridView.DataSource 
        static public DataTable ConsultaTabla(string sql)
        {
            MySqlConnection conexionBD = Conectar();
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conexionBD);
            try
            {
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                NumRegModif = 0;
                return (ds.Tables[0]);
            }
            catch (Exception e)
            {
                Error = e.Message;
                NumRegModif = -1;
                return (null);
            }
            finally { conexionBD.Close(); }
        }

        static public MySqlDataReader ConsultaSinDT(string sql)
        {
            MySqlConnection conexionBD = Conectar();
            MySqlCommand comando = new MySqlCommand(sql, conexionBD);
            conexionBD.Open();
            MySqlDataReader registro = comando.ExecuteReader();
            return registro;
        }
    }
}
