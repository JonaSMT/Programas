using Bibioteca.BibliotecaClases;
using Bibioteca.BaseDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace Bibioteca.GestionBiblioteca
{
    class GestionLibro
    {
        public Libro Libro { get; set; }

        public GestionLibro()
        {
            this.Libro = new Libro();
        }
        public GestionLibro(Libro libro)
        {
            this.Libro = libro;
        }
        public DataTable ConsultaTabla(string sql)
        {
            return BBDD.ConsultaTabla(sql);
        }
        public int Anyadir()
        {
            string sql = "";
            sql = "insert into libro (titulo,autor,genero,anyocopy,anyoedicion,idioma)" + " values ('" + Libro.Titulo + "', '" + Libro.Autor + "', '" +
                Libro.Genero + "', " + Libro.AnyoCopy + ", " + Libro.AnyoEdicion + ", '" + Libro.Idioma + "')";
            return (BBDD.Modificacion(sql));
        }
        public int Eliminar()
        {
            string sql = "";
            sql = "delete from libro where titulo = '" + Libro.Titulo + "' and anyoedicion = " + Libro.AnyoEdicion;
            return (BBDD.Modificacion(sql));
        }
        public Libro GetByTitulo(string nombre)
        {
            try
            {
                MySqlDataReader reader = BBDD.Consulta("select * from libro where titulo =  '" + nombre + "'");
                if (reader != null && reader.Read())
                {
                    Libro l = new Libro(reader.GetString(0), reader.GetString(1), reader.GetString(2), reader.GetInt32(3), reader.GetInt32(4), reader.GetString(5));
                    return (l);
                }
                return (null);
            }
            catch (Exception e)
            {
                return (null);
            }
        }
        public Libro GetByTituloYEdicion(string nombre, int edicion)
        {
            try
            {
                MySqlDataReader reader = BBDD.Consulta("select * from libro where titulo =  '" + nombre + "' and anyoedicion = " + edicion);
                if (reader != null && reader.Read())
                {
                    Libro l = new Libro(reader.GetString(0), reader.GetString(1), reader.GetString(2), reader.GetInt32(3), reader.GetInt32(4), reader.GetString(5));
                    return (l);
                }
                return (null);
            }
            catch (Exception e)
            {
                return (null);
            }
        }
        public int Editar(string titulo, int edicion)
        {
            string sql = "";
            sql = "update libro set titulo = '" + Libro.Titulo + "', autor = '" + Libro.Autor + "', genero = '" + Libro.Genero 
                + "', anyocopy = " + Libro.AnyoCopy + ", anyoedicion = " + Libro.AnyoEdicion + ", idioma = '" + Libro.Idioma + "'" + " where titulo = '" + titulo + "' and anyoedicion = " 
                + edicion;
            return (BBDD.Modificacion(sql));
        }
    }
}
