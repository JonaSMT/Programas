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
using Facturacion.Datos;

namespace Facturacion.Formulario
{
    public partial class FrmModificar : Form, IContrato
    {

        GestionFactura gestionFactura = new GestionFactura();
        GestionContenido gestionContenido = new GestionContenido();
        public FrmModificar()
        {
            InitializeComponent();
        }

        public void MapearPresentacionNegocio()
        {
            gestionFactura.Factura.Id = Convert.ToInt32(dgvModificar.SelectedCells[0].Value.ToString());
            gestionContenido.Contenido.Id = Convert.ToString(dgvModificar.SelectedCells[0].Value.ToString());
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
            dgvModificar.DataSource = ConexionBBDD.ConsultaTabla(sql);
        }

        private void FrmModificar_Load(object sender, EventArgs e)
        {
            dgvModificar.DataSource = ConexionBBDD.ConsultaTabla("select factura.id as Id, cliente.nombre as Cliente, factura.dni as DNI, date_format(factura.fecha, '%d/%m/%Y') as Fecha from factura, " +
                "cliente where cliente.dni = factura.dni");
            dgvModificar.Columns[1].Width = 170;
            foreach (Control control in panelModificar.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.TextChanged += new EventHandler(Consultar);
                }
            }
        }
        private void dgvModificar_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int id = Convert.ToInt32(dgvModificar.SelectedCells[0].Value.ToString());
            string dni = dgvModificar.SelectedCells[2].Value.ToString();
            string fecha = dgvModificar.SelectedCells[3].Value.ToString();
            FrmModificarFactura frmModificarFactura = new FrmModificarFactura(id, dni, fecha);
            frmModificarFactura.Contrato = this;
            frmModificarFactura.Show();
        }

        public void Consultar(int id)
        {
            dgvModificar.DataSource = ConexionBBDD.ConsultaTabla("select factura.id as Id, cliente.nombre as Cliente, factura.dni as DNI, date_format(factura.fecha, '%d/%m/%Y') as Fecha from factura, " +
                "cliente where cliente.dni = factura.dni");
        }

        private void btnResetear_Click(object sender, EventArgs e)
        {
            foreach (Control control in panelModificar.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.Text = "";
                    dgvModificar.DataSource = ConexionBBDD.ConsultaTabla("select factura.id as Id, cliente.nombre as Cliente, factura.dni as DNI, date_format(factura.fecha, '%d/%m/%Y') as Fecha from factura, " +
                        "cliente where cliente.dni = factura.dni");
                }
            }
        }
    }
}
