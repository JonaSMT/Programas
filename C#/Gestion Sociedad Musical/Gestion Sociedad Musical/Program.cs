using System;
using System.Collections.Generic;

namespace Gestion_Sociedad_Musical
{
    class Program
    {
        static void Main(string[] args)
        {
            string gestion;
            string menu = "0";
            string tipo3 = "0";
            GestionBanda gestionBanda = new GestionBanda();
            GestionInstrumento gestionInstrumento = new GestionInstrumento();
            GestionMiembro gestionMiembro = new GestionMiembro();
            List<Banda> bandas = gestionBanda.Cargar();
            List<Instrumento> instrumentos = gestionInstrumento.Cargar();
            List<Musico> musicos = gestionMiembro.CargarMusicos();
            List<NoMusico> noMusicos = gestionMiembro.CargarNoMusicos();

            CargarEnLista(gestionBanda, bandas, gestionInstrumento, instrumentos, gestionMiembro, musicos, noMusicos);

            do
            {
                menu = "0";
                Console.WriteLine("Desea gestionar \n1. Bandas \n2. Instrumentos \n3. Miembros \n4. Salir");
                gestion = Console.ReadLine();
                if (gestion == "1")
                {
                    while (menu != "4")
                    {
                        Console.WriteLine("1. Añadir Banda \n2. Eliminar Banda \n3. Mostrar Bandas \n4. Salir");
                        menu = Console.ReadLine();

                        switch (menu)
                        {
                            case "1":
                                Console.WriteLine("Introduzca el tipo de banda");
                                string tipo = Console.ReadLine();
                                Banda banda = new Banda(tipo);
                                if (gestionBanda.AnyadirBanda(banda))
                                    Console.WriteLine("Se ha añadido correctamente");
                                else
                                    Console.WriteLine("Se ha producido un error");
                                break;
                            case "2":
                                Console.WriteLine("Introduzca el número de banda a borrar");
                                gestionBanda.ListarBandas(gestionBanda);
                                Int32.TryParse(Console.ReadLine(), out int pos);
                                if (gestionBanda.EliminarBanda(pos))
                                    Console.WriteLine("Se ha borrado correctamente");
                                else
                                    Console.WriteLine("Se ha producido un error");
                                break;
                            case "3":
                                gestionBanda.ListarBandas(gestionBanda);
                                break;
                            case "4":
                                gestionBanda.Guardar();
                                Console.WriteLine("Guardando Cambios");
                                break;
                        }
                    }
                }
                if (gestion == "2")
                {
                    menu = "0";
                    while (menu != "5")
                    {
                        Console.WriteLine("1. Añadir Instrumento \n2. Modificar Instrumento \n3. Eliminar Instrumento \n4. Mostrar Instrumentos \n5. Salir");
                        menu = Console.ReadLine();
                        switch (menu)
                        {
                            case "1":
                                Console.WriteLine("Introduzca el tipo de instrumento");
                                string tipo = Console.ReadLine();
                                Console.WriteLine("Introduzca el nombre del instrumento");
                                string nombre = Console.ReadLine();
                                Instrumento instrumento = new Instrumento(tipo, nombre);
                                if (gestionInstrumento.AnyadirInstrumento(instrumento))
                                {
                                    Console.WriteLine("Se ha añadido correctamente");
                                }
                                else
                                {
                                    Console.WriteLine("Se ha producido un error");
                                }
                                break;
                            case "2":
                                Console.WriteLine("Introduzca la posición a modificar");
                                gestionInstrumento.ListarInstrumentos(gestionInstrumento);
                                Int32.TryParse(Console.ReadLine(), out int pos);
                                Console.WriteLine("Introduzca el tipo de instrumento");
                                string tipo2 = Console.ReadLine();
                                Console.WriteLine("Introduzca el nombre del instrumento");
                                string nombre2 = Console.ReadLine();
                                Instrumento instrumento2 = new Instrumento(tipo2, nombre2);
                                if (gestionInstrumento.ModificarInstrumento(pos, instrumento2))
                                {
                                    Console.WriteLine("Actualizado correctamente");
                                }
                                else
                                {
                                    Console.WriteLine("Se ha producido un error");
                                }
                                break;
                            case "3":
                                Console.WriteLine("Introduzca la posición a eliminar");
                                gestionInstrumento.ListarInstrumentos(gestionInstrumento);
                                Int32.TryParse(Console.ReadLine(), out int pos2);
                                gestionInstrumento.EliminarInstrumento(pos2);
                                break;
                            case "4":
                                gestionInstrumento.ListarInstrumentos(gestionInstrumento);
                                break;
                            case "5":
                                gestionInstrumento.Guardar();
                                Console.WriteLine("Guardando cambios");
                                break;
                        }
                    }
                } if (gestion == "3")
                {
                    do { 
                        Console.WriteLine("1. Musico \n2. No Músico \n3. Listar Miembros \n4. Salir");
                        tipo3= Console.ReadLine();
                        if (tipo3 == "1")
                        {
                            menu = "0";
                            while (menu != "5")
                            {
                                Console.WriteLine("1. Añadir Músico \n2. Eliminar Músico \n3. Modificar Músico \n4. Listar Músicos \n5. Salir");
                                menu = Console.ReadLine();
                                switch (menu)
                                {
                                    case "1":
                                        anyadirMiembroMusico(gestionMiembro, gestionBanda, gestionInstrumento);
                                        break;
                                    case "2":
                                        Console.WriteLine("Introduzca la posición a borrar");
                                        gestionMiembro.ListarMusicos(gestionMiembro);
                                        Int32.TryParse(Console.ReadLine(), out int pos3);
                                        gestionMiembro.BorrarMusico(pos3);
                                        break;
                                    case "3":
                                        Console.WriteLine("Introduzca la posición a modificar");
                                        gestionMiembro.ListarMusicos(gestionMiembro);
                                        Int32.TryParse(Console.ReadLine(), out int pos4);
                                        Console.WriteLine("Qué desea modificar? \n1. Nombre \n2. DNI \n3. Edad \n4. Ensayos " +
                                            "\n5. Actuaciones \n6. Cantidad a Pagar \n7. ¿Pago? \n8. Banda \n9. Instrumento");
                                        string modificar = Console.ReadLine();
                                        if (modificar == "1")
                                        {
                                            Console.WriteLine("Introduzca el nuevo nombre");
                                            string valor = Console.ReadLine();
                                            gestionMiembro.ModificarMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "2")
                                        {
                                            Console.WriteLine("Introduce el nuevo DNI");
                                            string valor = Console.ReadLine();
                                            gestionMiembro.ModificarMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "3")
                                        {
                                            Console.WriteLine("Introduzca la nueva edad");
                                            string valor = Console.ReadLine();
                                            gestionMiembro.ModificarMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "4")
                                        {
                                            Console.WriteLine("Introduzca la nueva cantidad de ensayos");
                                            string valor = Console.ReadLine();
                                            gestionMiembro.ModificarMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "5")
                                        {
                                            Console.WriteLine("Introduzca la nueva cantidad de actuaciones");
                                            string valor = Console.ReadLine();
                                            gestionMiembro.ModificarMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "6")
                                        {
                                            Console.WriteLine("Introduzca la nueva cantidad a pagar");
                                            string valor = Console.ReadLine();
                                            gestionMiembro.ModificarMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "7")
                                        {
                                            Console.WriteLine("1.Sí \n2. No");
                                            string valor = Console.ReadLine();
                                            if (valor == "1")
                                            {
                                                valor = "Sí";
                                            }
                                            else if (valor == "2")
                                            {
                                                valor = "No";
                                            }
                                            gestionMiembro.ModificarMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "8")
                                        {
                                            Console.WriteLine("Introduce la nueva banda");
                                            gestionBanda.ListarBandas(gestionBanda);
                                            string valor = ""+gestionMiembro.AnyadirBanda(gestionBanda);
                                            gestionMiembro.ModificarMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "9")
                                        {
                                            Console.WriteLine("Introduzca el nuevo instrumento");
                                            gestionInstrumento.ListarInstrumentos(gestionInstrumento);
                                            string valor = ""+gestionMiembro.AnyadirInstrumento(gestionInstrumento).toArchivo();
                                            gestionMiembro.ModificarMusico(pos4, modificar, valor);
                                        }
                                        break;
                                    case "4":
                                        gestionMiembro.ListarMusicos(gestionMiembro);
                                        break;
                                    case "5":
                                        gestionMiembro.GuardarMiembros(gestionMiembro);
                                        Console.WriteLine("Guardando cambios");
                                        break;
                                }
                            }
                        }
                        if (tipo3 == "2")
                        {
                            menu = "0";
                            while (menu != "5")
                            {
                                Console.WriteLine("1. Añadir No Músico \n2. Eliminar No Músico \n3. Modificar No Músico \n4. Mostrar No Músicos \n5. Salir");
                                menu = Console.ReadLine();

                                switch (menu)
                                {
                                    case "1":
                                        AnyadirMiembroNoMusico(gestionMiembro);
                                        break;
                                    case "2":
                                        Console.WriteLine("Introduzca la posición a borrar");
                                        gestionMiembro.ListarNoMusicos(gestionMiembro);
                                        Int32.TryParse(Console.ReadLine(), out int pos3);
                                        gestionMiembro.BorrarNoMusico(pos3);
                                        break;
                                    case "3":
                                        Console.WriteLine("Introduzca la posición a modificar");
                                        gestionMiembro.ListarNoMusicos(gestionMiembro);
                                        Int32.TryParse(Console.ReadLine(), out int pos4);
                                        Console.WriteLine("Qué desea modificar? \n1. Nombre \n2. DNI \n3. Edad \n4. ¿Pago?");
                                        string modificar = Console.ReadLine();
                                        if (modificar == "1")
                                        {
                                            Console.WriteLine("Introduzca el nuevo nombre");
                                            string valor = Console.ReadLine();
                                            gestionMiembro.ModificarNoMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "2")
                                        {
                                            Console.WriteLine("Introduce el nuevo DNI");
                                            string valor = Console.ReadLine();
                                            gestionMiembro.ModificarNoMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "3")
                                        {
                                            Console.WriteLine("Introduzca la nueva edad");
                                            string valor = Console.ReadLine();
                                            gestionMiembro.ModificarNoMusico(pos4, modificar, valor);
                                        }
                                        else if (modificar == "4")
                                        {
                                            Console.WriteLine("1.Sí \n2. No");
                                            string valor = Console.ReadLine();
                                            if (valor == "1")
                                            {
                                                valor = "Sí";
                                            }
                                            else if (valor == "2")
                                            {
                                                valor = "No";
                                            }
                                            gestionMiembro.ModificarNoMusico(pos4, modificar, valor);
                                        }
                                        break;
                                    case "4":
                                        gestionMiembro.ListarNoMusicos(gestionMiembro);
                                        break;
                                    case "5":
                                        gestionMiembro.GuardarMiembros(gestionMiembro);
                                        Console.WriteLine("Guardando Cambios");
                                        break;
                                }
                            }
                        }
                        if (tipo3 == "3")
                        {
                            gestionMiembro.ListarMiembros(gestionMiembro);
                        }
                        if (tipo3 == "4")
                        {
                            gestionMiembro.Guardar();
                            Console.WriteLine("Saliendo del programa");
                        }
                    } while (tipo3 != "4");
                }
            } while (gestion != "4") ;
        }

        static void CargarEnLista(GestionBanda gestionBanda, List<Banda> bandas, GestionInstrumento gestionInstrumento, List<Instrumento> instrumentos, 
            GestionMiembro gestionMiembro, List<Musico> musicos, List<NoMusico> noMusicos)
        {
            foreach (Banda b in bandas)
            {
                gestionBanda.AnyadirBanda(b);
            }
            foreach (Instrumento i in instrumentos)
            {
                gestionInstrumento.AnyadirInstrumento(i);
            }
            foreach (Musico m in musicos)
            {
                gestionMiembro.AnyadirMusico(m);
                gestionMiembro.AnyadirMiembro(m);
            }
            foreach(NoMusico nM in noMusicos)
            {
                gestionMiembro.AnyadirNoMusico(nM);
                gestionMiembro.AnyadirMiembro(nM);
            }
        }
        static void anyadirMiembroMusico(GestionMiembro gestionMiembro, GestionBanda gestionBanda, GestionInstrumento gestionInstrumento)
        {
            Console.WriteLine("Introduzca nombre");
            string nombre = Console.ReadLine();
            Console.WriteLine("Introduzca DNI");
            string dni = Console.ReadLine();
            Console.WriteLine("Introduzca la edad");
            Int32.TryParse(Console.ReadLine(), out int edad);
            Console.WriteLine("Ha pagado? \n1. Sí \n2. No");
            string pago = Console.ReadLine();
            if (pago == "1")
                pago = "Sí";
            if (pago == "2")
                pago = "No";
            Console.WriteLine("Introduzca la cantidad de ensayos que ha ido");
            Int32.TryParse(Console.ReadLine(), out int ensayos);
            Console.WriteLine("Introduzca la cantidad de actuaciones que ha hecho");
            Int32.TryParse(Console.ReadLine(), out int actuaciones);
            Console.WriteLine("Introduzca el precio a pagar");
            Int32.TryParse(Console.ReadLine(), out int precio);
            Console.WriteLine("Introduzca la banda");
            gestionBanda.ListarBandas(gestionBanda);
            Banda banda = gestionMiembro.AnyadirBanda(gestionBanda);
            Console.WriteLine("Introduzca el instrumento");
            gestionInstrumento.ListarInstrumentos(gestionInstrumento);
            Instrumento instrumento = gestionMiembro.AnyadirInstrumento(gestionInstrumento);
            Musico musico = new Musico(nombre, dni, edad, ensayos, actuaciones, precio, pago, banda, instrumento);
            if (gestionMiembro.AnyadirMusico(musico))
                Console.WriteLine("Se ha añadido correctamente");
            else
                Console.WriteLine("Se ha producido un error");
        }

        static void AnyadirMiembroNoMusico(GestionMiembro gestionMiembro)
        {
            Console.WriteLine("Introduzca nombre");
            string nombre = Console.ReadLine();
            Console.WriteLine("Introduzca DNI");
            string dni = Console.ReadLine();
            Console.WriteLine("Introduzca la edad");
            Int32.TryParse(Console.ReadLine(), out int edad);
            Console.WriteLine("Ha pagado? \n1. Sí \n2. No");
            string pago = Console.ReadLine();
            if (pago == "1")
                pago = "Sí";
            if (pago == "2")
                pago = "No";
            NoMusico noMusico = new NoMusico(nombre, dni, edad, pago);
            if (gestionMiembro.AnyadirNoMusico(noMusico))
                Console.WriteLine("Se ha añadido correctamente");
            else
                Console.WriteLine("Se ha producido un error");
        }
    }
}
