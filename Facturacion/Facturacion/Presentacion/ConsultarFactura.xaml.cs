using Facturacion.BBDD;
using Facturacion.Entidades;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
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

namespace Facturacion.Presentacion
{
    /// <summary>
    /// Lógica de interacción para ConsultarFactura.xaml
    /// </summary>
    public partial class ConsultarFactura : UserControl
    {
        ConexionBBDD conexionBBDD = new ConexionBBDD();
        List<ClienteFactura> clienteFacturas = new List<ClienteFactura>();
        ModificarFactura ModificarFactura { get; set; }
        public ConsultarFactura()
        {
            InitializeComponent();
        }

        private void Grid_Loaded(object sender, RoutedEventArgs e)
        {
            NpgsqlDataAdapter da = new NpgsqlDataAdapter("select distinct factura.id, cliente.nombrecliente, cliente.dni, factura.fecha, factura.total from cliente, factura where cliente.dni = factura.dni", conexionBBDD.DevolverConectarBBDD());
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTableCollection collection = ds.Tables;
            DataTable table = collection[0];

           
            foreach (DataRow row in table.Rows)
            {
                var dato = new ClienteFactura(Convert.ToInt32(row["id"].ToString()), row["nombreCliente"].ToString(), row["Dni"].ToString(), row["fecha"].ToString(), Convert.ToSingle(row["total"].ToString()));
                clienteFacturas.Add(dato);               
            }
            dgFacturas.ItemsSource = clienteFacturas;
        }

        private void MenuItemModificar_Click(object sender, RoutedEventArgs e)
        {
            ModificarFactura = new ModificarFactura();
            ModificarFactura.txtDni.Text = (dgFacturas.SelectedCells[2].Column.GetCellContent(dgFacturas.SelectedCells[2].Item) as TextBlock).Text;
            ModificarFactura.txtId.Text = (dgFacturas.SelectedCells[0].Column.GetCellContent(dgFacturas.SelectedCells[0].Item) as TextBlock).Text;
            ModificarFactura.Show();
        }
    }
}
