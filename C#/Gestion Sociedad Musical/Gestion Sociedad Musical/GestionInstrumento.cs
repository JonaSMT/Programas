using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gestion_Sociedad_Musical
{
    class GestionInstrumento
    {
        public List<Instrumento> instrumentos;

        public GestionInstrumento()
        {
            this.instrumentos = new List<Instrumento>();
        }

        public bool AnyadirInstrumento(Instrumento i)
        {
            if (i.Nombre != "" && i.TipoIns != "")
            {
                instrumentos.Add(i);
                return true;
            }
            else
                return false;
        }

        public bool ModificarInstrumento(int pos, Instrumento instrumento)
        {
            if (pos > 0 && pos < instrumentos.Count)
            {
                instrumentos.RemoveAt(pos - 1);
                instrumentos.Insert(pos - 1, instrumento);
                return true;
            }
            else
                return false;
        }
        public bool EliminarInstrumento(int pos)
        {
            if (pos > 0 && pos < instrumentos.Count)
            {
                instrumentos.RemoveAt(pos - 1);
                return true;
            }
            else
                return false;
        }

        public void ListarInstrumentos(GestionInstrumento gestionInstrumento)
        {
            int contador = 1;
            foreach (Instrumento instrumento in gestionInstrumento.instrumentos)
            {
                Console.WriteLine(contador + ". " + instrumento.ToString());
                contador++;
            }
        }

        public List<Instrumento> Cargar()
        {
            try
            {
                List<Instrumento> instrumentos = new List<Instrumento>();
                StreamReader fich;
                string linea;
                fich = File.OpenText("instrumentos.txt");
                do
                {
                    linea = fich.ReadLine();
                    

                    if (linea != null)
                    {
                        string[] partes = linea.Split(";");
                        instrumentos.Add(new Instrumento(partes[0], partes[1]));
                    }
                } while (linea != null);
                fich.Close();
                return instrumentos;
            }
            catch (Exception e)
            {
                List<Instrumento> instrumentos = new List<Instrumento>();
                Console.WriteLine(e.Message);
                return instrumentos;
            }
        }

        public void Guardar()
        {
            if (instrumentos.Count != 0)
            {
                try
                {
                    using (StreamWriter fich = new StreamWriter("instrumentos.txt"))
                    {
                        foreach (Instrumento v in instrumentos)
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
    }
}
