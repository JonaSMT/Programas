using Facturacion.Formulario;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Facturacion
{
    public partial class Menu : Form
    {
        private Button btnActual;
        private Form formActivo;
        public Menu()
        {
            InitializeComponent();
        }

        private void AbrirFormHijo(Form formHijo, object btnSender)
        {
            if (formActivo != null)
            {
                formActivo.Close();
            }
            BotonActivo(btnSender);
            formActivo = formHijo;
            formHijo.TopLevel = false;
            formHijo.FormBorderStyle = FormBorderStyle.None;
            formHijo.Dock = DockStyle.Fill;
            this.panelEscritorio.Controls.Add(formHijo);
            this.panelEscritorio.Tag = formHijo;
            formHijo.BringToFront();
            formHijo.Show();
        }

        private void BotonActivo(object btnSender)
        {
            if(btnSender != null)
            {
                if (btnActual!=(Button)btnSender)
                {
                    DesactivarBoton();
                    Color color = ColorTranslator.FromHtml("#51517A");
                    btnActual = (Button)btnSender;
                    btnActual.BackColor = color;
                    btnActual.ForeColor = Color.White;
                    btnActual.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
                }
            }
        }

        private void DesactivarBoton()
        {
            foreach (Control btnPrevio in panelMenu.Controls)
            {
                if (btnPrevio.GetType()== typeof(Button))
                {
                    btnPrevio.BackColor = ColorTranslator.FromHtml("#33334C");
                    btnPrevio.ForeColor = Color.Gainsboro;
                    btnPrevio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
                }
            }
        }

        private void btnCrear_Click(object sender, EventArgs e)
        {
            AbrirFormHijo(new FrmAnyadir(), sender);
        }

        private void btnConsulta_Click(object sender, EventArgs e)
        {
            AbrirFormHijo(new FrmConsulta(), sender);
        }

        private void btnBorrar_Click(object sender, EventArgs e)
        {
            AbrirFormHijo(new FrmBorrar(), sender);
        }

        private void butModificar_Click(object sender, EventArgs e)
        {
            AbrirFormHijo(new FrmModificar(), sender);
        }

        private void btnConsultarClientes_Click(object sender, EventArgs e)
        {
            AbrirFormHijo(new FrmConsultaClientes(), sender);
        }

        private void btnBorrarCliente_Click(object sender, EventArgs e)
        {
            AbrirFormHijo(new FrmBorrarCliente(), sender);
        }

        private void btnModificarCliente_Click(object sender, EventArgs e)
        {
            AbrirFormHijo(new FrmModificarCliente(), sender);
        }
    }
}
