using Facturacion.BBDD;
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
    public partial class FrmConsultaClientes : Form
    {
        public FrmConsultaClientes()
        {
            InitializeComponent();
        }
        private void Consultar(object o, object e)
        {
            string sql = "";
            sql = "select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, provincia as Provincia from cliente where  1 = 1";
            dgvConsulta.Columns[0].Width = 170;
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
            dgvConsulta.DataSource = ConexionBBDD.ConsultaTabla(sql);
        }
        private void FrmConsultaMiembros_Load(object sender, EventArgs e)
        {
            dgvConsulta.DataSource = ConexionBBDD.ConsultaTabla("select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, " +
                "provincia as Provincia from cliente");
            foreach (Control control in panelConsulta.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.TextChanged += new EventHandler(Consultar);
                }
            }
        }
        private void dgvConsulta_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtNombreCliente.Text = dgvConsulta.SelectedCells[0].Value.ToString();
            txtDni.Text = dgvConsulta.SelectedCells[1].Value.ToString();
            txtCalleCliente.Text = dgvConsulta.SelectedCells[2].Value.ToString();
            txtPoblacionCliente.Text = dgvConsulta.SelectedCells[3].Value.ToString();
            txtCpCliente.Text = dgvConsulta.SelectedCells[4].Value.ToString();
            txtProvinciaCliente.Text = dgvConsulta.SelectedCells[5].Value.ToString();
        }

        private void btnResetear_Click(object sender, EventArgs e)
        {
            foreach (Control control in panelConsulta.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.Text = "";
                    dgvConsulta.DataSource = ConexionBBDD.ConsultaTabla("select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, LPAD(cp,5,'0') as CP, " +
                    "provincia as Provincia from cliente");
                }  
            }
        }
    }
}
