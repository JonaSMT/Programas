using Npgsql;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Facturacion.BBDD
{
    internal class ConexionBBDD
    {
        NpgsqlConnection conexion = null;
        public void ConectarBBDD()
        {
            string cadenaConexion = "Host=localhost;Username=postgres;Password=root;Database=Facturacion";
            NpgsqlConnection conexion = new NpgsqlConnection(cadenaConexion);
            conexion.Open();
        }
        public static void CargarLocalidad()
        {
            List<string> listaLocalidades = File.ReadAllLines(@"C:\Users\zumot\Desktop\Facturacion\Facturacion\Recursos\TablaPoblaciones.txt", Encoding.UTF8).ToList();
            foreach (string localidad in listaLocalidades)
            {
                MessageBox.Show(localidad.Replace(" ", ";"));
            }
 
        }
        public void DesconectarBBDD()
        {
            conexion.Close();
        }
    }
}
