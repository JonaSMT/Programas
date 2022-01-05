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
using iText.Kernel.Pdf;
using iText.Layout;
using iText.Kernel.Geom;
using iText.Kernel.Font;
using iText.IO.Font.Constants;
using iText.IO.Image;
using iText.Layout.Element;
using Image = iText.Layout.Element.Image;
using System.Diagnostics;
using iText.Layout.Properties;
using TextAlignment = iText.Layout.Properties.TextAlignment;
using iText.Kernel.Events;
using iText.Kernel.Pdf.Canvas;
using System.Text.RegularExpressions;

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

        public AnyadirFactura()
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
            worker5.DoWork += worker_crearPDF;
            worker5.DoWork += worker_finalizado;
            worker.RunWorkerAsync();
            worker3.RunWorkerAsync();
        }
        private void ComprobacionesRegex(string textoComprobar, string patron, string mensajeError)
        {
            if (!Regex.Match(textoComprobar, patron).Success)
            {
                MessageBox.Show(mensajeError);
                btnCrearFactura.IsEnabled = false;
            }
            else
            {
                btnCrearFactura.IsEnabled = true;
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
                foreach(TextBox textBox in grid.Children.OfType<TextBox>())
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
                    }catch(FormatException ex)
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
                    }catch (FormatException ex)
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
                    }catch(FormatException ex)
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
            ComprobacionesRegex(txtCP.Text, "^[0-9]{5}$", "El código postal debe contener 5 dígitos");
            cargarCp(txtCP.Text, comboMunicipio.Text, comboProvincia.Text);
        }

        private void btnGenerarPDF_Click(object sender, RoutedEventArgs e)
        {
            ComprobacionesRegex(txtDni.Text.ToUpper(), "^[0-9]{8}[A-Za-z]{1}$", "Debes introducir un DNI");
            bool encontrado = false;
            //MapearPresentacionNegocioPropietario();
            //string[] arrayParametros = { "nombre", "nif", "calle", "provincia", "poblacion", "cp", "telefono", "correo" };
            //NpgsqlDbType[] arrayTipos = { NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Varchar, NpgsqlDbType.Numeric, NpgsqlDbType.Numeric, NpgsqlDbType.Varchar };
            //string[] arrayPropiedades = { "Nombre", "Nif", "Calle", "Provincia", "Poblacion", "Cp", "Telefono", "Correo" };
            //conexionBBDD.AnyadirBBDD(propietario, arrayParametros.ToList(), arrayTipos.ToList(), arrayPropiedades.ToList(), "propietario", "@nombre, @nif, @calle, @provincia, @poblacion, @cp, @telefono, @correo");
            MapearPresentacionNegocioCliente();
            MapearPresentacionNegocioFactura();
            NpgsqlDataReader reader = conexionBBDD.DevolverSelectWhere(factura, "id", "factura", "id = @id", "ASC", false);
            while (!reader.IsClosed && reader.Read())
            {
                if (txtId.Text == reader[0].ToString())
                {
                    encontrado = true;
                    mensajeError("Ya existe una factura con ese id, utiliza otro distinto");
                    reader.Close();
                }
            }
            if (!reader.IsClosed)
            {
                reader.Close();
            }
            
            if (!encontrado)
            {
                bool insertado = conexionBBDD.AnyadirBBDD(cliente, "cliente", "@NombreCliente, @Dni, @Calle, @Provincia, @Poblacion, @Cp::numeric");
                for (int i = 0; i < listaDescricion.Count; i++)
                {
                    factura.Descripcion = listaDescricion[i];
                    factura.Cantidad = listaCantidad[i];
                    factura.Precio = listaPrecio[i];
                    factura.Importe = listaImporte[i];
                    conexionBBDD.AnyadirBBDD(factura, "factura", "@Id, @Fecha, @Descripcion, @Cantidad, @Precio, @Importe, @Subtotal, @Iva, @TotalIva, @Total, @Dni");
                }
                if (!insertado)
                {
                    conexionBBDD.ModificarRegistro(cliente, "cliente set nombrecliente = @NombreCliente, calle = @Calle, provincia = @Provincia, poblacion = @Poblacion, cp = @Cp::numeric", "dni = @Dni");
                }
                if (!worker5.IsBusy)
                    worker5.RunWorkerAsync();
            }
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
        private void anyadirFilaDescripcion(int contador)
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
            System.Windows.HorizontalAlignment horizontalAlignment = HorizontalAlignment;
            boton.Click += new RoutedEventHandler(btnEliminar_Click);
            boton.Content = "Eliminar";
            Grid.SetColumn(boton, 0);
            Grid.SetRow(boton, 0);
            TextBox textBox = new TextBox();
            textBox.Margin = new Thickness(10, 0, 0, 0);
            Grid.SetColumn(textBox, 1);
            Grid.SetRow(textBox, 0);
            grid.Children.Add(boton);
            grid.Children.Add(textBox);

            stackPanel2.Children.Add(grid);
        }
        private void anyadirFila(string nombreGrid, StackPanel stackPanel)
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
            textBox.Text = "0";
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
            anyadirFilaDescripcion(contador);
            anyadirFila("gridCantidad" + contador, stackPanel3);
            anyadirFila("gridPrecio" + contador, stackPanel4);
            anyadirFila("gridImporte" + contador, stackPanel5);
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
                    double resultado = Math.Round(Convert.ToSingle(listaCantidad[contador]) * Convert.ToSingle(listaPrecio[contador]), 2);
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
        void worker_crearPDF(object sender, DoWorkEventArgs e)
        {  
            crearPDF();
        }
        void worker_finalizado(object sender, DoWorkEventArgs e)
        {

        }
        private void crearPDF()
        {
            this.Dispatcher.Invoke(() =>
            {
                MapearPresentacionNegocioPropietario();
                Directory.CreateDirectory(Environment.GetFolderPath(Environment.SpecialFolder.Desktop) + @"\facturas");
                string nombreFichero = Environment.GetFolderPath(Environment.SpecialFolder.Desktop) + @"\facturas\"+txtCliente.Text.Replace(" ", "-") + "_" + datePickerFechaFactura.Text.Replace("/", "-") + "_" + txtId.Text + ".pdf";
                PdfWriter pdfWriter = new PdfWriter(nombreFichero);
                PdfDocument pdf = new PdfDocument(pdfWriter);
                Document documento = new Document(pdf, PageSize.A4);
                EventoPagina evento = new EventoPagina(documento, factura);
                pdf.AddEventHandler(PdfDocumentEvent.END_PAGE, evento);
                documento.SetMargins(0, 20, 55, 20);
                PdfFont fontColumnas = PdfFontFactory.CreateFont(StandardFonts.HELVETICA_BOLD);
                PdfFont fontContenido = PdfFontFactory.CreateFont(StandardFonts.HELVETICA);
                NpgsqlDataReader reader = conexionBBDD.DevolverSelectWhere(propietario, "*", "propietario", "nif = @Nif", "ASC", false);
                while (reader.Read())
                {
                    documento.Add(new Image(ImageDataFactory.Create(@"..\..\..\Recursos\LogoBien.png"))
                    .SetRelativePosition(370, 50, 0, 500));
                    documento.Add(new Paragraph(reader["nombre"].ToString()).SetBold().SetFont(fontContenido).SetFontSize(10));
                    documento.Add(new Paragraph("NIF: " + reader["nif"].ToString()).SetFont(fontContenido).SetFixedLeading(0).SetFontSize(10));
                    documento.Add(new Paragraph("Calle: " + reader["calle"].ToString()).SetFont(fontContenido).SetFontSize(10));
                    documento.Add(new Paragraph("Población: " + reader["poblacion"].ToString() + ", " + reader["cp"].ToString() + " "
                        + "(" + reader["provincia"].ToString() + ")").SetFont(fontContenido)
                        .SetFixedLeading(0).SetFontSize(10));
                    documento.Add(new Paragraph("Teléfono: " + reader["telefono"].ToString()).SetFont(fontContenido).SetFontSize(10));
                    documento.Add(new Paragraph("Correo: " + reader["correo"].ToString()).SetFont(fontContenido).SetFixedLeading(0).SetFontSize(10));
                }
                this.reader.Close();
                documento.Add(new Paragraph("Fecha: " + datePickerFechaFactura.Text).SetRelativePosition(370, 0, 0, 30).SetFontSize(10));
                documento.Add(new Paragraph("Nº Factura: " + txtId.Text).SetRelativePosition(370, 0, 0, 30).SetFontSize(10).SetFixedLeading(0));
                documento.Add(new Paragraph("FACTURAR A: ").SetBold().SetFont(fontContenido).SetFontSize(12).SetFixedLeading(0));

                NpgsqlDataReader reader2 = conexionBBDD.DevolverSelectWhere(cliente, "*", "cliente", "dni = @Dni", "ASC", false);
                while (reader2.Read())
                {
                    documento.Add(new Paragraph("Cliente: " + reader2["nombrecliente"].ToString()).SetFont(fontContenido).SetFontSize(10));
                    documento.Add(new Paragraph("DNI: " + reader2["dni"].ToString()).SetFont(fontContenido).SetFixedLeading(0).SetFontSize(10));
                    documento.Add(new Paragraph("Calle: " + reader2["calle"].ToString()).SetFont(fontContenido).SetFontSize(10));
                    documento.Add(new Paragraph("Población: " + reader2["poblacion"].ToString() + ", " + reader2["cp"].ToString()).SetFont(fontContenido)
                        .SetFixedLeading(0).SetFontSize(10));
                    documento.Add(new Paragraph("Provincia: " + reader2["provincia"].ToString()).SetFont(fontContenido)).SetFontSize(10);
                }
                reader2.Close();
                documento.Add(new Paragraph(""));

                string[] columnas = { "Descripción", "Cantidad", "Precio", "Importe" };

                float[] tamanyos = { 7, 3, 3, 3 };
                float[] tamanyos2 = { 2, 2 };

                Table tabla = new Table(UnitValue.CreatePercentArray(tamanyos));
                tabla.SetWidth(UnitValue.CreatePercentValue(100));
                

                foreach (string columna in columnas)
                {
                    tabla.AddHeaderCell(new Cell().Add(new Paragraph(columna).SetFont(fontColumnas).SetTextAlignment(TextAlignment.CENTER)));
                }
                NpgsqlDataReader reader3 = conexionBBDD.DevolverSelectWhere(factura, "*", "factura", "id = @Id::numeric", "cantidad ASC", true);
                while (reader3.Read())
                {
                    tabla.AddCell(new Cell().Add(new Paragraph(reader3["descripcion"].ToString()).SetFont(fontContenido)));
                    tabla.AddCell(new Cell().Add(new Paragraph(reader3["cantidad"].ToString()).SetFont(fontContenido)).SetTextAlignment(TextAlignment.RIGHT));
                    tabla.AddCell(new Cell().Add(new Paragraph(reader3["precio"].ToString() + " €").SetFont(fontContenido)).SetTextAlignment(TextAlignment.RIGHT));
                    tabla.AddCell(new Cell().Add(new Paragraph(reader3["importe"].ToString() + " €").SetFont(fontContenido)).SetTextAlignment(TextAlignment.RIGHT));
                }
                reader3.Close();
                
                
                documento.Add(tabla);
                documento.Add(new Paragraph(""));
                documento.Close();
                Process p = new Process();
                p.StartInfo = new ProcessStartInfo()
                {
                    CreateNoWindow = true,
                    Verb = "print",
                    FileName = "C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe",
                    Arguments = nombreFichero
                };
                p.Start();
            });
        }

        private void txtDni_LostFocus(object sender, RoutedEventArgs e)
        {
            ComprobacionesRegex(txtDni.Text.ToUpper(), "^[0-9]{8}[A-Z]{1}$", "DNI introducido no válido");
        }
    }
    class EventoPagina : IEventHandler
    {
        Document documento;
        Factura factura;
        ConexionBBDD conexionBBDD = new ConexionBBDD();
        public EventoPagina(Document doc, Factura factura)
        {
            documento = doc;
            this.factura = factura;
        }

        public void HandleEvent(Event @event)
        {
            PdfDocumentEvent docEvent = (PdfDocumentEvent) @event;
        PdfDocument pdfDoc = docEvent.GetDocument();
        PdfPage page = docEvent.GetPage();
        PdfCanvas canvas = new PdfCanvas(page.NewContentStreamBefore(), page.GetResources(), pdfDoc);   

        Table tablaNumeracion = this.crearTablaPie(docEvent, factura);
        Rectangle rectanguloPie = this.crearRectanguloPie(docEvent);
            iText.Layout.Canvas canvasPie = new iText.Layout.Canvas(canvas, pdfDoc, rectanguloPie);
        canvasPie.Add(tablaNumeracion);
        }

        private Rectangle crearRectanguloPie(PdfDocumentEvent docEvent)
        {
            PdfDocument pdfDoc = docEvent.GetDocument();
            PdfPage page = docEvent.GetPage();

            float xPie = pdfDoc.GetDefaultPageSize().GetX() + documento.GetLeftMargin();
            float yPie = pdfDoc.GetDefaultPageSize().GetBottom();
            float anchoPie = page.GetPageSize().GetWidth() - 72;
            float altoPie = 110F;

            Rectangle rectanguloPie = new Rectangle(xPie, yPie, anchoPie, altoPie);

            return rectanguloPie;
        }

        private Table crearTablaPie(PdfDocumentEvent docEvent, Factura factura)
        {
            float[] tamanyos2 = { 2, 2 };
            conexionBBDD.ConectarBBDD();
            Table tabla2 = new Table(UnitValue.CreatePercentArray(tamanyos2));
            tabla2.SetWidth(UnitValue.CreatePercentValue(30));
            PdfFont fontColumnas = PdfFontFactory.CreateFont(StandardFonts.HELVETICA_BOLD);

            NpgsqlDataReader reader3 = conexionBBDD.DevolverSelectWhere(factura, "*", "factura", "id = @id", "cantidad ASC", true);
            while (!reader3.IsClosed && reader3.Read())
            {
                tabla2.AddCell(new Cell().Add(new Paragraph("SUBTOTAL: ").SetFont(fontColumnas))
                .SetTextAlignment(TextAlignment.CENTER)
                .SetBorderLeft(iText.Layout.Borders.Border.NO_BORDER)
                .SetBorderTop(iText.Layout.Borders.Border.NO_BORDER)
                .SetBorderBottom(iText.Layout.Borders.Border.NO_BORDER))
                .SetRelativePosition(388, 0, 0, 0);
                tabla2.AddCell(new Cell().Add(new Paragraph(reader3["subtotal"].ToString()).SetTextAlignment(TextAlignment.RIGHT)));
                tabla2.AddCell(new Cell().Add(new Paragraph("I.V.A: ").SetFont(fontColumnas))
                    .SetTextAlignment(TextAlignment.CENTER)
                    .SetBorderLeft(iText.Layout.Borders.Border.NO_BORDER)
                    .SetBorderTop(iText.Layout.Borders.Border.NO_BORDER)
                    .SetBorderBottom(iText.Layout.Borders.Border.NO_BORDER))
                    .SetRelativePosition(388, 0, 0, 0);
                tabla2.AddCell(new Cell().Add(new Paragraph(reader3["iva"].ToString() + " %")).SetTextAlignment(TextAlignment.RIGHT));
                tabla2.AddCell(new Cell().Add(new Paragraph("TOTAL I.V.A: ").SetFont(fontColumnas))
                    .SetTextAlignment(TextAlignment.CENTER)
                    .SetBorderLeft(iText.Layout.Borders.Border.NO_BORDER)
                    .SetBorderTop(iText.Layout.Borders.Border.NO_BORDER)
                    .SetBorderBottom(iText.Layout.Borders.Border.NO_BORDER))
                    .SetRelativePosition(388, 0, 0, 0);
                tabla2.AddCell(new Cell().Add(new Paragraph(reader3["totaliva"].ToString() + " €")).SetTextAlignment(TextAlignment.RIGHT));
                tabla2.AddCell(new Cell().Add(new Paragraph("TOTAL: ").SetFont(fontColumnas))
                    .SetTextAlignment(TextAlignment.CENTER)
                    .SetBorderLeft(iText.Layout.Borders.Border.NO_BORDER)
                    .SetBorderTop(iText.Layout.Borders.Border.NO_BORDER)
                    .SetBorderBottom(iText.Layout.Borders.Border.NO_BORDER))
                    .SetRelativePosition(388, 0, 0, 0);
                tabla2.AddCell(new Cell().Add(new Paragraph(reader3["total"].ToString() + " €")).SetTextAlignment(TextAlignment.RIGHT));
                reader3.Close();
            }

            return tabla2;
        }
    }
}
