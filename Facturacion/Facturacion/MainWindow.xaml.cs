using Facturacion.BBDD;
using Facturacion.Presentacion;
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
        public MainWindow()
        {
            InitializeComponent();
            ConexionBBDD.CargarLocalidad();
        }

        private void menuItemAnyadirFactura_Click(object sender, RoutedEventArgs e)
        {
            if (anyadirFactura == null)
                anyadirFactura = new AnyadirFactura();
            anyadirFactura.Width = wrpCuerpoPrincipal.Width;
            anyadirFactura.Height = wrpCuerpoPrincipal.Height;
            wrpCuerpoPrincipal.Children.Add(anyadirFactura);
        }
    }
}
