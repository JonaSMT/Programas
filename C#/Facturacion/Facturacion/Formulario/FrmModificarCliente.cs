using Facturacion.BBDD;
using Facturacion.Gestion;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Facturacion.Formulario
{
    public partial class FrmModificarCliente : Form
    {
        GestionCliente gestionCliente = new GestionCliente();
        public FrmModificarCliente()
        {
            InitializeComponent();
        }
        public void MapearPresentacionNegocio()
        {
            Int32.TryParse(txtCpCliente.Text, out int cpCliente);
            gestionCliente.Cliente.Nombre = txtNombreCliente.Text;
            gestionCliente.Cliente.Dni = txtDni.Text;
            gestionCliente.Cliente.Calle = txtCalleCliente.Text;
            gestionCliente.Cliente.Poblacion = txtPoblacionCliente.Text;
            gestionCliente.Cliente.Cp = cpCliente;
            gestionCliente.Cliente.Provincia = txtProvinciaCliente.Text;
        }
        private void Consultar(object o, object e)
        {
            string sql = "";
            sql = "select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, provincia as Provincia from cliente where  1 = 1";
            dgvModificar.Columns[0].Width = 170;
            if (txtNombreCliente.Text.Trim() != "")
            {
                sql = sql + " and nombre like '%" + txtNombreCliente.Text + "%'";
            }
            if (txtDni.Text.Trim() != "")
            {
                sql = sql + " and dni like '%" + txtDni.Text + "%'";
            }
            if (txtCalleCliente.Text.Trim() != "")
            {
                sql = sql + " and calle like '%" + txtCalleCliente.Text + "%'";
            }
            if (txtPoblacionCliente.Text.Trim() != "")
            {
                sql = sql + " and poblacion like '%" + txtPoblacionCliente.Text + "%'";
            }
            if (txtCpCliente.Text.Trim() != "")
            {
                sql = sql + " and LPAD(cp,5,'0') like '%" + txtCpCliente.Text + "%'";
            }
            if (txtProvinciaCliente.Text.Trim() != "")
            {
                sql = sql + " and provincia like '%" + txtProvinciaCliente.Text + "%'";
            }
            dgvModificar.DataSource = ConexionBBDD.ConsultaTabla(sql);
        }
        private void FrmConsultaMiembros_Load(object sender, EventArgs e)
        {
            dgvModificar.DataSource = ConexionBBDD.ConsultaTabla("select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, " +
                "provincia as Provincia from cliente");
            foreach (Control control in panelModificar.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.TextChanged += new EventHandler(Consultar);
                }
            }
        }
        private void dgvConsulta_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtNombreCliente.Text = dgvModificar.SelectedCells[0].Value.ToString();
            txtDni.Text = dgvModificar.SelectedCells[1].Value.ToString();
            txtCalleCliente.Text = dgvModificar.SelectedCells[2].Value.ToString();
            txtPoblacionCliente.Text = dgvModificar.SelectedCells[3].Value.ToString();
            txtCpCliente.Text = dgvModificar.SelectedCells[4].Value.ToString();
            txtProvinciaCliente.Text = dgvModificar.SelectedCells[5].Value.ToString();
        }

        private void btnResetear_Click(object sender, EventArgs e)
        {
            foreach (Control control in panelModificar.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.Text = "";
                    dgvModificar.DataSource = ConexionBBDD.ConsultaTabla("select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, " +
                    "provincia as Provincia from cliente");
                }  
            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            MapearPresentacionNegocio();
            gestionCliente.Modificar();
            dgvModificar.DataSource = ConexionBBDD.ConsultaTabla("select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, " +
                "provincia as Provincia from cliente");
        }
    }
}
