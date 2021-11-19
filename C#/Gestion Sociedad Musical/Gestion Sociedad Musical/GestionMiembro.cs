using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gestion_Sociedad_Musical
{
    class GestionMiembro
    {
        List<Miembro> miembros;
        List<Musico> musicos;
        List<NoMusico> noMusicos;

        public GestionMiembro()
        {
            miembros = new List<Miembro>();
            musicos = new List<Musico>();
            noMusicos = new List<NoMusico>();
        }

        public bool AnyadirMusico(Musico m)
        {
            musicos.Add(m);
            return true;
        }
        public bool AnyadirNoMusico(NoMusico nM)
        {
            noMusicos.Add(nM);
            return true;
        }
        public bool AnyadirMiembro(Miembro mm)
        {
            miembros.Add(mm);
            return true;
        }
        public Banda AnyadirBanda(GestionBanda gestionBanda)
        {
            Int32.TryParse(Console.ReadLine(), out int posicion);
            Banda banda = gestionBanda.bandas[posicion - 1];
            return banda;
        }
        public Instrumento AnyadirInstrumento(GestionInstrumento gestionInstrumento)
        {
            Int32.TryParse(Console.ReadLine(), out int posicion);
            Instrumento instrumento = gestionInstrumento.instrumentos[posicion - 1];
            return instrumento;
        }
        public bool BorrarMusico(int pos)
        {
            if (pos > 0 && pos < musicos.Count)
            {
                musicos.RemoveAt(pos - 1);
                return true;
            }
            else
                return false;
        }
        public bool BorrarNoMusico(int pos)
        {
            if (pos > 0 && pos <= musicos.Count)
            {
                noMusicos.RemoveAt(pos - 1);
                return true;
            }
            else
                return false;
        }
        public bool ModificarMusico(int pos, string modificar, string valor)
        {
            if (pos > 0 && pos <= musicos.Count)
            {
                foreach (Musico m in musicos.ToList())
                {
                    string[] partes = m.toArchivo().Split(";");
                    string nombre = partes[0];
                    string dni = partes[1];
                    Int32.TryParse(partes[2], out int edad);
                    if (modificar == "1")
                    {
                        nombre = valor;
                    }
                    else if (modificar == "2")
                    {
                        dni = valor;
                    }
                    else if (modificar == "3")
                    {
                        Int32.TryParse(valor, out edad);
                    }
                    Int32.TryParse(partes[3], out int ensayo);
                    Int32.TryParse(partes[4], out int actuacion);
                    Int32.TryParse(partes[5], out int cantPagar);
                    string pago = partes[7];
                    Banda banda = new Banda(partes[8]);
                    Instrumento instrumento = new Instrumento(partes[9], partes[10]);
                    if (modificar == "4")
                    {
                        Int32.TryParse(valor, out ensayo);
                    }
                    else if (modificar == "5")
                    {
                        Int32.TryParse(valor, out actuacion);
                    }
                    else if (modificar == "6")
                    {
                        Int32.TryParse(valor, out cantPagar);
                    }
                    else if (modificar == "7")
                    {
                        pago = valor;
                    }
                    else if (modificar == "8")
                    {
                        banda = new Banda(valor);
                    }
                    else if (modificar == "9")
                    {
                        string[] partes2 = valor.Split(";");
                        instrumento = new Instrumento(partes2[0], partes2[1]);
                    }
                    musicos.RemoveAt(pos - 1);
                    musicos.Insert(pos - 1, new Musico(nombre, dni, edad, ensayo, actuacion, cantPagar, pago, banda, instrumento));
                }
                return true;
            }
            else
                return false;
        }
        public bool ModificarNoMusico(int pos, string modificar, string valor)
        {
            if (pos > 0 && pos < musicos.Count)
            {
                foreach (Musico m in musicos.ToList())
                {
                    string[] partes = m.toArchivo().Split(";");
                    string nombre = partes[0];
                    string dni = partes[1];
                    string pago = partes[3];
                    Int32.TryParse(partes[2], out int edad);
                    if (modificar == "1")
                    {
                        nombre = valor;
                    }
                    else if (modificar == "2")
                    {
                        dni = valor;
                    }
                    else if (modificar == "3")
                    {
                        Int32.TryParse(valor, out edad);
                    }
                    noMusicos.RemoveAt(pos - 1);
                    noMusicos.Insert(pos - 1, new NoMusico(nombre, dni, edad, pago));
                }
                return true;
            }
            else
                return false;
        }

        public void ListarMiembros(GestionMiembro gM)
        {
            int contador = 1;
            foreach (Miembro m in gM.miembros)
            {
                Console.WriteLine("\n"+contador + ". " + m.ToString());
                contador++;
            }
            
        }

        public void ListarMusicos(GestionMiembro musicos)
        {
            int contador = 1;
            foreach (Musico m in musicos.musicos)
            {
                Console.WriteLine(contador + ". " + m);
                contador++;
            }
        }

        public void ListarNoMusicos(GestionMiembro noMusicos)
        {
            int contador = 1;
            foreach (NoMusico m in noMusicos.noMusicos)
            {
                Console.WriteLine(contador + ". " + m);
                contador++;
            }
        }

        public List<Musico> CargarMusicos()
        {
            try
            {
                List<Musico> musicos = new List<Musico>();
                StreamReader fich;
                string linea;
                fich = File.OpenText("miembros.txt");
                do
                {
                    linea = fich.ReadLine();
                    if (linea != null)
                    {
                        string[] partes = linea.Split(";");
                        if (partes.Length == 11)
                        {
                            Banda banda = new Banda(partes[8]);
                            Instrumento instrumento = new Instrumento(partes[9], partes[10]);
                            musicos.Add(new Musico(partes[0], partes[1], Convert.ToInt32(partes[2]), Convert.ToInt32(partes[3]),
                                    Convert.ToInt32(partes[4]), Convert.ToInt32(partes[5]), partes[7], banda, instrumento));
                        }
                    }
                } while (linea != null);
                fich.Close();
                return musicos;
            }
            catch (Exception e)
            {
                List<Musico> musicos = new List<Musico>();
                Console.WriteLine(e.Message);
                return musicos;
            }
        }
        public List<NoMusico> CargarNoMusicos()
        {
            try
            {
                List<NoMusico> noMusicos = new List<NoMusico>();
                StreamReader fich;
                string linea;
                fich = File.OpenText("miembros.txt");
                do
                {
                    linea = fich.ReadLine();
                    if (linea != null)
                    {
                        string[] partes = linea.Split(";");
                        if (partes.Length == 4)
                            noMusicos.Add(new NoMusico(partes[0], partes[1], Convert.ToInt32(partes[2]), partes[3]));
                    }
                } while (linea != null);
                fich.Close();
                return noMusicos;
            }
            catch (Exception e)
            {
                List<NoMusico> noMusicos = new List<NoMusico>();
                Console.WriteLine(e.Message);
                return noMusicos;
            }
        }
        public void GuardarMiembros(GestionMiembro gestionMiembro)
        {
            miembros.Clear();
            foreach (Musico m in gestionMiembro.musicos)
            {
                miembros.Add(m);
            }
            foreach (NoMusico nM in gestionMiembro.noMusicos)
            {
                miembros.Add(nM);
            }
        }

        public void Guardar()
        {
            if (miembros.Count != 0)
            {
                try
                {
                    using (StreamWriter fich = new StreamWriter("miembros.txt"))
                    {
                        foreach (Musico m in musicos)
                        {
                            fich.WriteLine(m.toArchivo());
                        }
                        foreach (NoMusico nM in noMusicos)
                        {
                            fich.WriteLine(nM.toArchivo());
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
