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
    public partial class FrmBorrarCliente : Form
    {
        GestionCliente gestionCliente = new GestionCliente();
        public FrmBorrarCliente()
        {
            InitializeComponent();
        }
        public void MapearPresentacionNegocio()
        {
            Int32.TryParse(dgvBorrar.SelectedCells[4].Value.ToString(), out int cpCliente);
            gestionCliente.Cliente.Nombre = dgvBorrar.SelectedCells[0].Value.ToString();
            gestionCliente.Cliente.Dni = dgvBorrar.SelectedCells[1].Value.ToString();
            gestionCliente.Cliente.Calle = dgvBorrar.SelectedCells[2].Value.ToString();
            gestionCliente.Cliente.Poblacion = dgvBorrar.SelectedCells[3].Value.ToString();
            gestionCliente.Cliente.Cp = cpCliente;
            gestionCliente.Cliente.Provincia = dgvBorrar.SelectedCells[5].Value.ToString();
        }
        private void Consultar(object o, object e)
        {
            string sql = "";
            sql = "select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, provincia as Provincia from cliente where  1 = 1";
            dgvBorrar.Columns[0].Width = 170;
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
            dgvBorrar.DataSource = ConexionBBDD.ConsultaTabla(sql);
        }
        private void FrmConsultaMiembros_Load(object sender, EventArgs e)
        {
            dgvBorrar.DataSource = ConexionBBDD.ConsultaTabla("select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, " +
                "provincia as Provincia from cliente");
            foreach (Control control in panelBorrar.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.TextChanged += new EventHandler(Consultar);
                }
            }
        }
        private void dgvConsulta_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            MapearPresentacionNegocio();
            
            DialogResult resultado = MessageBox.Show("¿Seguro que quieres borrar el cliente?", "Borrar Cliente", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (resultado == DialogResult.Yes)
            {
                gestionCliente.Borrar();
                dgvBorrar.DataSource = ConexionBBDD.ConsultaTabla("select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, " +
                    "provincia as Provincia from cliente");
            }
        }

        private void btnResetear_Click(object sender, EventArgs e)
        {
            foreach (Control control in panelBorrar.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.Text = "";
                    dgvBorrar.DataSource = ConexionBBDD.ConsultaTabla("select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, " +
                    "provincia as Provincia from cliente");
                }  
            }
        }
    }
}
