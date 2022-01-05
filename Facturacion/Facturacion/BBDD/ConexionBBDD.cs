using Facturacion.Entidades;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using NpgsqlTypes;
using System.Reflection;

namespace Facturacion.BBDD
{
    internal class ConexionBBDD
    {
        NpgsqlConnection conexion = null;
        NpgsqlCommand cmd = null;
        public ConexionBBDD()
        {
        }
        List<string> listaParametros = new List<string>();
        public void ConectarBBDD()
        {
            string cadenaConexion = "Host=localhost;Username=postgres;Password=root;Database=facturacion";
            conexion = new NpgsqlConnection(cadenaConexion);
            conexion.Open();
        }
        public NpgsqlConnection DevolverConectarBBDD()
        {
            string cadenaConexion = "Host=localhost;Username=postgres;Password=root;Database=facturacion";
            return conexion = new NpgsqlConnection(cadenaConexion);
        }
        public NpgsqlDataReader DevolverSelect(string tabla, string from, string orden, bool ordenacion)
        {
            string sql = "select " + tabla + " from " + from;
            if (ordenacion)
            {
                sql += " order by " + orden;
            }
            cmd = new NpgsqlCommand(sql, conexion);
            NpgsqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
        public NpgsqlCommand DevolverComandoSelect(string tabla, string from, string orden, bool ordenacion)
        {
            string sql = "select " + tabla + " from " + from;
            if (ordenacion)
            {
                sql += " order by " + orden;
            }
            return new NpgsqlCommand(sql, conexion);
        }
        public NpgsqlDataReader DevolverSelectWhere(string tabla, string from, string where, string orden, bool ordenacion)
        {
            string sql = "select " + tabla + " from " + from + " where " + where;
            if (ordenacion)
            {
                sql += " order by " + orden;
            }
            cmd = new NpgsqlCommand(sql, conexion);
            NpgsqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
        public NpgsqlCommand DevolverComandoSelectWhere(string tabla, string from, string where, string orden, bool ordenacion)
        {
            string sql = "select " + tabla + " from " + from + " where " + where;
            if (ordenacion)
            {
                sql += " order by " + orden;
            }
            return new NpgsqlCommand(sql, conexion);
        }
        public NpgsqlCommand DevolverComandoSelectWhere<T>(T objeto, string tabla, string from, string where, string orden, bool ordenacion)
        {
            listaParametros.Clear();
            List<PropertyInfo> prop = objeto.GetType().GetProperties().ToList();
            prop.ForEach(p => listaParametros.Add(p.Name));
            string sql = "select " + tabla + " from " + from + " where " + where;
            if (ordenacion)
            {
                sql += " order by " + orden;
            }
            cmd = new NpgsqlCommand(sql, conexion);
            for (int i = 0; i < listaParametros.Count; i++)
            {
                cmd.Parameters.AddWithValue(listaParametros[i], objeto.GetType().GetProperty(listaParametros[i].ToString()).GetValue(objeto).ToString());
            }
            return cmd;
        }
        public NpgsqlDataReader DevolverSelectWhere<T>(T objeto, string tabla, string from, string where, string orden, bool ordenacion)
        {
            listaParametros.Clear();
            List<PropertyInfo> prop = objeto.GetType().GetProperties().ToList();
            prop.ForEach(p => listaParametros.Add(p.Name));
            string sql = "select " + tabla + " from " + from + " where " + where;
            if (ordenacion)
            {
                sql += " order by " + orden;
            }
            cmd = new NpgsqlCommand(sql, conexion);
            for (int i = 0; i < listaParametros.Count; i++)
            {
                cmd.Parameters.AddWithValue(listaParametros[i], objeto.GetType().GetProperty(listaParametros[i].ToString()).GetValue(objeto).ToString());
            }
            NpgsqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
        public void ModificarRegistro<T>(T objeto, string update, string where)
        {
            listaParametros.Clear();
            List<PropertyInfo> prop = objeto.GetType().GetProperties().ToList();
            prop.ForEach(p => listaParametros.Add(p.Name));
            string sql = "update " + update + " where " + where;
            cmd = new NpgsqlCommand(sql, conexion);
            for (int i = 0; i < listaParametros.Count; i++)
            {
                cmd.Parameters.AddWithValue(listaParametros[i], objeto.GetType().GetProperty(listaParametros[i].ToString()).GetValue(objeto).ToString());
            }
            cmd.Prepare();
            cmd.ExecuteNonQuery();
        }
        public void ModificarRegistro<T>(T objeto, List<NpgsqlDbType> listaTipos, string update, string where)
        {
            listaParametros.Clear();
            List<PropertyInfo> prop = objeto.GetType().GetProperties().ToList();
            prop.ForEach(p => listaParametros.Add(p.Name));
            string sql = "update " + update + " where " + where;
            cmd = new NpgsqlCommand(sql, conexion);
            for (int i = 0; i < listaParametros.Count; i++)
            {
                cmd.Parameters.AddWithValue(listaParametros[i], listaTipos[i], objeto.GetType().GetProperty(listaParametros[i]).GetValue(objeto));
            }
            cmd.Prepare();
            cmd.ExecuteNonQuery();
        }
        public void AnyadirBBDD<T>(List<T> listaObjetos, string insert, string values)
        {
            foreach (T objeto in listaObjetos)
            {
                listaParametros.Clear();
                List<PropertyInfo> prop = objeto.GetType().GetProperties().ToList();
                prop.ForEach(p => listaParametros.Add(p.Name));
                string sql = "INSERT INTO " + insert + " VALUES (" + values + ")";
                cmd = new NpgsqlCommand(sql, conexion);
                for (int i = 0; i < listaParametros.Count; i++)
                {
                    cmd.Parameters.AddWithValue(listaParametros[i], objeto.GetType().GetProperty(listaParametros[i]).GetValue(objeto));
                }
                cmd.Prepare();
                cmd.ExecuteNonQuery();
            }
        }
        public bool AnyadirBBDD<T>(T objeto, string insert, string values)
        {
            try
            {
                listaParametros.Clear();
                List<PropertyInfo> prop = objeto.GetType().GetProperties().ToList();
                prop.ForEach(p => listaParametros.Add(p.Name));
                string sql = "INSERT INTO " + insert + " VALUES (" + values + ")";
                cmd = new NpgsqlCommand(sql, conexion);
                for (int i = 0; i < listaParametros.Count; i++)
                {
                    cmd.Parameters.AddWithValue(listaParametros[i], objeto.GetType().GetProperty(listaParametros[i]).GetValue(objeto));
                }
                cmd.Prepare();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
                return false;
            }
        }

        /*public BindingSource DevolverDataTable(MySqlCommand cmd)
        {
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dataTable = new DataTable();
            BindingSource bindingSource = new BindingSource();
            bindingSource.DataSource = dataTable;
            da.Fill(dataTable);
            return bindingSource;
        }*/
        public void CargarLocalidad()
        {
            List<string> listaLocalidadesString = File.ReadAllLines(@"C:\Users\zumot\Desktop\Facturacion\Facturacion\Recursos\Municipios.csv", Encoding.Latin1).ToList();
            List<Localidad> listaLocalidades = new List<Localidad>();
            listaLocalidadesString.ForEach (localidad =>
            {
                listaLocalidades.Add(new Localidad(localidad.Split(";")[1], localidad.Split(";")[8]));
            });
            AnyadirBBDD(listaLocalidades, "localidad(poblacion, provincia, codpostal)", "@poblacion, @provincia, @codpostal");
 
        }
        public void DesconectarBBDD()
        {
            conexion.Close();
        }
    }
}
