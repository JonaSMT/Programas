using Bibioteca.BaseDatos;
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
    public partial class FrmComic : Form, IContrato2
    {
        GestionComic gestionComic = new GestionComic();
        public FrmComic()
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
        public void MapearNegocioPresentacion()
        {
            txtTitulo.Text = gestionComic.Comic.Titulo;
            txtAutor.Text = gestionComic.Comic.Autor;
            txtColeccion.Text = gestionComic.Comic.Coleccion;
            txtAnyo.Text = gestionComic.Comic.Anyo.ToString();
        }

        private void FrmComic_Load(object sender, EventArgs e)
        {
            dgvComic.DataSource = gestionComic.ConsultaTabla("select titulo Títol, Autor, Coleccion Col·lecció, anyo Any from comic");
        }

        private void dgvComic_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtTitulo.Text = dgvComic.SelectedCells[0].Value.ToString();
            txtAutor.Text = dgvComic.SelectedCells[1].Value.ToString();
            txtColeccion.Text = dgvComic.SelectedCells[2].Value.ToString();
            txtAnyo.Text = dgvComic.SelectedCells[3].Value.ToString();
        }

        private void btnAnyadir_Click(object sender, EventArgs e)
        {
            if (txtTitulo.Text == "" || txtColeccion.Text == "" || txtAnyo.Text == "")
            {
                MessageBox.Show("Ja veig que encara no has après res, cari, a vore quantes vegades t’he d’explicar que no pots deixar camps buits. " +
                    "\nEn aquest cas no pots deixar buit Títol, Col·lecció i Any cigronet meu", "Error al Afegir", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else 
            {
                MapearPresentacionNegocio();
                gestionComic.Anyadir();
                dgvComic.DataSource = gestionComic.ConsultaTabla("select titulo Títol, Autor, Coleccion Col·lecció, anyo Any from comic");
            }
            
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtTitulo.Text == "" || txtColeccion.Text == "")
            {
                MessageBox.Show("A vore cari, sé que el teu cap no dona per a molt però potser deixar en blanc els camps que " +
                "identifiquen al còmic no es molt intel·ligent per la teua part, i tú pensant que ets llest o algo 7u7", "Error al Eliminar", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                MapearPresentacionNegocio();
                gestionComic.Eliminar();
                dgvComic.DataSource = gestionComic.ConsultaTabla("select titulo Títol, Autor, Coleccion Col·lecció, anyo Any from comic");
            }
            
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtTitulo.Text == "" || txtColeccion.Text == "" || txtAnyo.Text == "")
            {
                MessageBox.Show("Jo t’estime moltíssim cari però tens un fetitxe molt raro en deixar camps buits \nNo deixes buits Títol, " +
                    "ColLecció i Any estimat meu, o t’hauré de deixar el cul com un badall", "Error al Modificar", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                string titulo = dgvComic.SelectedCells[0].Value.ToString();
                string coleccion = dgvComic.SelectedCells[2].Value.ToString();
                MapearPresentacionNegocio();
                gestionComic.Modificar(titulo, coleccion);
                dgvComic.DataSource = gestionComic.ConsultaTabla("select titulo Títol, Autor, Coleccion Col·lecció, anyo Any from comic");
            }
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            FrmBuscarComic frmBuscarComic = new FrmBuscarComic();
            frmBuscarComic.Contrato = this;
            frmBuscarComic.Show();
            
        }

        public void Ejecutar(string titulo, string autor, string coleccion, int anyo)
        {
            txtTitulo.Text = titulo;
            txtAutor.Text = autor;
            txtColeccion.Text = coleccion;
            txtAnyo.Text = anyo.ToString();
        }

        public void Consulta(string titulo, int anyo)
        {
            dgvComic.DataSource = gestionComic.ConsultaTabla("select titulo Títol, Autor, Coleccion Col·lecció, anyo Any from comic where titulo = '" + titulo + "' and anyo = " + anyo);
        }

        private void btnResetear_Click(object sender, EventArgs e)
        {
            txtTitulo.ResetText();
            txtAutor.ResetText();
            txtColeccion.ResetText();
            txtAnyo.ResetText();
            dgvComic.DataSource = gestionComic.ConsultaTabla("select titulo Títol, Autor, Coleccion Col·lecció, anyo Any from comic");
        }
    }
}
