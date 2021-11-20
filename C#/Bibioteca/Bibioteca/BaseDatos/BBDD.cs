using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Bibioteca.BaseDatos
{
    class BBDD
    {
        static public string Error { get; set; }
        static public int NumRegMod { get; set; }
        static private MySqlConnection Conectar()
        {
            string cadenaConexion = "datasource=127.0.0.1;port=3306;username=root;password=123456;database=biblioteca;";
            MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
            return (conexionBD);
        }

        static public MySqlDataReader Consulta(string sql)
        {
            MySqlConnection conexionBD = Conectar();
            MySqlDataReader reader = null;
            try
            {
                MySqlCommand comando = new MySqlCommand(sql, conexionBD);
                conexionBD.Open();
                reader = comando.ExecuteReader();
                NumRegMod = 0;
                if (reader.HasRows)
                    return (reader);
                else
                    return (null);
            }
            catch (MySqlException ex)
            {
                Error = ex.Message;
                NumRegMod = -1;
                return (null);
            }
        }
        static public DataTable ConsultaTabla(string sql)
        {
            MySqlConnection conexionBD = Conectar();
            MySqlDataAdapter adapter = new MySqlDataAdapter(sql, conexionBD);
            try
            {
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                NumRegMod = 0;
                return (ds.Tables[0]);
            }
            catch (Exception e)
            {
                Error = e.Message;
                NumRegMod = -1;
                return (null);
            }
            finally { conexionBD.Close(); }
        }
        static public int Modificacion(string sql)
        {
            MySqlConnection conexionBD = Conectar();
            try
            {
                MySqlCommand comando = new MySqlCommand(sql, conexionBD);
                conexionBD.Open();
                NumRegMod = comando.ExecuteNonQuery();
                return NumRegMod;
            }
            catch (MySqlException ex)
            {
                Error = ex.Message;
                if (Error.Contains("Duplicate entry"))
                {
                    MessageBox.Show("¿Però que fas? ¿No veus que ja existeix? \nDe veritat cari, eres un capgròs, deixa d'intentar ficar coses que ja existeixen", "Error al Afegir", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                NumRegMod = -1;
                return NumRegMod;
            }
            finally { conexionBD.Close(); }
        }
    }
}
