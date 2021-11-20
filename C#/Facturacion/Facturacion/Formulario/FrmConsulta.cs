using Facturacion.BBDD;
using iText.IO.Font.Constants;
using iText.IO.Image;
using iText.Kernel.Font;
using iText.Kernel.Geom;
using iText.Kernel.Pdf;
using iText.Layout;
using iText.Layout.Borders;
using iText.Layout.Element;
using iText.Layout.Properties;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Facturacion.Formulario
{
    public partial class FrmConsulta : Form
    {
        public FrmConsulta()
        {
            InitializeComponent();
        }

        private void Consultar(object o, object e)
        {
            string sql = "";
            sql = "select factura.id as Id, cliente.nombre as Cliente, factura.dni as DNI, date_format(factura.fecha, '%d/%m/%Y') as Fecha from factura, " +
                "cliente where cliente.dni = factura.dni and  1 = 1";
            if (txtId.Text.Trim() != "")
            {
                sql = sql + " and id like '%" + txtId.Text + "%'";
            }
            if (txtNombre.Text.Trim() != "")
            {
                sql = sql + " and nombre like '%" + txtNombre.Text + "%'";
            }
            if (txtDni.Text.Trim() != "")
            {
                sql = sql + " and dni like '%" + txtDni.Text + "%'";
            }
            if (txtFecha.Text.Trim() != "")
            {
                sql = sql + " and date_format(factura.fecha, '%d/%m/%Y') like '%" + txtFecha.Text + "%'";
            }
            dgvConsulta.DataSource = ConexionBBDD.ConsultaTabla(sql);
        }

        private void FrmConsulta_Load(object sender, EventArgs e)
        {
            dgvConsulta.DataSource = ConexionBBDD.ConsultaTabla("select factura.id as Id, cliente.nombre as Cliente, factura.dni as DNI, date_format(factura.fecha, '%d/%m/%Y') as Fecha from factura, " +
                "cliente where cliente.dni = factura.dni");
            dgvConsulta.Columns[1].Width = 170;
            foreach (Control control in panelBusqueda.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.TextChanged += new EventHandler(Consultar);
                }
            }
        }

        private void dgvConsulta_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            crearPdf();
        }
      
        private void crearPdf()
        {
            labelCargando.Visible = true;
            pictureCargando.Visible = true;
            int id = Convert.ToInt32(dgvConsulta.SelectedCells[0].Value.ToString());
            string sql3 = "select nombre as Cliente, dni as DNI, calle as Calle, poblacion as Población, " +
                "LPAD(cp,5,'0') as CP, provincia as Provincia from cliente where dni = '" + dgvConsulta.SelectedCells[2].Value.ToString() + "'";
            MySqlDataReader consulta3 = ConexionBBDD.ConsultaSinDT(sql3);

            Directory.CreateDirectory("c:\\Users\\bollo\\Desktop\\Facturas");
            string nombreFichero = "c:\\Users\\bollo\\Desktop\\Facturas\\Factura" + "_" + dgvConsulta.SelectedCells[1].Value.ToString().Replace(" ", "-") + "_" + dgvConsulta.SelectedCells[3].Value.ToString().Replace("/", "-") + "_" + id + ".pdf";
            PdfWriter pdfWriter = new PdfWriter(nombreFichero);
            PdfDocument pdf = new PdfDocument(pdfWriter);
            Document documento = new Document(pdf, PageSize.LETTER);

            documento.SetMargins(0, 20, 55, 20);

            PdfFont fontColumnas = PdfFontFactory.CreateFont(StandardFonts.HELVETICA_BOLD);
            PdfFont fontContenido = PdfFontFactory.CreateFont(StandardFonts.HELVETICA);

            string sql2 = "Select nombre as Nombre, nif as NIF, calle as Calle, provincia as Provincia, poblacion as Población, " +
                "LPAD(cp,5,'0') as CP, telefono as Teléfono, correo as Correo from propietario where nif = '48350728J'";
            MySqlDataReader consulta2 = ConexionBBDD.ConsultaSinDT(sql2);
            while (consulta2.Read())
            {
                documento.Add(new iText.Layout.Element.Image(ImageDataFactory.Create("C:\\Users\\bollo\\Desktop\\Facturacion\\img\\" + "LogoBien.png"))
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

            string[] columnas = { "Descripción", "Cantidad", "Importe", "Precio" };

            float[] tamanyos = { 7, 3, 3, 3 };
            float[] tamanyos2 = { 2, 2 };

            documento.Add(new Paragraph(""));
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
                .SetRelativePosition(400, 0, 0, 0);
            tabla2.AddCell(new Cell().Add(new Paragraph(consulta["subtotal"].ToString() + " €")).SetTextAlignment(TextAlignment.RIGHT));
            tabla2.AddCell(new Cell().Add(new Paragraph("I.V.A: ").SetFont(fontColumnas))
                .SetTextAlignment(TextAlignment.CENTER)
                .SetBorderLeft(Border.NO_BORDER)
                .SetBorderTop(Border.NO_BORDER)
                .SetBorderBottom(Border.NO_BORDER))
                .SetRelativePosition(400, 0, 0, 0);
            tabla2.AddCell(new Cell().Add(new Paragraph(consulta["iva"].ToString() + " %")).SetTextAlignment(TextAlignment.RIGHT));
            tabla2.AddCell(new Cell().Add(new Paragraph("TOTAL I.V.A: ").SetFont(fontColumnas))
                .SetTextAlignment(TextAlignment.CENTER)
                .SetBorderLeft(Border.NO_BORDER)
                .SetBorderTop(Border.NO_BORDER)
                .SetBorderBottom(Border.NO_BORDER))
                .SetRelativePosition(400, 0, 0, 0);
            tabla2.AddCell(new Cell().Add(new Paragraph(consulta["totalIva"].ToString() + " €")).SetTextAlignment(TextAlignment.RIGHT));
            tabla2.AddCell(new Cell().Add(new Paragraph("TOTAL: ").SetFont(fontColumnas))
                .SetTextAlignment(TextAlignment.CENTER)
                .SetBorderLeft(Border.NO_BORDER)
                .SetBorderTop(Border.NO_BORDER)
                .SetBorderBottom(Border.NO_BORDER))
                .SetRelativePosition(400, 0, 0, 0);
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

        private void btnResetear_Click(object sender, EventArgs e)
        {
            foreach (Control control in panelBusqueda.Controls)
            {
                if (control.Name.Contains("txt"))
                {
                    control.Text = "";
                    ConexionBBDD.ConsultaTabla("select factura.id as Id, cliente.nombre as Cliente, factura.dni as DNI, date_format(factura.fecha, '%d/%m/%Y') " +
                        "as Fecha from factura, cliente");
                }
            }
        }
    }
}
