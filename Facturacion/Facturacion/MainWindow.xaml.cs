using Facturacion.BBDD;
using Facturacion.Presentacion;
using Npgsql;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
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

namespace Facturacion
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        AnyadirFactura? anyadirFactura = default;
        ConsultarFactura? consultarFactura = default;
        ConexionBBDD conexionBBDD = new ConexionBBDD();
        public MainWindow()
        {
            InitializeComponent();
            conexionBBDD.ConectarBBDD();
            //conexionBBDD.CargarLocalidad();
        }

        private void menuItemAnyadirFactura_Click(object sender, RoutedEventArgs e)
        {
            if (anyadirFactura == null)
                anyadirFactura = new AnyadirFactura();
            wrpCuerpoPrincipal.Children.Add(anyadirFactura);
        }
        private void menuItemConsultarFacturas_Click(object sender, RoutedEventArgs e)
        {
            wrpCuerpoPrincipal.Children.Remove(anyadirFactura);
            if (consultarFactura == null)
                consultarFactura = new ConsultarFactura();
            wrpCuerpoPrincipal.Children.Add(consultarFactura);
        }
        private void gridPrincipal_Loaded(object sender, RoutedEventArgs e)
        {

        }
        private void Window_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            if (WindowState == WindowState.Maximized && anyadirFactura != null)
            {
                Application.Current.MainWindow.Width = 1920;
                Application.Current.MainWindow.Height = 1080;
                anyadirFactura.Width = Application.Current.MainWindow.Width - 20;
                anyadirFactura.Height = Application.Current.MainWindow.Height - 20;
            }
            if (anyadirFactura != null)
            {
                anyadirFactura.Width = Application.Current.MainWindow.Width;
                anyadirFactura.Height = Application.Current.MainWindow.Height;
            }
        }
    }
}
