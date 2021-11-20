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
        public void ModificarRegistro(Localidad localidad)
        {
            string sql = "update localidad set codpostal = @codpostal where provincia = @provincia and poblacion = @poblacion";
            cmd = new NpgsqlCommand(sql, conexion);
            cmd.Parameters.AddWithValue("poblacion", NpgsqlTypes.NpgsqlDbType.Varchar, localidad.Poblacion);
            cmd.Parameters.AddWithValue("provincia", NpgsqlTypes.NpgsqlDbType.Varchar, localidad.Provincia);
            cmd.Parameters.AddWithValue("codpostal", NpgsqlTypes.NpgsqlDbType.Numeric, localidad.CodigoPostal);
            cmd.Prepare();
            cmd.ExecuteNonQuery();
        }
        public void AnyadirBBDD(List<Localidad> listaLocalidades)
        {
            foreach (Localidad localidad in listaLocalidades)
            {
                string sql = "INSERT INTO localidad(poblacion, provincia, codpostal) VALUES (@poblacion, @provincia, @codpostal)";
                cmd = new NpgsqlCommand(sql, conexion);
                cmd.Parameters.AddWithValue("poblacion", NpgsqlTypes.NpgsqlDbType.Varchar, localidad.Poblacion);
                cmd.Parameters.AddWithValue("provincia", NpgsqlTypes.NpgsqlDbType.Varchar, localidad.Provincia);
                cmd.Parameters.AddWithValue("codpostal", NpgsqlTypes.NpgsqlDbType.Numeric,localidad.CodigoPostal);
                cmd.Prepare();
                cmd.ExecuteNonQuery();
            }
        }
        public void CargarLocalidad()
        {
            List<string> listaLocalidadesString = File.ReadAllLines(@"C:\Users\zumot\Desktop\Facturacion\Facturacion\Recursos\Municipios.csv", Encoding.Latin1).ToList();
            List<Localidad> listaLocalidades = new List<Localidad>();
            listaLocalidadesString.ForEach (localidad =>
            {
                listaLocalidades.Add(new Localidad(localidad.Split(";")[1], localidad.Split(";")[8]));
            });

            AnyadirBBDD(listaLocalidades);
 
        }
        public void DesconectarBBDD()
        {
            conexion.Close();
        }
    }
}
