using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Bibioteca.Forms;

namespace Bibioteca
{
    public partial class Inicio : Form
    {
        public Inicio()
        {
            InitializeComponent();
        }

        private void btnLibro_Click(object sender, EventArgs e)
        {
            FrmLibro frmLibro = new FrmLibro();
            frmLibro.Show();
        }

        private void btnComics_Click(object sender, EventArgs e)
        {
            FrmComic frmComic = new FrmComic();
            frmComic.Show();
        }

        private void btnManga_Click(object sender, EventArgs e)
        {
            FrmManga frmManga = new FrmManga();
            frmManga.Show();
        }

        private void txtVersion_Click(object sender, EventArgs e)
        {
            FrmVersion frmVersion = new FrmVersion();
            frmVersion.Show();
        }
    }
}
