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
    public partial class FrmBuscarLibro : Form
    {
        GestionLibro gestionLibro = new GestionLibro();
        FrmLibro frmLibro = new FrmLibro();
        public IContrato contrato { get; set; }
        public FrmBuscarLibro()
        {
            InitializeComponent();
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

        private void FrmBuscarLibro_Load(object sender, EventArgs e)
        {
            dgvBuscarLibros.DataSource = gestionLibro.ConsultaTabla("select titulo as Títol, Autor, genero as Gènere, ANYOCOPY as 'Any Copy', ANYOEDICION as " +
                "'Any Edició', Idioma from libro");
        }
        private void btnBuscar_Click(object sender, EventArgs e)
        {
            MapearPresentacionNegocio();
            string sql = "select titulo Títol, Autor, genero as Gènere, ANYOCOPY as 'Any Copy', ANYOEDICION as " +
                "'Any Edició', Idioma from libro where 1=1";
            if (txtTitulo.Text != "")
            {  
                sql = sql + " and titulo like '%" + gestionLibro.Libro.Titulo + "%'";
            }
            if (txtAutor.Text != "")
            {
                sql = sql + " and autor like '%" + gestionLibro.Libro.Autor + "%'";
            }
            if (txtGenero.Text != "")
            {
                sql = sql + " and genero like '%" + gestionLibro.Libro.Genero + "%'";
            }
            if (txtCopy.Text != "")
            {
                sql = sql + " and anyocopy like '%" + gestionLibro.Libro.AnyoCopy + "%'";
            }
            if (txtEdicion.Text != "")
            {
                sql = sql + " and anyoedicion like '%" + gestionLibro.Libro.AnyoEdicion + "%'";
            }
            if (txtIdioma.Text != "")
            {
                sql = sql + " and idioma like '%" + gestionLibro.Libro.Idioma + "%'";
            }
            dgvBuscarLibros.DataSource = gestionLibro.ConsultaTabla(sql);
        }

        private void dgvBuscarLibros_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            string titulo = dgvBuscarLibros.SelectedCells[0].Value.ToString();
            string autor = dgvBuscarLibros.SelectedCells[1].Value.ToString();
            string genero = dgvBuscarLibros.SelectedCells[2].Value.ToString();

            txtCopy.Text = dgvBuscarLibros.SelectedCells[3].Value.ToString();
            Int32.TryParse(txtCopy.Text, out int copy);

            txtEdicion.Text = dgvBuscarLibros.SelectedCells[4].Value.ToString();
            Int32.TryParse(txtEdicion.Text, out int edicion);

            string idioma = dgvBuscarLibros.SelectedCells[5].Value.ToString();

            contrato.Ejecutar(titulo, autor, genero, copy, edicion, idioma);
            contrato.Consulta(titulo, edicion);
            Close();
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtTitulo.ResetText();
            txtAutor.ResetText();
            txtGenero.ResetText();
            txtCopy.ResetText();
            txtEdicion.ResetText();
            txtIdioma.ResetText();
            dgvBuscarLibros.DataSource = gestionLibro.ConsultaTabla("select titulo Títol, Autor, genero as Gènere, ANYOCOPY as 'Any Copy', ANYOEDICION as " +
                "'Any Edició', Idioma from libro");
        }
    }
}
