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
    class GestionManga
    {
        public Manga Manga { get; set; }

        public GestionManga()
        {
            Manga = new Manga();
        }

        public GestionManga(Manga manga)
        {
            Manga = manga;
        }

        public DataTable ConsultaTabla(string sql)
        {
            return BBDD.ConsultaTabla(sql);
        }

        public int Anyadir()
        {
            string sql = "";
            sql = "insert into manga (titulo,autor,volumen,nº,anyo)" + " values ('" + Manga.Titulo + "', '" + Manga.Autor + "', " + Manga.Volumen + ", " + Manga.Numero + ", " +
                Manga.Anyo + ")";
            return BBDD.Modificacion(sql);
        }
        public int Eliminar()
        {
            string sql = "";
            sql = "delete from manga where titulo = '" + Manga.Titulo + "' and volumen = " + Manga.Volumen + " and nº = " + Manga.Numero;
            return BBDD.Modificacion(sql);
        }
        public int Modificar(string titulo, int volumen, int numero)
        {
            string sql = "";
            sql = "update manga set titulo = '" + Manga.Titulo + "', autor = '" + Manga.Autor + "', volumen = " + Manga.Volumen + ", nº = " + Manga.Numero + ", anyo = " +
                Manga.Anyo + " where titulo = '" + titulo + "' and volumen = " + volumen + " and nº = " + numero;
            return BBDD.Modificacion(sql);
        }
    }
}
