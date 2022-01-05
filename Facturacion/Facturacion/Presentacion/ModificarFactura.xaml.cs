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
using NpgsqlTypes;
using System.Collections.Generic;
using System.IO;
using System.Text.RegularExpressions;

namespace Facturacion.Presentacion
{
    /// <summary>
    /// Lógica de interacción para ModificarFactura.xaml
    /// </summary>
    public partial class ModificarFactura : Window
    {
        ConexionBBDD conexionBBDD = null;
        BackgroundWorker worker = null;
        BackgroundWorker worker2 = null;
        BackgroundWorker worker3 = null;
        BackgroundWorker worker4 = null;
        BackgroundWorker worker5 = null;
        NpgsqlDataReader reader = null;
        Localidad localidad = new Localidad();
        Propietario propietario = new Propietario();
        Cliente cliente = new Cliente();
        Factura factura = new Factura();
        List<string> listaDescricion = new List<string>();
        List<float> listaCantidad = new List<float>();
        List<float> listaPrecio = new List<float>();
        List<float> listaImporte = new List<float>();
        TextBox textBox;
        int contador = 0;

        public ModificarFactura()
        {
            InitializeComponent();

            conexionBBDD = new ConexionBBDD();
            conexionBBDD.ConectarBBDD();
            worker = new BackgroundWorker();
            worker2 = new BackgroundWorker();
            worker3 = new BackgroundWorker();
            worker4 = new BackgroundWorker();
            worker5 = new BackgroundWorker();
            worker.WorkerReportsProgress = true;
            worker2.WorkerReportsProgress = true;
            worker3.WorkerReportsProgress = true;
            worker4.WorkerReportsProgress = true;
            worker5.WorkerReportsProgress = true;
            worker.DoWork += worker_DoWork;
            worker2.DoWork += worker_DoWork2;
            worker3.DoWork += worker_DoWork3;
            worker4.DoWork += worker_DoWork4;
            worker5.DoWork += worker_finalizado;
            worker3.RunWorkerAsync();
        }
        private void ComprobacionesRegex(string textoComprobar, string patron, string mensajeError)
        {
            if (!Regex.Match(textoComprobar, patron).Success)
            {
                MessageBox.Show(mensajeError);
                btnModificarFactura.IsEnabled = false;
            }
            else
            {
                btnModificarFactura.IsEnabled = true;
            }
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
            reader = conexionBBDD.DevolverSelectWhere("*", "factura", "id = '" + txtId.Text + "'", "", false);
            while (reader.Read())
            {
                contador++;
                anyadirFilaDescripcion(contador, reader[2].ToString());
                anyadirFila("gridCantidad" + contador, stackPanel3, reader[3].ToString());
                anyadirFila("gridPrecio" + contador, stackPanel4, reader[4].ToString());
                anyadirFila("gridImporte" + contador, stackPanel5, reader[5].ToString());
                txtSubtotal.Text = reader[6].ToString();
                txtIva.Text = reader[7].ToString();
                txtTotalIva.Text = reader[8].ToString();
                txtTotal.Text = reader[9].ToString();
            }
            reader.Close();
        }
        private void cargarCp(string cp, string poblacion, string provincia)
        {
            localidad.CodPostal = Convert.ToInt32(cp);
            localidad.Poblacion = poblacion;
            localidad.Provincia = provincia;
            conexionBBDD.ModificarRegistro(localidad, "localidad set codpostal = @CodPostal::Numeric", "provincia = @Provincia and poblacion = @Poblacion");
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
        public void MapearPresentacionNegocioFactura()
        {
            listaCantidad.Clear();
            listaDescricion.Clear();
            listaImporte.Clear();
            listaPrecio.Clear();
            factura.Id = Convert.ToInt32(txtId.Text);
            factura.Fecha = datePickerFechaFactura.Text;
            factura.Subtotal  = Convert.ToSingle(txtSubtotal.Text);
            factura.Iva = Convert.ToInt32(txtIva.Text);
            factura.TotalIva = Convert.ToSingle(txtTotalIva.Text);
            factura.Total = Convert.ToSingle(txtTotal.Text);
            factura.Dni = txtDni.Text.ToUpper();
            foreach (Grid grid in stackPanel2.Children.OfType<Grid>())
            {
                foreach (TextBox textBox in grid.Children.OfType<TextBox>())
                {
                    listaDescricion.Add(textBox.Text);
                }
            }
            foreach (Grid grid in stackPanel3.Children.OfType<Grid>())
            {

                foreach (TextBox textBox in grid.Children.OfType<TextBox>())
                {
                    if (textBox.Text == "")
                    {
                        textBox.Text = "0";
                    }
                    try
                    {
                        listaCantidad.Add(Convert.ToSingle(textBox.Text));
                    }
                    catch (FormatException ex)
                    {
                        mensajeError("No se pueden introucir letras o espacios en este campo");
                        textBox.Text = "0";
                    }
                }
            }
            foreach (Grid grid in stackPanel4.Children.OfType<Grid>())
            {
                foreach (TextBox textBox in grid.Children.OfType<TextBox>())
                {

                    if (textBox.Text == "")
                    {
                        textBox.Text = "0";
                    }
                    try
                    {
                        listaPrecio.Add(Convert.ToSingle(textBox.Text));
                    }
                    catch (FormatException ex)
                    {
                        mensajeError("No se pueden introucir letras o espacios en este campo");
                        textBox.Text = "0";
                    }
                }
            }
            foreach (Grid grid in stackPanel5.Children.OfType<Grid>())
            {

                foreach (TextBox textBox in grid.Children.OfType<TextBox>())
                {
                    if (textBox.Text == "")
                    {
                        textBox.Text = "0";
                    }
                    try
                    {
                        listaImporte.Add(Convert.ToSingle(textBox.Text));
                    }
                    catch (FormatException ex)
                    {
                        mensajeError("No se pueden introucir letras o espacios en este campo");
                        textBox.Text = "0";
                    }
                }
            }
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
                        reader.Close();
                    }
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
            ComprobacionesRegex(txtCP.Text, "^[0-9]{5}$", "El código postal debe contener 5 dígitos");
            cargarCp(txtCP.Text, comboMunicipio.Text, comboProvincia.Text);
        }

        private void btnGenerarPDF_Click(object sender, RoutedEventArgs e)
        {
            ComprobacionesRegex(txtDni.Text.ToUpper(), "^[0-9]{8}[A-Za-z]{1}$", "Debes introducir un DNI");
            bool encontrado = false;
            //MapearPresentacionNegocioPropietario();
            MapearPresentacionNegocioFactura();
            MapearPresentacionNegocioCliente();

            bool insertado = conexionBBDD.AnyadirBBDD(cliente, "cliente", "@NombreCliente, @Dni, @Calle, @Provincia, @Poblacion, @Cp::numeric");
            reader = conexionBBDD.DevolverSelectWhere("descripcion", "factura", "id = '" + txtId.Text + "'", "", false);
            List<String> lista = new List<String>();
            while (reader.Read())
            {
                lista.Add(reader[0].ToString());
            }
            reader.Close();

            for (int i = 0; i < listaDescricion.Count; i++)
            {
                foreach (string desc in lista)
                {
                    factura.Descripcion = listaDescricion[i];
                    factura.Cantidad = listaCantidad[i];
                    factura.Precio = listaPrecio[i];
                    factura.Importe = listaImporte[i];
                    conexionBBDD.ModificarRegistro(factura, "factura set fecha = @Fecha, descripcion = @Descripcion, cantidad = @Cantidad::numeric, precio = regexp_replace(@Precio, ',' , '.')::numeric, importe = regexp_replace(@Importe, ',', '.')::numeric, subtotal = regexp_replace(@Subtotal, ',', '.')::numeric, iva = @Iva::numeric, totaliva = regexp_replace(@TotalIva, ',', '.')::numeric, total = regexp_replace(@Total, ',', '.')::numeric, dni = @Dni", "id = @Id::numeric and descripcion = '" + desc + "'");
                }
            }
            
            if (!insertado)
                {
                    conexionBBDD.ModificarRegistro(cliente, "cliente set nombrecliente = @NombreCliente, calle = @Calle, provincia = @Provincia, poblacion = @Poblacion, cp = @Cp::numeric", "dni = @Dni");
                }
                if (!worker5.IsBusy)
                    worker5.RunWorkerAsync();
        }


        private void Grid_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            foreach (StackPanel panel in gridPrincipal.Children.OfType<StackPanel>())
            {
                if (panel.Name == "stackPanelCantidad" || panel.Name == "stackPanelImporte" || panel.Name == "stackPanelPrecio")
                {
                    panel.Width = Application.Current.MainWindow.Width / 6 * 0.7;
                }
                else
                {
                    panel.Width = Application.Current.MainWindow.Width / 6 * 1.2 - 10;
                }
            }
            scrollViewerDescripcion.Height = Application.Current.MainWindow.Height - 100;
            scrollViewerCantidad.Height = Application.Current.MainWindow.Height - 100;
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
                reader = conexionBBDD.DevolverSelectWhere("*", "cliente ", "dni like '%" + txtDni.Text.ToUpper() + "%'", "", false);
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
        private void anyadirFilaDescripcion(int contador, string texto)
        {
            Grid grid = new Grid();
            grid.Name = "gridDescripcion" + contador;
            grid.Margin = new Thickness(15, 20, 0, 0);
            ColumnDefinition col1 = new ColumnDefinition();
            col1.Width = new GridLength(50);
            ColumnDefinition col2 = new ColumnDefinition();
            grid.ColumnDefinitions.Add(col1);
            grid.ColumnDefinitions.Add(col2);
            RowDefinition row1 = new RowDefinition();
            grid.RowDefinitions.Add(row1);
            Button boton = new Button();
            boton.Name = "btnEliminar" + contador;
            boton.Width = 50;
            boton.Height = 21;
            System.Windows.HorizontalAlignment horizontalAlignment = HorizontalAlignment.Stretch;
            boton.Click += new RoutedEventHandler(btnEliminar_Click);
            boton.Content = "Eliminar";
            Grid.SetColumn(boton, 0);
            Grid.SetRow(boton, 0);
            TextBox textBox = new TextBox();
            textBox.Margin = new Thickness(10, 0, 0, 0);
            textBox.Text = texto;
            Grid.SetColumn(textBox, 1);
            Grid.SetRow(textBox, 0);
            grid.Children.Add(boton);
            grid.Children.Add(textBox);

            stackPanel2.Children.Add(grid);
        }
        private void anyadirFila(string nombreGrid, StackPanel stackPanel, string texto)
        {
            Grid grid = new Grid();
            grid.Name = nombreGrid;
            grid.Margin = new Thickness(15, 20, 0, 0);
            ColumnDefinition col1 = new ColumnDefinition();
            grid.ColumnDefinitions.Add(col1);
            RowDefinition row1 = new RowDefinition();
            grid.RowDefinitions.Add(row1);
            textBox = new TextBox();
            textBox.Margin = new Thickness(10, 0, 0, 0);
            textBox.Height = 21;
            textBox.Text = texto;
            textBox.SelectionChanged += new RoutedEventHandler(calcularSubtotal);
            textBox.SelectionChanged += new RoutedEventHandler(calcularImporte);
            Grid.SetColumn(textBox, 1);
            Grid.SetRow(textBox, 0);
            grid.Children.Add(textBox);

            stackPanel.Children.Add(grid);
        }

        private void btnAnyadirFila_Click(object sender, RoutedEventArgs e)
        {
            contador++;
            anyadirFilaDescripcion(contador, "");
            anyadirFila("gridCantidad" + contador, stackPanel3, "0");
            anyadirFila("gridPrecio" + contador, stackPanel4, "0");
            anyadirFila("gridImporte" + contador, stackPanel5, "0");
        }
        public void eliminarFila(StackPanel stackPanel, string conversion, string id)
        {
            foreach (Grid panel in stackPanel.Children.OfType<Grid>().ToList())
            {
                id = id.Replace("Descripcion", conversion);
                if (panel.Name == id)
                {
                    stackPanel.Children.Remove(panel);
                }
            }
        }
        private void btnEliminar_Click(object sender, RoutedEventArgs e)
        {
            string id = (((Button)sender).Parent as Grid).Name;
            foreach (Grid panel in stackPanel2.Children.OfType<Grid>().ToList())
            {
                if (panel.Name == id)
                {
                    stackPanel2.Children.Remove(panel);
                }
            }
            eliminarFila(stackPanel3, "Cantidad", id);
            eliminarFila(stackPanel4, "Precio", id);
            eliminarFila(stackPanel5, "Importe", id);
        }
        private void calcularImporte(object sender, RoutedEventArgs e)
        {
            MapearPresentacionNegocioFactura();
            int contador = 0;
            foreach (Grid grid in stackPanel5.Children.OfType<Grid>())
            {
                foreach (TextBox textBox in grid.Children.OfType<TextBox>())
                {
                    double resultado = Math.Round(Convert.ToSingle(listaPrecio[contador] * Convert.ToSingle(listaCantidad[contador])), 2);
                    textBox.Text = resultado.ToString();
                    contador++;
                }
            }
            double totaliva = Math.Round(Convert.ToSingle(txtSubtotal.Text) * Convert.ToSingle("0," + txtIva.Text), 2);
            txtTotalIva.Text = totaliva.ToString();
            double total = Math.Round(totaliva + Convert.ToSingle(txtSubtotal.Text), 2);
            txtTotal.Text = total.ToString();
        }
        private void calcularSubtotal(object sender, RoutedEventArgs e)
        {
            double resultado = 0;
            foreach (Grid grid in stackPanel5.Children.OfType<Grid>())
            {
                foreach (TextBox textBox in grid.Children.OfType<TextBox>())
                {
                    Double.TryParse(textBox.Text, out double importe);
                    resultado += Math.Round(importe, 2);
                    txtSubtotal.Text = resultado.ToString();
                }
            }
        }
        private void mensajeError(string mensaje)
        {
            MessageBox.Show(mensaje, "Error al introducir datos", MessageBoxButton.OK, MessageBoxImage.Error);
        }
        void worker_finalizado(object sender, DoWorkEventArgs e)
        {

        }
        private void txtDni_LostFocus(object sender, RoutedEventArgs e)
        {
            ComprobacionesRegex(txtDni.Text.ToUpper(), "^[0-9]{8}[A-Z]{1}$", "DNI introducido no válido");
        }
    }
}
