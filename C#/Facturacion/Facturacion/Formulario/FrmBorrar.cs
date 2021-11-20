using Facturacion.BBDD;
using iText.IO.Font.Constants;
using iText.IO.Image;
using iText.Kernel.Font;
using iText.Kernel.Geom;
using iText.Kernel.Pdf;
using iText.Layout;
using iText.Layout.Borders;
using iText.Layout.Element;
using iText.Layout.Properties;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Facturacion.Gestion;

namespace Facturacion.Formulario
{
    public partial class FrmBorrar : Form
    {

        GestionFactura gestionFactura = new GestionFactura();
        GestionContenido gestionContenido = new GestionContenido();
        public FrmBorrar()
        {
            InitializeComponent();
        }

        public void MapearPresentacionNegocio()
        {
            gestionFactura.Factura.Id = Convert.ToInt32(dgvBorrar.SelectedCells[0].Value.ToString());
            gestionContenido.Contenido.Id = Convert.ToString(dgvBorrar.SelectedCells[0].Value.ToString());
        }

        private void Consultar(object o, object e)
        {
            string sql = "";
            sql = "select factura.id as Id, cliente.nombre as Cliente, factura.dni as DNI, date_format(factura.fecha, '%d/%m/%Y') as Fecha from factura, " +
                "cliente where cliente.dni = factura.dni and  1 = 1";
            if (txtId.Text.Trim() != "")
            {
                sql = sql + " and id like '%" + txtId.Text + "%'";
            }
            if (txtNombre.Text.Trim() != "")
            {
                sql = sql + " and nombre like '%" + txtNombre.Text + "%'";
            }
            if (txtDni.Text.Trim() != "")
            {
                sql = sql + " and dni like '%" + txtDni.Text + "%'";
            }
            if (txtFecha.Text.Trim() != "")
            {
                sql = sql + " and date_format(factura.fecha, '%d/%m/%Y') like '%" + txtFecha.Text + "%'";
            }
            dgvBorrar.DataSource = ConexionBBDD.ConsultaTabla(sql);
        }

        private void FrmBorrar_Load(object sender, EventArgs e)
        {
            dgvBorrar.DataSource = ConexionBBDD.ConsultaTabla("select factura.id as Id, cliente.nombre as Cliente, factura.dni as DNI, date_format(factura.fecha, '%d/%m/%Y') as Fecha from factura, " +
                "cliente where cliente.dni = factura.dni");
            dgvBorrar.Columns[1].Width = 170;
            foreach (Control control in panelBorrar.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.TextChanged += new EventHandler(Consultar);
                }
            }
        }
        private void dgvBorrar_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            MapearPresentacionNegocio();
            DialogResult resultado = MessageBox.Show("¿Seguro que quieres borrar la factura?", "Borrar Factura", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (resultado == DialogResult.Yes)
            {
                gestionContenido.Eliminar();
                gestionFactura.Eliminar();
                dgvBorrar.DataSource = ConexionBBDD.ConsultaTabla("select factura.id as Id, cliente.nombre as Cliente, factura.dni as DNI, date_format(factura.fecha, '%d/%m/%Y') as Fecha from factura, " +
                "cliente where cliente.dni = factura.dni");
            }
        }

        private void btnResetear_Click(object sender, EventArgs e)
        {
            foreach (Control control in panelBorrar.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.Text = "";
                    dgvBorrar.DataSource = ConexionBBDD.ConsultaTabla("select factura.id as Id, cliente.nombre as Cliente, factura.dni as DNI, date_format(factura.fecha, '%d/%m/%Y') as Fecha from factura, " +
                        "cliente where cliente.dni = factura.dni");
                }
            }
        }
    }
}
