using Bibioteca.GestionBiblioteca;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Bibioteca.Forms
{
    public partial class FrmBuscarManga : Form
    {
        GestionManga gestionManga = new GestionManga();
        public IContrato3 Contrato { get; set; }
        public FrmBuscarManga()
        {
            InitializeComponent();
        }

        
        public void MapearPresentacionNegocio()
        {
            Int32.TryParse(txtVolumen.Text, out int volumen);
            Int32.TryParse(txtNumero.Text, out int numero);
            Int32.TryParse(txtAnyo.Text, out int anyo);
            gestionManga.Manga.Titulo = txtTitulo.Text;
            gestionManga.Manga.Autor = txtAutor.Text;
            gestionManga.Manga.Volumen = volumen;
            gestionManga.Manga.Numero = numero;
            gestionManga.Manga.Anyo = anyo;
        }

        private void FrmBuscarManga_Load(object sender, EventArgs e)
        {
            dgvMangas.DataSource = gestionManga.ConsultaTabla("select titulo Títol, Autor, Volumen Volum, Nº, Anyo Any from manga");
        }


        private void btnBuscar_Click(object sender, EventArgs e)
        {
            MapearPresentacionNegocio();
            string sql = "select titulo Títol, Autor, Volumen Volum, Nº, Anyo Any from manga where 1=1";
            if (txtTitulo.Text != "")
            {
                sql = sql + " and titulo like  '%" + gestionManga.Manga.Titulo + "%'";
            }
            if (txtAutor.Text != "")
            {
                sql = sql + " and autor like '%" + gestionManga.Manga.Autor + "%'";
            }
            if (txtVolumen.Text != "")
            {
                sql = sql + " and volumen like '%" + gestionManga.Manga.Volumen + "%'";
            }
            if (txtNumero.Text != "")
            {
                sql = sql + " and nº like '%" + gestionManga.Manga.Numero + "%'";
            }
            if (txtAnyo.Text != "")
            {
                sql = sql + " and anyo like '%" + gestionManga.Manga.Anyo + "%'";
            }
            dgvMangas.DataSource = gestionManga.ConsultaTabla(sql);
        }

        private void dgvMangas_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            Int32.TryParse(dgvMangas.SelectedCells[2].Value.ToString(), out int volumen);
            Int32.TryParse(dgvMangas.SelectedCells[3].Value.ToString(), out int numero);
            Int32.TryParse(dgvMangas.SelectedCells[4].Value.ToString(), out int anyo);
            string titulo = dgvMangas.SelectedCells[0].Value.ToString();
            string autor = dgvMangas.SelectedCells[1].Value.ToString();

            Contrato.Ejecutar(titulo, autor, volumen, numero, anyo);
            Contrato.Consulta(titulo, volumen, numero);
            Close();
        }

        private void btnResetear_Click(object sender, EventArgs e)
        {
            txtTitulo.ResetText();
            txtAutor.ResetText();
            txtVolumen.ResetText();
            txtNumero.ResetText();
            txtAnyo.ResetText();

            dgvMangas.DataSource = gestionManga.ConsultaTabla("select titulo Títol, Autor, Volumen Volum, Nº, Anyo Any from manga");
        }
    }
}
