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

namespace Facturacion.BBDD
{
    internal class ConexionBBDD
    {
        NpgsqlConnection conexion = null;
        NpgsqlCommand cmd = null;
        public ConexionBBDD()
        {
        }

        public void ConectarBBDD()
        {
            string cadenaConexion = "Host=localhost;Username=postgres;Password=root;Database=facturacion";
            conexion = new NpgsqlConnection(cadenaConexion);
            conexion.Open();
        }
        public NpgsqlDataReader DevolverSelect(string tabla, string from, string orden)
        {
            string sql = "select " + tabla + " from " + from + " order by " + orden + " ASC";
            cmd = new NpgsqlCommand(sql, conexion);
            NpgsqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
        public NpgsqlDataReader DevolverSelectWhere(string tabla, string from, string where, string orden, bool ordenacion)
        {
            string sql = "select " + tabla + " from " + from + where;
            if (ordenacion)
            {
                sql += " order by " + orden + " ASC";
            }
            cmd = new NpgsqlCommand(sql, conexion);
            NpgsqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
        /*public void ModificarRegistro(Localidad localidad)
        {
            string sql = "update localidad set codpostal = @codpostal where provincia = @provincia and poblacion = @poblacion";
            cmd = new NpgsqlCommand(sql, conexion);
            cmd.Parameters.AddWithValue("poblacion", NpgsqlDbType.Varchar, localidad.Poblacion);
            cmd.Parameters.AddWithValue("provincia", NpgsqlDbType.Varchar, localidad.Provincia);
            cmd.Parameters.AddWithValue("codpostal", NpgsqlDbType.Numeric, localidad.CodigoPostal);
            cmd.Prepare();
            cmd.ExecuteNonQuery();
        }*/

        /// <summary>
        /// Modifica un registro en la BBDD con PreparedStatement
        /// </summary>
        /// <typeparam name="T"></typeparam> Objeto de clase
        /// <param name="objeto"></param> Objeto de clase
        /// <param name="listaParametros"></param> Lista de parámetros para la sentencia SQL que necesita el PreparedStatemennt
        /// <param name="listaTipos"></param> Lista de tipos para parsear en la BBDD
        /// <param name="propiedades"></param> Lista de los nombres de las propiedades del objeto
        public void ModificarRegistro <T>(T objeto, List<string> listaParametros, List<NpgsqlDbType> listaTipos, List<string> propiedades, string update, string where)
        {
            string sql = "update " + update + " where " + where;
            cmd = new NpgsqlCommand(sql, conexion);
            for (int i = 0; i < listaParametros.Count; i++)
            {
                cmd.Parameters.AddWithValue(listaParametros[i], listaTipos[i], objeto.GetType().GetProperty(propiedades[i]).GetValue(objeto)); 
            }
            cmd.Prepare();
            cmd.ExecuteNonQuery();
        }
        /*public void AnyadirBBDD(List<Localidad> listaLocalidades)
        {
            foreach (Localidad localidad in listaLocalidades)
            {
                string sql = "INSERT INTO localidad(poblacion, provincia, codpostal) VALUES (@poblacion, @provincia, @codpostal)";
                cmd = new NpgsqlCommand(sql, conexion);
                cmd.Parameters.AddWithValue("poblacion", NpgsqlDbType.Varchar, localidad.Poblacion);
                cmd.Parameters.AddWithValue("provincia", NpgsqlDbType.Varchar, localidad.Provincia);
                cmd.Parameters.AddWithValue("codpostal", NpgsqlDbType.Numeric,localidad.CodigoPostal);
                cmd.Prepare();
                cmd.ExecuteNonQuery();
            }
        }*/
        /// <summary>
        /// Añade registros en la BBDD con PreparedStatement
        /// </summary>
        /// <typeparam name="T"></typeparam> Objeto de clase
        /// <param name="listaObjetos"></param> Lista de objetos de la clase
        /// <param name="listaParametros"></param> Lista de parámetros para la sentencia SQL que necesita el PreparedStatemennt
        /// <param name="listaTipos"></param> Lista de tipos para parsear en la BBDD
        /// <param name="propiedades"></param> Lista de los nombres de las propiedades del objeto
        public void AnyadirBBDD<T>(List<T> listaObjetos, List<string> listaParametros, List<NpgsqlDbType> listaTipos, List<string> propiedades, string insert, string values)
        {
            foreach (T objeto in listaObjetos)
            {
                string sql = "INSERT INTO " + insert + " VALUES (" + values + ")";
                cmd = new NpgsqlCommand(sql, conexion);
                for (int i = 0; i < listaParametros.Count; i++)
                {
                    cmd.Parameters.AddWithValue(listaParametros[i], listaTipos[i], objeto.GetType().GetProperty(propiedades[i]).GetValue(objeto));
                }
                cmd.Prepare();
                cmd.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Añade registros en la BBDD con PreparedStatement
        /// </summary>
        /// <typeparam name="T"></typeparam> Objeto de clase
        /// <param name="objeto"></param> Objeto de la clase
        /// <param name="listaParametros"></param> Lista de parámetros para la sentencia SQL que necesita el PreparedStatemennt
        /// <param name="listaTipos"></param> Lista de tipos para parsear en la BBDD
        /// <param name="propiedades"></param> Lista de los nombres de las propiedades del objeto
        public void AnyadirBBDD<T>(T objeto, List<string> listaParametros, List<NpgsqlDbType> listaTipos, List<string> propiedades, string insert, string values)
        {
            string sql = "INSERT INTO " + insert + " VALUES (" + values + ")";
            cmd = new NpgsqlCommand(sql, conexion);
            for (int i = 0; i < listaParametros.Count; i++)
            {
                cmd.Parameters.AddWithValue(listaParametros[i], listaTipos[i], objeto.GetType().GetProperty(propiedades[i]).GetValue(objeto));
            }
            cmd.Prepare();
            cmd.ExecuteNonQuery();
        }
        public void CargarLocalidad()
        {
            List<string> listaLocalidadesString = File.ReadAllLines(@"C:\Users\zumot\Desktop\Facturacion\Facturacion\Recursos\Municipios.csv", Encoding.Latin1).ToList();
            List<Localidad> listaLocalidades = new List<Localidad>();
            listaLocalidadesString.ForEach (localidad =>
            {
                listaLocalidades.Add(new Localidad(localidad.Split(";")[1], localidad.Split(";")[8]));
            });
            string[] arrayParametros = { "poblacion", "provincia", "codpostal" };
            NpgsqlDbType[] arrayTipos = { NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Numeric };
            string[] arrayPropiedades = { "Poblacion", "Provincia", "CodigoPostal" };
            AnyadirBBDD(listaLocalidades, arrayParametros.ToList(), arrayTipos.ToList(), arrayPropiedades.ToList(), "localidad(poblacion, provincia, codpostal)", "@poblacion, @provincia, @codpostal");
 
        }
        public void DesconectarBBDD()
        {
            conexion.Close();
        }
    }
}
