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
        BackgroundWorker worker3 = null;
        BackgroundWorker worker4 = null;
        NpgsqlDataReader reader = null;
        Localidad localidad = new Localidad();
        Propietario propietario = new Propietario();
        Cliente cliente = new Cliente();

        public AnyadirFactura()
        {
            InitializeComponent();

            conexionBBDD = new ConexionBBDD();
            conexionBBDD.ConectarBBDD();
            worker = new BackgroundWorker();
            worker2 = new BackgroundWorker();
            worker3 = new BackgroundWorker();
            worker4 = new BackgroundWorker();
            worker.WorkerReportsProgress = true;
            worker2.WorkerReportsProgress = true;
            worker3.WorkerReportsProgress = true;
            worker4.WorkerReportsProgress = true;
            worker.DoWork += worker_DoWork;
            worker2.DoWork += worker_DoWork2;
            worker3.DoWork += worker_DoWork3;
            worker4.DoWork += worker_DoWork4;
            worker.RunWorkerAsync();
            worker3.RunWorkerAsync();

        }
        private void grid_Loaded(object sender, RoutedEventArgs e)
        {
            reader = conexionBBDD.DevolverSelect("*", "propietario", "ASC", false);
            datePickerFechaFactura.Text = DateTime.Now.Day + "/" + DateTime.Now.Month + "/" + DateTime.Now.Year;
            while (reader.Read())
            {
                
                txtNombre.Text = reader["nombre"].ToString();
                txtNif.Text = reader["nif"].ToString();
                txtCalle.Text = reader["calle"].ToString();
                comboProvincia.Text = reader["provincia"].ToString();
                comboMunicipio.Text = reader["poblacion"].ToString();
                txtCP.Text = reader["cp"].ToString();
                txtTlf.Text = reader["telefono"].ToString();
                txtCorreo.Text = reader["correo"].ToString();
            }
            reader.Close();
            
        }
        private void cargarCp(string cp, string poblacion, string provincia)
        {
            localidad.CodigoPostal = Convert.ToInt32(cp);
            localidad.Poblacion = poblacion;
            localidad.Provincia = provincia;
            string[] arrayParametros = { "poblacion", "provincia", "codpostal" };
            NpgsqlDbType[] arrayTipos = { NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Numeric };
            string[] arrayPropiedades = { "Poblacion", "Provincia", "CodigoPostal" };
            conexionBBDD.ModificarRegistro(localidad, arrayParametros.ToList(), arrayTipos.ToList(), arrayPropiedades.ToList(), "localidad set codpostal = @codpostal", "provincia = @provincia and poblacion = @poblacion");
        }
        private void rellenarCp(TextBox txtCp, string poblacion, string provincia)
        {
            reader = conexionBBDD.DevolverSelectWhere("codpostal", "localidad ", " provincia = '" + provincia + "' and poblacion = '" + poblacion + "'", "", false);
            while (reader.Read())
            {
                txtCp.Text = "0" + reader[0].ToString();
            }

            reader.Close();
        }
        public void MapearPresentacionNegocioPropietario()
        {
            Int32.TryParse(txtCP.Text, out int cpPropietario);
            Int32.TryParse(txtTlf.Text, out int tlf);
            propietario.Nombre = txtNombre.Text;
            propietario.Nif = txtNif.Text.ToUpper();
            propietario.Calle = txtCalle.Text;
            propietario.Poblacion = comboMunicipio.Text;
            propietario.Cp = cpPropietario;
            propietario.Provincia = comboProvincia.Text;
            propietario.Correo = txtCorreo.Text;
            propietario.Telefono = tlf;
        }
        public void MapearPresentacionNegocioCliente()
        {
            Int32.TryParse(txtCpCliente.Text, out int cpCliente);
            cliente.NombreCliente = txtCliente.Text;
            cliente.Dni = txtDni.Text.ToUpper();
            cliente.Calle = txtCalleCliente.Text;
            cliente.Poblacion = comboMunicipioCliente.Text;
            cliente.Cp = cpCliente;
            cliente.Provincia = comboProvinciaCliente.Text;
        }
        void worker_DoWork(object sender, DoWorkEventArgs e)
        {
            this.Dispatcher.Invoke(() =>
            {
                reader = conexionBBDD.DevolverSelect("distinct provincia", "localidad", "provincia ASC", true);
                while (reader.Read())
                {
                    comboProvincia.Items.Add(reader[0]);
                }
                reader.Close();
            });

        }
        void worker_DoWork3(object sender, DoWorkEventArgs e)
        {
            this.Dispatcher.Invoke(() =>
            {
                reader = conexionBBDD.DevolverSelect("distinct provincia", "localidad", " provincia ASC", true);
                while (reader.Read())
                {
                    comboProvinciaCliente.Items.Add(reader[0]);
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
                        reader = conexionBBDD.DevolverSelectWhere("distinct poblacion", "localidad ", " provincia like '%" + comboProvincia.SelectedValue + "%'", "poblacion", true);

                        while (reader.Read())
                        {
                            comboMunicipio.Items.Add(reader[0]);
                        }
                    }
                reader.Close();
            });
        }
        void worker_DoWork4(object sender, DoWorkEventArgs e)
        {
            this.Dispatcher.Invoke(() =>
            {
                comboMunicipioCliente.Items.Clear();
                if (comboProvinciaCliente.SelectedValue != null)
                    if (comboProvinciaCliente.SelectedValue.ToString().Length > 3)
                    {
                        reader = conexionBBDD.DevolverSelectWhere("distinct poblacion", "localidad ", " provincia like '%" + comboProvinciaCliente.SelectedValue + "%'", "poblacion", true);

                        while (reader.Read())
                        {
                            comboMunicipioCliente.Items.Add(reader[0]);
                        }
                    }
                reader.Close();
            });
        }

        private void comboMunicipio_LostFocus(object sender, RoutedEventArgs e)
        {
            rellenarCp(txtCP, comboMunicipio.Text, comboProvincia.Text);
        }

        private void txtCP_LostFocus(object sender, RoutedEventArgs e)
        {
            cargarCp(txtCP.Text, comboMunicipio.Text, comboProvincia.Text);
        }

        private void btnGenerarPDF_Click(object sender, RoutedEventArgs e)
        {
            //MapearPresentacionNegocioPropietario();
            MapearPresentacionNegocioCliente();
            //string[] arrayParametros = { "nombre", "nif", "calle", "provincia", "poblacion", "cp", "telefono", "correo" };
            //NpgsqlDbType[] arrayTipos = { NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Numeric, NpgsqlDbType.Numeric, NpgsqlDbType.Varchar };
            //string[] arrayPropiedades = { "Nombre", "Nif", "Calle", "Provincia", "Poblacion", "Cp", "Telefono", "Correo" };
            string[] arrayParametros2 = { "nombrecliente", "dni", "calle", "provincia", "poblacion", "cp" };
            NpgsqlDbType[] arrayTipos2 = { NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Numeric };
            string[] arrayPropiedades2 = { "NombreCliente", "Dni", "Calle", "Provincia", "Poblacion", "Cp" };
            //conexionBBDD.AnyadirBBDD(propietario, arrayParametros.ToList(), arrayTipos.ToList(), arrayPropiedades.ToList(), "propietario", "@nombre, @nif, @calle, @provincia, @poblacion, @cp, @telefono, @correo");
            conexionBBDD.AnyadirBBDD(cliente, arrayParametros2.ToList(), arrayTipos2.ToList(), arrayPropiedades2.ToList(), "cliente", "@nombrecliente, @dni, @calle, @provincia, @poblacion, @cp");
        }


        private void Grid_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            foreach (StackPanel panel in grid.Children.OfType<StackPanel>())
            {
                panel.MinWidth = Application.Current.MainWindow.Width / 7 - 10;
            }
        }


        private void comboProvinciaCliente_LostFocus(object sender, RoutedEventArgs e)
        {
            worker4.RunWorkerAsync();
        }

        private void txtCpCliente_LostFocus(object sender, RoutedEventArgs e)
        {
            cargarCp(txtCpCliente.Text, comboMunicipioCliente.Text, comboProvinciaCliente.Text);
        }

        private void comboMunicipioCliente_LostFocus(object sender, RoutedEventArgs e)
        {
            rellenarCp(txtCpCliente, comboMunicipioCliente.Text, comboProvinciaCliente.Text);
        }

        private void txtDni_SelectionChanged(object sender, RoutedEventArgs e)
        {
            if (txtDni.Text != "")
            {
                reader = conexionBBDD.DevolverSelectWhere("*", "cliente ", "dni like '%" + txtDni.Text + "%'", "", false);
                while (reader.Read())
                {
                    if (txtDni.Text.ToUpper() == reader["dni"].ToString().ToUpper())
                    {
                        txtCliente.Text = reader["nombrecliente"].ToString();
                        txtCalleCliente.Text = reader["calle"].ToString();
                        comboProvinciaCliente.Text = reader["provincia"].ToString();
                        comboMunicipioCliente.Text = reader["poblacion"].ToString();
                        txtCpCliente.Text = reader["cp"].ToString();
                    }
                }
                reader.Close();
            }
        }

        
    }
}
