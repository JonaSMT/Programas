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
    public partial class FrmManga : Form, IContrato3
    {
        GestionManga gestionMaga = new GestionManga();
        public FrmManga()
        {
            InitializeComponent();
        }

        private void FrmManga_Load(object sender, EventArgs e)
        {
            dgvMangas.DataSource = gestionMaga.ConsultaTabla("select titulo Títol, Autor, Volumen Volum, Nº, Anyo Any from manga");
        }

        public void MapearNegocioPresentacion()
        {
            txtTitulo.Text = gestionMaga.Manga.Titulo;
            txtAutor.Text = gestionMaga.Manga.Autor;
            txtVolumen.Text = gestionMaga.Manga.Volumen.ToString();
            txtNumero.Text = gestionMaga.Manga.Numero.ToString();
            txtAnyo.Text = gestionMaga.Manga.Anyo.ToString();
        }
        public void MapearPresentacionNegocio()
        {
            Int32.TryParse(txtVolumen.Text, out int volumen);
            Int32.TryParse(txtNumero.Text, out int numero);
            Int32.TryParse(txtAnyo.Text, out int anyo);
            gestionMaga.Manga.Titulo = txtTitulo.Text;
            gestionMaga.Manga.Autor = txtAutor.Text;
            gestionMaga.Manga.Volumen = volumen;
            gestionMaga.Manga.Numero = numero;
            gestionMaga.Manga.Anyo = anyo;
        }

        private void dgvMangas_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtTitulo.Text = dgvMangas.SelectedCells[0].Value.ToString();
            txtAutor.Text = dgvMangas.SelectedCells[1].Value.ToString();
            txtVolumen.Text = dgvMangas.SelectedCells[2].Value.ToString();
            txtNumero.Text = dgvMangas.SelectedCells[3].Value.ToString();
            txtAnyo.Text = dgvMangas.SelectedCells[4].Value.ToString();
            MapearPresentacionNegocio();
        }

        private void btnAñadir_Click(object sender, EventArgs e)
        {
            if (txtTitulo.Text == "" || txtVolumen.Text == "" || txtNumero.Text == "")
            {
                MessageBox.Show("Anem a vore, marica meua, deixar en blanc el Títol, Volum i/o N.º no és molt intel·ligent per la teua " +
                "part, i tú vols portar les mariques a un món millor si no saps ni posar quatre coses bé :P", "Error al Afegir", MessageBoxButtons.OK, 
                    MessageBoxIcon.Error);
            }
            else
            {
                MapearPresentacionNegocio();
                gestionMaga.Anyadir();
                dgvMangas.DataSource = gestionMaga.ConsultaTabla("select titulo Títol, Autor, Volumen Volum, Nº, Anyo Any from manga");
            }
            
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtTitulo.Text == "" || txtVolumen.Text == "" || txtNumero.Text == "")
            {
                MessageBox.Show("Cari, encara no entenc els teus fetitxes raros, ¿No veus que eliminar camps que estàn buits no perta " +
                "enlloc ? De res et serveix deixar buits el Títol, Volum i / o N.º, excepte que sigues idiota, no sé per a " +
                "que ho deixes així", "Error al Eliminar", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                MapearPresentacionNegocio();
                gestionMaga.Eliminar();
                dgvMangas.DataSource = gestionMaga.ConsultaTabla("select titulo Títol, Autor, Volumen Volum, Nº, Anyo Any from manga");
            }
            
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtTitulo.Text == "" || txtVolumen.Text == "" || txtNumero.Text == "")
            {
                MessageBox.Show("¿Ets idoota? ¿Que no veus que deixar el Títol, Volum i/o N.º buit no et serveix de res?" +
                    "\nNo si encara et deixe el cul com un badall a vore si aprens", "Error al Modificar", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                MapearPresentacionNegocio();
                Int32.TryParse(dgvMangas.SelectedCells[2].Value.ToString(), out int volumen);
                Int32.TryParse(dgvMangas.SelectedCells[3].Value.ToString(), out int numero);
                string titulo = dgvMangas.SelectedCells[0].Value.ToString();
                gestionMaga.Modificar(titulo, volumen, numero);
                dgvMangas.DataSource = gestionMaga.ConsultaTabla("select titulo Títol, Autor, Volumen Volum, Nº, Anyo Any from manga");
            }
            
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            FrmBuscarManga frmBuscarManga = new FrmBuscarManga();
            frmBuscarManga.Contrato = this;
            frmBuscarManga.Show();
            
        }

        public void Ejecutar(string titulo, string autor, int volumen, int numero, int anyo)
        {
            txtTitulo.Text = titulo;
            txtAutor.Text = autor;
            txtVolumen.Text = volumen.ToString();
            txtNumero.Text = numero.ToString();
            txtAnyo.Text = anyo.ToString();
        }

        public void Consulta(string titulo, int volumen, int numero)
        {
            dgvMangas.DataSource = gestionMaga.ConsultaTabla("select titulo Títol, Autor, Volumen Volum, Nº, Anyo Any from manga where titulo = '" + titulo + "' and volumen = " + volumen + " and nº = " + numero);
        }

        private void btnResetear_Click(object sender, EventArgs e)
        {
            txtTitulo.ResetText();
            txtAutor.ResetText();
            txtVolumen.ResetText();
            txtNumero.ResetText();
            txtAnyo.ResetText();
            dgvMangas.DataSource = gestionMaga.ConsultaTabla("select titulo Títol, Autor, Volumen Volum, Nº, Anyo Any from manga");
        }
    }
}
