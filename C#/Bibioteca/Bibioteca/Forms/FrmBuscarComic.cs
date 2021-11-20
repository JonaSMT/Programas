using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Bibioteca.GestionBiblioteca;

namespace Bibioteca.Forms
{
    public partial class FrmBuscarComic : Form
    {
        GestionComic gestionComic = new GestionComic();
        FrmComic frmComic = new FrmComic();
        public IContrato2 Contrato { get; set; }
        public FrmBuscarComic()
        {
            InitializeComponent();
        }
        public void MapearPresentacionNegocio()
        {
            Int32.TryParse(txtAnyo.Text, out int anyo);
            gestionComic.Comic.Titulo = txtTitulo.Text;
            gestionComic.Comic.Autor = txtAutor.Text;
            gestionComic.Comic.Coleccion = txtColeccion.Text;
            gestionComic.Comic.Anyo = anyo;
        }

        private void FrmBuscarComic_Load(object sender, EventArgs e)
        {
            dgvComics.DataSource = gestionComic.ConsultaTabla("select * from comic");
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            MapearPresentacionNegocio();
            string sql = "select * from comic where 1=1";
            if (txtTitulo.Text != "")
            {
                sql = sql + " and titulo like '%" + gestionComic.Comic.Titulo + "%'";
            }
            if (txtAutor.Text != "")
            {
                sql = sql + " and autor like '%" + gestionComic.Comic.Autor + "%'";
            }
            if (txtColeccion.Text != "")
            {
                sql = sql + " and coleccion like '%" + gestionComic.Comic.Coleccion + "%'";
            }
            if (txtAnyo.Text != "")
            {
                sql = sql + " and anyo like '%" + gestionComic.Comic.Anyo + "%'";
            }

            dgvComics.DataSource = gestionComic.ConsultaTabla(sql);
        }

        private void dgvComics_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            Int32.TryParse(dgvComics.SelectedCells[3].Value.ToString(), out int anyo);
            string titulo = dgvComics.SelectedCells[0].Value.ToString();
            string autor = dgvComics.SelectedCells[1].Value.ToString();
            string coleccion = dgvComics.SelectedCells[2].Value.ToString();

            Contrato.Ejecutar(titulo, autor, coleccion, anyo);
            Contrato.Consulta(titulo, anyo);
            Close();
        }

        private void btnResetear_Click(object sender, EventArgs e)
        {
            txtTitulo.ResetText();
            txtAutor.ResetText();
            txtColeccion.ResetText();
            txtAnyo.ResetText();
            dgvComics.DataSource = gestionComic.ConsultaTabla("select * from comic");
        }
    }
}
