using System;
using System.Collections.Generic;
using System.Windows.Forms;
using Facturacion.BBDD;
using MySql.Data.MySqlClient;
using Facturacion.Gestion;
using iText.Kernel.Pdf;
using iText.Kernel.Geom;
using iText.Layout;
using iText.Layout.Element;
using iText.Kernel.Font;
using iText.IO.Font.Constants;
using iText.Layout.Properties;
using System.Diagnostics;
using iText.IO.Image;
using Facturacion.Datos;
using iText.Layout.Borders;
using System.Threading;
using System.Threading.Tasks;
using System.IO;

namespace Facturacion.Formulario
{
    public partial class FrmAnyadir : Form
    {
        List<Control> controles = new List<Control>();
        List<TextBox> listaPrecio = new List<TextBox>();
        List<TextBox> listaImporte = new List<TextBox>();
        List<TextBox> listaCantidad = new List<TextBox>();
        List<TextBox> listaDescripcion = new List<TextBox>();
        
        GestionCliente gestionCliente = new GestionCliente();
        GestionFactura gestionFactura = new GestionFactura();
        GestionContenido gestionContenido = new GestionContenido();
        Fichero fichero = new Fichero();

        int contador = 1;
        int contador3 = 0;
        const int altura = 23;
        int topDescripcion = 0;
        int topCantidad = 0;
        int topImporte = 0;
        int topPrecio = 0;
        int left = 73;
        public FrmAnyadir()
        {
            InitializeComponent();
        }

        public void cargarTextBox()
        {
            controles.Clear();
            listaCantidad.Clear();
            listaDescripcion.Clear();
            listaImporte.Clear();
            listaPrecio.Clear();
            foreach (Control tempCtrl in panel4.Controls)
            {
                controles.Add(tempCtrl);
            }
            foreach (Control paneles in controles[2].Controls)
            {
                if (paneles.Name.Contains("txtPrecio"))
                {
                    listaPrecio.Add((TextBox)paneles);
                }
            }
            foreach (Control paneles in controles[1].Controls)
            {
                if (paneles.Name.Contains("txtImporte"))
                {
                    listaImporte.Add((TextBox)paneles);
                }
            }
            foreach (Control paneles in controles[3].Controls)
            {
                if (paneles.Name.Contains("txtCantidad"))
                {
                    listaCantidad.Add((TextBox)paneles);
                }
            }
            foreach (Control paneles in controles[4].Controls)
            {
                if (paneles.Name.Contains("txtDescripcion"))
                {
                    listaDescripcion.Add((TextBox)paneles);
                }
            }
        }
        public void MapearPresentacionNegocioCliente()
        {
            Int32.TryParse(txtCpCliente.Text, out int cpCliente);
            gestionCliente.Cliente.Nombre = txtNombreCliente.Text;
            gestionCliente.Cliente.Dni = txtDni.Text.ToUpper();
            gestionCliente.Cliente.Calle = txtCalleCliente.Text;
            gestionCliente.Cliente.Poblacion = txtPoblacionCliente.Text;
            gestionCliente.Cliente.Cp = cpCliente;
            gestionCliente.Cliente.Provincia = txtProvinciaCliente.Text;
        }
        public void MapearPresentacionNegocioFactura()
        {
            string[] fecha = txtFecha.Text.Split("/");
            gestionFactura.Factura.Nif = txtNif.Text;
            gestionFactura.Factura.Dni = txtDni.Text;
            gestionFactura.Factura.Fecha = fecha[2] + "/" + fecha[1] + "/" + fecha[0];
        }
        public void MapearPresentacionNegocioDatos()
        {       
            int id = fichero.cargarFichero();
            gestionContenido.Contenido.Id = id.ToString();
            Single.TryParse(txtSubtotal.Text, out float subtotal);
            Single.TryParse(txtIva.Text, out float iva);
            Single.TryParse(txtTotalIva.Text, out float totalIva);
            Single.TryParse(txtTotal.Text, out float total);
            Int32.TryParse(listaCantidad[contador3].Text, out int cantidad);
            Single.TryParse(listaPrecio[contador3].Text, out float precio);
            Single.TryParse(listaImporte[contador3].Text, out float importe);
            gestionContenido.Contenido.Descripcion = listaDescripcion[contador3].Text;
            gestionContenido.Contenido.Cantidad = cantidad;
            gestionContenido.Contenido.Precio = precio;
            gestionContenido.Contenido.Importe = importe;
            gestionContenido.Contenido.Subtotal = subtotal;
            gestionContenido.Contenido.Iva = iva;
            gestionContenido.Contenido.IvaTotal = totalIva;
            gestionContenido.Contenido.Total = total;
            contador3++;
            if (contador3.Equals(listaDescripcion.Count))
            {
                contador3 = 0;
            }
        }
        public void MapearPresentacionNegocio()
        {
            MapearPresentacionNegocioCliente();
            MapearPresentacionNegocioFactura();
        }
        
        private void FrmAnyadir_Load(object sender, EventArgs e)
        {
            cargarTextBox();
            foreach (TextBox control in listaPrecio)
            {
                control.TextChanged += new EventHandler(CalcularImporte);
                control.TextChanged += new EventHandler(CalcularSubtotal);
                control.TextChanged += new EventHandler(CalcularTotal);
                control.TextChanged += new EventHandler(CalcularTotalIva);
            }
            foreach (TextBox control in listaCantidad)
            {
                control.TextChanged += new EventHandler(CalcularImporte);
                control.TextChanged += new EventHandler(CalcularSubtotal);
                control.TextChanged += new EventHandler(CalcularTotal);
                control.TextChanged += new EventHandler(CalcularTotalIva);
            }
            txtFecha.Text = DateTime.Now.ToString("dd/MM/yyyy").Replace('-', '/');
            MySqlDataReader registro = ConexionBBDD.ConsultaSinDT("select nombre as Nombre, nif as NIF, calle as Calle, provincia as Provincia, poblacion as Población, " +
                "LPAD(cp,5,'0') as CP, telefono as Teléfono, correo as Correo from propietario");
            if (registro.Read())
            {
                txtNombre.Text = registro["nombre"].ToString();
                txtNif.Text = registro["nif"].ToString();
                txtCalle.Text = registro["calle"].ToString();
                txtProvincia.Text = registro["provincia"].ToString();
                txtPoblacion.Text = registro[4].ToString();
                txtCp.Text = registro["cp"].ToString();
                txtTelefono.Text = registro[6].ToString();
                txtCorreo.Text = registro["correo"].ToString();
            }
        }

        private void btnMas_Click(object sender, EventArgs e)
        {
            textBoxDinamicos();
            cargarTextBox();
            foreach (TextBox control in listaPrecio)
            {
                control.TextChanged += new EventHandler(CalcularImporte);
                control.TextChanged += new EventHandler(CalcularSubtotal);
                control.TextChanged += new EventHandler(CalcularTotal);
                control.TextChanged += new EventHandler(CalcularTotalIva);
            }
            foreach (TextBox control in listaCantidad)
            {
                control.TextChanged += new EventHandler(CalcularImporte);
                control.TextChanged += new EventHandler(CalcularSubtotal);
                control.TextChanged += new EventHandler(CalcularTotal);
                control.TextChanged += new EventHandler(CalcularTotalIva);
            }
        }

        private void btnGenerarFactura_Click(object sender, EventArgs e)
        {
            string patron = @"[1-9]{8}[A-Z]{1}";

            if (txtNombreCliente.Text.TrimStart().Trim() == "" || txtDni.Text.Trim() == "" || txtCalleCliente.Text.Trim() == "" || 
                txtCalle.Text.Trim() == "" || txtCpCliente.Text.Trim() == "" || txtProvinciaCliente.Text.Trim() == "")
            {
                MessageBox.Show("Ningún dato del cliente puede estar vacío", "Error al crear la factura", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else if (txtDni.Text.Length != 9 && txtDni.Text.Length != 11 || (!System.Text.RegularExpressions.Regex.IsMatch(txtDni.Text.ToUpper(), patron)))
            {
                MessageBox.Show("DNI Incorrecto", "Error al crear la factura", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                int id = fichero.cargarFichero();
                MapearPresentacionNegocio();
                gestionCliente.Anyadir();
                gestionFactura.Anyadir();
                cargarTextBox();
                
                for (int i = 0; i < listaDescripcion.Count; i++)
                {
                    MapearPresentacionNegocioDatos();
                    gestionContenido.Anyadir();
                }
                DialogResult resultado = MessageBox.Show("¿Quieres crear un PDF con la factura?", "Generar PDF", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
                if (resultado == DialogResult.Yes)
                {
                    crearPdf();
                }
                fichero.guardarFichero(id + 1);
            }
        }
        private void CalcularImporte(object o, object e)
        {
            bool continuar = true;
            foreach (TextBox textBox in listaCantidad)
            {
                if (!Int32.TryParse(textBox.Text.Trim(), out int cantidad) || textBox.Text.Trim() == "" || textBox.Text.Trim() == null)
                {
                    continuar = false;
                    btnGenerarFactura.Enabled = false;
                    return;
                }
            }
            foreach (TextBox text in listaPrecio)
            {
                if (!Single.TryParse(text.Text.Trim(), out float precio) || text.Text.Trim() == "" || text.Text.Trim() == null)
                {
                    continuar = false;
                    btnGenerarFactura.Enabled = false;
                    return;
                }
            }
            if (continuar)
            {
                btnGenerarFactura.Enabled = true;
                for (int i = 0; i < listaImporte.Count; i++)
                {
                    listaImporte[i].Text = "" + decimal.Round(Convert.ToDecimal(listaPrecio[i].Text), 2) * Convert.ToInt32(listaCantidad[i].Text);
                }
            } 
        }
        private void CalcularSubtotal(object o, object e)
        {
            float resultadoSuma = 0;
            foreach (TextBox textBox in listaImporte)
            {
                float decimales = Convert.ToSingle(textBox.Text);
                resultadoSuma += decimales;
                txtSubtotal.Text = decimal.Round(Convert.ToDecimal(resultadoSuma), 2).ToString();
            }
        }
        private void CalcularTotal(object o, object e)
        {
            string iva = "1," + txtIva.Text;
            txtTotal.Text = decimal.Round(Convert.ToDecimal(txtSubtotal.Text) * Convert.ToDecimal(iva), 2)+"";
        }
        private void CalcularTotal()
        {
            string iva = "1," + txtIva.Text;
            txtTotal.Text = decimal.Round(Convert.ToDecimal(txtSubtotal.Text) * Convert.ToDecimal(iva), 2) + "";
        }
        private void CalcularTotalIva(object o, object e)
        {
            string iva = "0," + txtIva.Text;
            txtTotalIva.Text = decimal.Round(Convert.ToDecimal(txtSubtotal.Text) * Convert.ToDecimal(iva), 2) + "";
        }

        private void txtIva_TextChanged(object sender, EventArgs e)
        {
            CalcularTotal();
        }

        private void btnMenos_Click(object sender, EventArgs e)
        {
            int contador2 = listaDescripcion.Count;
            listaDescripcion[contador2 - 1].Visible = false;
            listaDescripcion[contador2 - 1].Name = "";
            listaDescripcion[contador2 - 1].Text = "";
            listaCantidad[contador2 - 1].Visible = false;
            listaCantidad[contador2 - 1].Name = "";
            listaCantidad[contador2 - 1].Text = 0 + "";
            listaImporte[contador2 - 1].Visible = false;
            listaImporte[contador2 - 1].Name = "";
            listaImporte[contador2 - 1].Text = 0 + "";
            listaPrecio[contador2 - 1].Visible = false;
            listaPrecio[contador2 - 1].Name = "";
            listaPrecio[contador2 - 1].Text = 0 + "";

            listaDescripcion.RemoveAt(contador2-1);
            listaCantidad.RemoveAt(contador2 - 1);
            listaImporte.RemoveAt(contador2 - 1);
            listaPrecio.RemoveAt(contador2 - 1);

            left -= 41;

            contador--;
            contador2--;
        }

        private void txtDni_TextChanged(object sender, EventArgs e)
        {
            MySqlDataReader consulta = ConexionBBDD.ConsultaSinDT("select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, " +
                "LPAD(cp,5,'0') as CP, provincia as Provincia from cliente where dni = '" + txtDni.Text + "'");
            while (consulta.Read())
            {
                if (txtDni.Text.ToUpper() == consulta["dni"].ToString())
                {
                    txtNombreCliente.Text = consulta[0].ToString();
                    txtCalleCliente.Text = consulta["calle"].ToString();
                    txtPoblacionCliente.Text = consulta[3].ToString();
                    txtCpCliente.Text = consulta["cp"].ToString();
                    txtProvinciaCliente.Text = consulta["provincia"].ToString();
                }
            }
        }

        private void crearPdf()
        {
            labelCargando.Visible = true;
            pictureCargando.Visible = true;
            int id = fichero.cargarFichero();
            string sql3 = "select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, " +
                "LPAD(cp,5,'0') as CP, provincia as Provincia from cliente where dni = '" + txtDni.Text + "'";
            MySqlDataReader consulta3 = ConexionBBDD.ConsultaSinDT(sql3);

            Directory.CreateDirectory("c:\\Users\\bollo\\Desktop\\Facturas");
            string nombreFichero = "c:\\Users\\bollo\\Desktop\\Facturas\\Factura" + "_" + txtNombreCliente.Text.Replace(" ", "-") + "_" + txtFecha.Text.Replace("/", "-") + "_" + id + ".pdf";
            PdfWriter pdfWriter = new PdfWriter(nombreFichero);
            PdfDocument pdf = new PdfDocument(pdfWriter);
            Document documento = new Document(pdf, PageSize.A4);

            documento.SetMargins(0, 20, 55, 20);

            PdfFont fontColumnas = PdfFontFactory.CreateFont(StandardFonts.HELVETICA_BOLD);
            PdfFont fontContenido = PdfFontFactory.CreateFont(StandardFonts.HELVETICA);

            string sql2 = "Select nombre as Nombre, nif as NIF, calle as Calle, provincia as Provincia, poblacion as Población, " +
                "LPAD(cp,5,'0') as CP, telefono as Teléfono, correo as Correo from propietario where nif = '" + txtNif.Text + "'";
            MySqlDataReader consulta2 = ConexionBBDD.ConsultaSinDT(sql2);
            while (consulta2.Read())
            {
                documento.Add(new Image(ImageDataFactory.Create("C:\\Users\\bollo\\Desktop\\Facturacion\\img\\" + "LogoBien.png"))
                    .SetRelativePosition(370, 50, 0, 500));
                documento.Add(new Paragraph(consulta2["nombre"].ToString()).SetBold().SetFont(fontContenido).SetFontSize(10));
                documento.Add(new Paragraph("NIF: " + consulta2["nif"].ToString()).SetFont(fontContenido).SetFixedLeading(0).SetFontSize(10));
                documento.Add(new Paragraph("Calle: " + consulta2["calle"].ToString()).SetFont(fontContenido).SetFontSize(10));
                documento.Add(new Paragraph("Población: " + consulta2[4].ToString() + ", " + consulta2["cp"].ToString() + " " 
                    + "(" + consulta2["provincia"].ToString() + ")").SetFont(fontContenido)
                    .SetFixedLeading(0).SetFontSize(10));
                documento.Add(new Paragraph("Teléfono: " + consulta2[6].ToString()).SetFont(fontContenido).SetFontSize(10));
                documento.Add(new Paragraph("Correo: " + consulta2["correo"].ToString()).SetFont(fontContenido).SetFixedLeading(0).SetFontSize(10));
            }
            documento.Add(new Paragraph("Fecha: " + txtFecha.Text).SetRelativePosition(370, 0, 0, 30).SetFontSize(10));
            documento.Add(new Paragraph("Nº Factura: " + id).SetRelativePosition(370, 0, 0, 30).SetFontSize(10).SetFixedLeading(0));
            documento.Add(new Paragraph("FACTURAR A: ").SetBold().SetFont(fontContenido).SetFontSize(12).SetFixedLeading(0));

            while (consulta3.Read())
            {
                documento.Add(new Paragraph("Cliente: " + consulta3[0].ToString()).SetFont(fontContenido).SetFontSize(10));
                documento.Add(new Paragraph("DNI: " + consulta3["dni"].ToString()).SetFont(fontContenido).SetFixedLeading(0).SetFontSize(10));
                documento.Add(new Paragraph("Calle: " + consulta3["calle"].ToString()).SetFont(fontContenido).SetFontSize(10));
                documento.Add(new Paragraph("Población: " + consulta3[3].ToString() + ", " + consulta3["cp"].ToString()).SetFont(fontContenido)
                    .SetFixedLeading(0).SetFontSize(10));
                documento.Add(new Paragraph("Provincia: " + consulta3["provincia"].ToString()).SetFont(fontContenido)).SetFontSize(10);
            }
            documento.Add(new Paragraph(""));

            string[] columnas = { "Descripción", "Cantidad", "Importe", "Precio" };

            float[] tamanyos = { 7, 3, 3, 3 };
            float[] tamanyos2 = { 2, 2 };

            Table tabla = new Table(UnitValue.CreatePercentArray(tamanyos));
            tabla.SetWidth(UnitValue.CreatePercentValue(100));
            Table tabla2 = new Table(UnitValue.CreatePercentArray(tamanyos2));
            tabla2.SetWidth(UnitValue.CreatePercentValue(30));

            foreach (string columna in columnas)
            {
                tabla.AddHeaderCell(new Cell().Add(new Paragraph(columna).SetFont(fontColumnas).SetTextAlignment(TextAlignment.CENTER)));
            }
            
            string sql = "Select * from datos where id = " + id + " order by cantidad asc";
            MySqlDataReader consulta = ConexionBBDD.ConsultaSinDT(sql);
            while (consulta.Read())
            {
                tabla.AddCell(new Cell().Add(new Paragraph(consulta["descripcion"].ToString()).SetFont(fontContenido)));
                tabla.AddCell(new Cell().Add(new Paragraph(consulta["cantidad"].ToString()).SetFont(fontContenido)).SetTextAlignment(TextAlignment.RIGHT));
                tabla.AddCell(new Cell().Add(new Paragraph(consulta["importe"].ToString() + " €").SetFont(fontContenido)).SetTextAlignment(TextAlignment.RIGHT));
                tabla.AddCell(new Cell().Add(new Paragraph(consulta["precio"].ToString() + " €").SetFont(fontContenido)).SetTextAlignment(TextAlignment.RIGHT));
            }
            tabla2.AddCell(new Cell().Add(new Paragraph("SUBTOTAL: ").SetFont(fontColumnas))
                .SetTextAlignment(TextAlignment.CENTER)
                .SetBorderLeft(Border.NO_BORDER)
                .SetBorderTop(Border.NO_BORDER)
                .SetBorderBottom(Border.NO_BORDER))
                .SetRelativePosition(388, 0, 0, 0);
            tabla2.AddCell(new Cell().Add(new Paragraph(consulta["subtotal"].ToString() + " €")).SetTextAlignment(TextAlignment.RIGHT));
            tabla2.AddCell(new Cell().Add(new Paragraph("I.V.A: ").SetFont(fontColumnas))
                .SetTextAlignment(TextAlignment.CENTER)
                .SetBorderLeft(Border.NO_BORDER)
                .SetBorderTop(Border.NO_BORDER)
                .SetBorderBottom(Border.NO_BORDER))
                .SetRelativePosition(388, 0, 0, 0);
            tabla2.AddCell(new Cell().Add(new Paragraph(consulta["iva"].ToString() + " %")).SetTextAlignment(TextAlignment.RIGHT));
            tabla2.AddCell(new Cell().Add(new Paragraph("TOTAL I.V.A: ").SetFont(fontColumnas))
                .SetTextAlignment(TextAlignment.CENTER)
                .SetBorderLeft(Border.NO_BORDER)
                .SetBorderTop(Border.NO_BORDER)
                .SetBorderBottom(Border.NO_BORDER))
                .SetRelativePosition(388, 0, 0, 0);
            tabla2.AddCell(new Cell().Add(new Paragraph(consulta["totalIva"].ToString() + " €")).SetTextAlignment(TextAlignment.RIGHT));
            tabla2.AddCell(new Cell().Add(new Paragraph("TOTAL: ").SetFont(fontColumnas))
                .SetTextAlignment(TextAlignment.CENTER)
                .SetBorderLeft(Border.NO_BORDER)
                .SetBorderTop(Border.NO_BORDER)
                .SetBorderBottom(Border.NO_BORDER))
                .SetRelativePosition(388, 0, 0, 0);
            tabla2.AddCell(new Cell().Add(new Paragraph(consulta["total"].ToString() + " €")).SetTextAlignment(TextAlignment.RIGHT));


            documento.Add(tabla);
            documento.Add(new Paragraph(""));
            documento.Add(tabla2);
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
            labelCargando.Visible = false;
            pictureCargando.Visible = false;
        }

        private void textBoxDinamicos()
        {
            contador++;
            left += 55;

            TextBox cantidad = new TextBox();
            TextBox importe = new TextBox();
            TextBox precio = new TextBox();
            TextBox descripcion = new TextBox();

            descripcion.Name = "txtDescripcion" + contador;
            descripcion.Location = new System.Drawing.Point(topDescripcion, left);
            descripcion.Width = 295;
            descripcion.Height = altura;
            panelDescripcion.Controls.Add(descripcion);

            cantidad.Name = "txtCantidad" + contador;
            cantidad.Location = new System.Drawing.Point(topCantidad, left);
            cantidad.Width = 88;
            cantidad.Height = altura;
            cantidad.Text = "0";
            cantidad.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            panelCantidad.Controls.Add(cantidad);

            importe.Name = "txtImporte" + contador;
            importe.Location = new System.Drawing.Point(topImporte, left);
            importe.Width = 149;
            importe.Height = altura;
            importe.Text = "0";
            importe.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            importe.ReadOnly = true;
            panelImporte.Controls.Add(importe);

            precio.Name = "txtPrecio" + contador;
            precio.Location = new System.Drawing.Point(topPrecio, left);
            precio.Width = 142;
            precio.Height = altura;
            precio.Text = "0";
            precio.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            panelPrecio.Controls.Add(precio);
        }
    }
}
