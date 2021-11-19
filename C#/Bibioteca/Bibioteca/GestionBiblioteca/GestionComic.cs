using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bibioteca.BaseDatos;
using Bibioteca.BibliotecaClases;

namespace Bibioteca.GestionBiblioteca
{
    class GestionComic
    {
        public Comic Comic { get; set; }

        public GestionComic()
        {
            Comic = new Comic();
        }
        public GestionComic(Comic comic)
        {
            Comic = comic;
        }
        public DataTable ConsultaTabla(string sql)
        {
            return BBDD.ConsultaTabla(sql);
        }
        public int Anyadir()
        {
            string sql = "";
            sql = "insert into comic (titulo,autor,coleccion,anyo)" + " values ('" + Comic.Titulo + "', '" + Comic.Autor + "', '" +
                Comic.Coleccion + "', " + Comic.Anyo + ")";
            return (BBDD.Modificacion(sql));
        }
        public int Eliminar()
        {
            string sql = "";
            sql = "delete from comic where titulo = '" + Comic.Titulo + "' and coleccion = '" + Comic.Coleccion + "'";
            return (BBDD.Modificacion(sql));
        }
        public int Modificar(string titulo, string coleccion)
        {
            string sql = "";
            sql = "update comic set titulo = '" + Comic.Titulo + "', autor = '" + Comic.Autor + "', coleccion = '" + Comic.Coleccion + "', anyo = '" + Comic.Anyo + 
                "' where titulo = '" + titulo + "' and coleccion = '" + coleccion + "'";
            return (BBDD.Modificacion(sql));

        }
    }
}
