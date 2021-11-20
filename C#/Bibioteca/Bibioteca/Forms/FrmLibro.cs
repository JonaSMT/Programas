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
    public partial class FrmLibro : Form, IContrato
    {
        GestionLibro gestionLibro = new GestionLibro();
        public FrmLibro()
        {
            InitializeComponent();
        }

        public void MapearNegocioPresentacion()
        {
            txtTitulo.Text = gestionLibro.Libro.Titulo;
            txtAutor.Text = gestionLibro.Libro.Autor;
            txtGenero.Text = gestionLibro.Libro.Genero;
            txtCopy.Text = gestionLibro.Libro.AnyoCopy.ToString();
            txtEdicion.Text = gestionLibro.Libro.AnyoEdicion.ToString();
            txtIdioma.Text = gestionLibro.Libro.Idioma;
        }
        public void MapearPresentacionNegocio()
        {
            Int32.TryParse(txtCopy.Text, out int anyoCopy);
            Int32.TryParse(txtEdicion.Text, out int anyoEdicion);
            gestionLibro.Libro.Titulo = txtTitulo.Text;
            gestionLibro.Libro.Autor = txtAutor.Text;
            gestionLibro.Libro.Genero = txtGenero.Text;
            gestionLibro.Libro.AnyoCopy = anyoCopy;
            gestionLibro.Libro.AnyoEdicion = anyoEdicion;
            gestionLibro.Libro.Idioma = txtIdioma.Text;
        }

        private void btnAñadir_Click(object sender, EventArgs e)
        {
            if (txtTitulo.Text == "" || txtAutor.Text == "" || txtEdicion.Text == "" || txtGenero.Text == "" || txtIdioma.Text == "")
            {
                MessageBox.Show("Cari, sé que ets un hetero curiós però, els camps Títol, Autor, Edició, Gènere i idioma no poden estar buits :D",
                    "Error al Afegir", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                MapearPresentacionNegocio();
                gestionLibro.Anyadir();
                dgvLibros.DataSource = gestionLibro.ConsultaTabla("select titulo Títol, Autor, genero as Gènere, ANYOCOPY as 'Any Copy', ANYOEDICION as " +
                "'Any Edició', Idioma from libro");
            }
        }

        private void dgvLibros_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtTitulo.Text = dgvLibros.SelectedCells[0].Value.ToString();
            txtAutor.Text = dgvLibros.SelectedCells[1].Value.ToString();
            txtGenero.Text = dgvLibros.SelectedCells[2].Value.ToString();
            txtCopy.Text = dgvLibros.SelectedCells[3].Value.ToString();
            txtEdicion.Text = dgvLibros.SelectedCells[4].Value.ToString();
            Int32.TryParse(txtEdicion.Text, out int edicion);
            txtIdioma.Text = dgvLibros.SelectedCells[5].Value.ToString();
            gestionLibro.GetByTituloYEdicion(txtTitulo.Text, edicion);
            MapearPresentacionNegocio();
        }

        private void FrmLibro_Load(object sender, EventArgs e)
        {
            dgvLibros.DataSource = gestionLibro.ConsultaTabla("select titulo Títol, Autor, genero as Gènere, ANYOCOPY as 'Any Copy', ANYOEDICION as " +
                "'Any Edició', Idioma from libro");
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtTitulo.Text == "" || txtEdicion.Text == "")
            {
                MessageBox.Show("T’estime moltíssim senyoret meu però, fer-te major està fent-te oblidar coses, i ací estàs oblidant el Títol i / o l’Edició.Hauré de comprar - te pastilles " +
                    "per la memòria :)", "Error al Eliminar", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                MapearPresentacionNegocio();
                gestionLibro.Eliminar();
                dgvLibros.DataSource = gestionLibro.ConsultaTabla("select titulo Títol, Autor, genero as Gènere, ANYOCOPY as 'Any Copy', ANYOEDICION as " +
                "'Any Edició', Idioma from libro");
            }
            
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtTitulo.Text == "" || txtAutor.Text == "" || txtEdicion.Text == "" || txtGenero.Text == "" || txtIdioma.Text == "")
            {
                MessageBox.Show("A vore com t’ho explique, estimat meu \nEls camps Títol, Autor, Edició, Gènere e Idioma no poden estar buits \nNo em sigues Joan :)",
                    "Error al Modificar", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                MapearPresentacionNegocio();
                Int32.TryParse(dgvLibros.SelectedCells[4].Value.ToString(), out int edicion);
                gestionLibro.Editar(dgvLibros.SelectedCells[0].Value.ToString(), edicion);
                dgvLibros.DataSource = gestionLibro.ConsultaTabla("select titulo Títol, Autor, genero as Gènere, ANYOCOPY as 'Any Copy', ANYOEDICION as " +
                "'Any Edició', Idioma from libro");
            }
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            FrmBuscarLibro frmBuscarLibro = new FrmBuscarLibro();
            frmBuscarLibro.contrato = this;
            frmBuscarLibro.Show();

        }

        public void Ejecutar(string titulo, string autor, string genero, int anyoCopy, int anyoEdicion, string idioma)
        {
            txtTitulo.Text = titulo;
            txtAutor.Text = autor;
            txtGenero.Text = genero;
            txtCopy.Text = anyoCopy.ToString();
            txtEdicion.Text = anyoEdicion.ToString();
            txtIdioma.Text = idioma;
        }

        public void Consulta(string titulo, int anyoEdicion)
        {
            dgvLibros.DataSource = gestionLibro.ConsultaTabla("select titulo Títol, Autor, genero as Gènere, ANYOCOPY as 'Any Copy', ANYOEDICION as " +
                "'Any Edició', Idioma from libro where titulo = '" + titulo + "' and anyoedicion = " + anyoEdicion);
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtTitulo.ResetText();
            txtAutor.ResetText();
            txtGenero.ResetText();
            txtCopy.ResetText();
            txtEdicion.ResetText();
            txtIdioma.ResetText();
            dgvLibros.DataSource = gestionLibro.ConsultaTabla("select titulo Títol, Autor, genero as Gènere, ANYOCOPY as 'Any Copy', ANYOEDICION as " +
                "'Any Edició', Idioma from libro");
        }
    }
}
