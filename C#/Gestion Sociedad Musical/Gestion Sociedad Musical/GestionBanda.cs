using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gestion_Sociedad_Musical
{
    class GestionBanda
    {
        public List<Banda> bandas;

        public GestionBanda()
        {
            this.bandas = new List<Banda>();
        }

        public bool AnyadirBanda(Banda b)
        {
            if (b.Tipo != "")
            {
                bandas.Add(b);
                return true;
            }
            else
                return false;
            
        }

        public List<Banda> Cargar()
        {
            try
            {
                List<Banda> bandas = new List<Banda>();
                StreamReader fich;
                string linea;
                fich = File.OpenText("bandas.txt");
                do
                {
                    linea = fich.ReadLine();

                    if (linea != null)
                    {
                        bandas.Add(new Banda(linea));
                    }
                } while (linea != null);
                fich.Close();
                return bandas;
            }
            catch (Exception e)
            {
                List<Banda> bandas = new List<Banda>();
                Console.WriteLine(e.Message);
                return bandas;
            }
        }
        public bool EliminarBanda(int pos)
        {
            if (pos > 0 && pos < bandas.Count)
            {
                bandas.RemoveAt(pos - 1);
                return true;
            }
            else
            {
                return false;
            }
        }

        public void Guardar()
        {
            if (bandas.Count != 0)
            {
                try
                {
                    using (StreamWriter fich = new StreamWriter("bandas.txt"))
                    {
                        foreach (Banda v in bandas)
                        {
                            fich.WriteLine(v.toArchivo());
                        }
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                }
            }
        }

        public void ListarBandas(GestionBanda bandas)
        {
            int contador = 1;
            foreach (Banda banda in bandas.bandas)
            {
                Console.WriteLine(contador + "." + " " + banda.ToString());
                contador++;
            }
        }
    }
}
