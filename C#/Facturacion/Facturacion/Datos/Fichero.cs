using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Facturacion.Datos
{
    class Fichero
    {
        string nombreArchivo = "id.dat";

        public void guardarFichero(int id)
        {
            try
            {
                using (StreamWriter sw = File.CreateText(nombreArchivo))
                {
                    sw.WriteLine(id);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public int cargarFichero()
        {
            int id = 0;
            try
            {
                using (StreamReader sr = File.OpenText(nombreArchivo))
                {
                    string datos = "";
                    while ((datos = sr.ReadLine()) != null)
                    {
                        id = Convert.ToInt32(datos);
                    }
                }
                return id;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return 0;
            }
        }
    }
}
