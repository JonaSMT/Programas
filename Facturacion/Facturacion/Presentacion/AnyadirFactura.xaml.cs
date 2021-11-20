using Facturacion.BBDD;
using Facturacion.Entidades;
using Npgsql;
using System;
using System.Collections.Generic;
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
            conexionBBDD.ModificarRegistro(localidad);
            
        }
    }
}
