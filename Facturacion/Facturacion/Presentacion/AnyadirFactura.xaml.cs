using Facturacion.BBDD;
using Facturacion.Entidades;
using Npgsql;
using System;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using NpgsqlTypes;

namespace Facturacion.Presentacion
{
    /// <summary>
    /// Lógica de interacción para AnyadirFactura.xaml
    /// </summary>
    public partial class AnyadirFactura : UserControl
    {
        ConexionBBDD conexionBBDD = null;
        BackgroundWorker worker = null;
        BackgroundWorker worker2 = null;
        NpgsqlDataReader reader = null;
        Localidad localidad = null;
        Propietario propietario = new Propietario();

        public AnyadirFactura()
        {
            InitializeComponent();
            conexionBBDD = new ConexionBBDD();
            conexionBBDD.ConectarBBDD();
            worker = new BackgroundWorker();
            worker2 = new BackgroundWorker();
            worker.WorkerReportsProgress = true;
            worker2.WorkerReportsProgress = true;
            worker.DoWork += worker_DoWork;
            worker2.DoWork += worker_DoWork2;
            worker.RunWorkerAsync();
            
        }
        public void MapearPresentacionNegocioPropietario()
        {
            Int32.TryParse(txtCP.Text, out int cpPropietario);
            Int32.TryParse(txtTlf.Text, out int tlf);
            propietario.Nombre = txtPropietario.Text;
            propietario.Nif = txtNif.Text.ToUpper();
            propietario.Calle = txtCalle.Text;
            propietario.Poblacion = comboMunicipio.Text;
            propietario.Cp = cpPropietario;
            propietario.Provincia = comboProvincia.Text;
            propietario.Correo = txtCorreo.Text;
            propietario.Telefono = tlf;
        }
        void worker_DoWork(object sender, DoWorkEventArgs e)
        {
            this.Dispatcher.Invoke(() =>
            {
                reader = conexionBBDD.DevolverSelect("distinct provincia", "localidad", "provincia");
                while (reader.Read())
                {
                    comboProvincia.Items.Add(reader[0]);
                }
                reader.Close();
            });

        }

        private void comboProvincia_LostFocus(object sender, RoutedEventArgs e)
        {
            worker2.RunWorkerAsync();
        }

        void worker_DoWork2(object sender, DoWorkEventArgs e)
        {
            this.Dispatcher.Invoke(() =>
            {
                comboMunicipio.Items.Clear();
                if (comboProvincia.SelectedValue != null)
                    if (comboProvincia.SelectedValue.ToString().Length > 3)
                    {
                        reader = conexionBBDD.DevolverSelectWhere("distinct poblacion", "localidad ", "where provincia like '%" + comboProvincia.SelectedValue + "%'", "poblacion", true);

                        while (reader.Read())
                        {
                            comboMunicipio.Items.Add(reader[0]);
                        }
                    }
                reader.Close();
            });
        }

        private void comboMunicipio_LostFocus(object sender, RoutedEventArgs e)
        {
            reader = conexionBBDD.DevolverSelectWhere("codpostal", "localidad ", "where provincia = '" + comboProvincia.Text + "' and poblacion = '" + comboMunicipio.Text + "'", "", false);
            while (reader.Read())
            {
                txtCP.Text = "0" + reader[0].ToString();
            }
            
            reader.Close();
        }

        private void txtCP_LostFocus(object sender, RoutedEventArgs e)
        {
            if (localidad == null)
                localidad = new Localidad(Convert.ToInt32(txtCP.Text), comboMunicipio.Text, comboProvincia.Text);
            else
            {
                localidad.CodigoPostal = Convert.ToInt32(txtCP.Text);
                localidad.Poblacion = comboMunicipio.Text;
                localidad.Provincia = comboProvincia.Text;
            }
            string[] arrayParametros = { "poblacion", "provincia", "codpostal" };
            NpgsqlDbType[] arrayTipos = { NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Numeric };
            string[] arrayPropiedades = { "Poblacion", "Provincia", "CodigoPostal" };
            conexionBBDD.ModificarRegistro(localidad, arrayParametros.ToList(), arrayTipos.ToList(), arrayPropiedades.ToList(), "localidad set codpostal = @codpostal", "provincia = @provincia and poblacion = @poblacion"); 
            
        }

        private void btnGenerarPDF_Click(object sender, RoutedEventArgs e)
        {
            MapearPresentacionNegocioPropietario();
            string[] arrayParametros = { "nombre", "nif", "calle" , "provincia", "poblacion", "cp", "telefono", "correo"};
            NpgsqlDbType[] arrayTipos = { NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Numeric, NpgsqlDbType.Numeric, NpgsqlDbType.Varchar };
            string[] arrayPropiedades = { "Nombre", "Nif", "Calle", "Provincia", "Poblacion", "Cp", "Telefono", "Correo" };
            conexionBBDD.AnyadirBBDD(propietario, arrayParametros.ToList(), arrayTipos.ToList(), arrayPropiedades.ToList(), "propietario", "@nombre, @nif, @calle, @provincia, @poblacion, @cp, @telefono, @correo");
        }
    }
}
