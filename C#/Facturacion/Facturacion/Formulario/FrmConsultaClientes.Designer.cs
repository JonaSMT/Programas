﻿
namespace Facturacion.Formulario
{
    partial class FrmConsultaClientes
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmConsultaClientes));
            this.panelConsulta = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnResetear = new System.Windows.Forms.Button();
            this.txtProvinciaCliente = new System.Windows.Forms.TextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.txtCpCliente = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.txtNombreCliente = new System.Windows.Forms.TextBox();
            this.txtPoblacionCliente = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.txtDni = new System.Windows.Forms.TextBox();
            this.txtCalleCliente = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panelDgv = new System.Windows.Forms.Panel();
            this.dgvConsulta = new System.Windows.Forms.DataGridView();
            this.panelConsulta.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panelDgv.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvConsulta)).BeginInit();
            this.SuspendLayout();
            // 
            // panelConsulta
            // 
            this.panelConsulta.BackColor = System.Drawing.SystemColors.Window;
            this.panelConsulta.Controls.Add(this.panel1);
            this.panelConsulta.Controls.Add(this.txtProvinciaCliente);
            this.panelConsulta.Controls.Add(this.label16);
            this.panelConsulta.Controls.Add(this.txtCpCliente);
            this.panelConsulta.Controls.Add(this.label11);
            this.panelConsulta.Controls.Add(this.label15);
            this.panelConsulta.Controls.Add(this.txtNombreCliente);
            this.panelConsulta.Controls.Add(this.txtPoblacionCliente);
            this.panelConsulta.Controls.Add(this.label12);
            this.panelConsulta.Controls.Add(this.label14);
            this.panelConsulta.Controls.Add(this.txtDni);
            this.panelConsulta.Controls.Add(this.txtCalleCliente);
            this.panelConsulta.Controls.Add(this.label13);
            this.panelConsulta.Controls.Add(this.panel2);
            this.panelConsulta.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelConsulta.Location = new System.Drawing.Point(0, 0);
            this.panelConsulta.Name = "panelConsulta";
            this.panelConsulta.Size = new System.Drawing.Size(299, 615);
            this.panelConsulta.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnResetear);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 515);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(299, 100);
            this.panel1.TabIndex = 373;
            // 
            // btnResetear
            // 
            this.btnResetear.Location = new System.Drawing.Point(105, 43);
            this.btnResetear.Name = "btnResetear";
            this.btnResetear.Size = new System.Drawing.Size(75, 23);
            this.btnResetear.TabIndex = 372;
            this.btnResetear.Text = "Resetear";
            this.btnResetear.UseVisualStyleBackColor = true;
            this.btnResetear.Click += new System.EventHandler(this.btnResetear_Click);
            // 
            // txtProvinciaCliente
            // 
            this.txtProvinciaCliente.Location = new System.Drawing.Point(89, 322);
            this.txtProvinciaCliente.Name = "txtProvinciaCliente";
            this.txtProvinciaCliente.Size = new System.Drawing.Size(132, 23);
            this.txtProvinciaCliente.TabIndex = 371;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label16.Location = new System.Drawing.Point(12, 322);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(70, 15);
            this.label16.TabIndex = 370;
            this.label16.Text = "Provincia:";
            // 
            // txtCpCliente
            // 
            this.txtCpCliente.Location = new System.Drawing.Point(89, 290);
            this.txtCpCliente.Name = "txtCpCliente";
            this.txtCpCliente.Size = new System.Drawing.Size(100, 23);
            this.txtCpCliente.TabIndex = 369;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label11.Location = new System.Drawing.Point(12, 177);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(56, 15);
            this.label11.TabIndex = 360;
            this.label11.Text = "Cliente:";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label15.Location = new System.Drawing.Point(12, 293);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(29, 15);
            this.label15.TabIndex = 368;
            this.label15.Text = "CP:";
            // 
            // txtNombreCliente
            // 
            this.txtNombreCliente.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtNombreCliente.Location = new System.Drawing.Point(89, 174);
            this.txtNombreCliente.Name = "txtNombreCliente";
            this.txtNombreCliente.Size = new System.Drawing.Size(204, 23);
            this.txtNombreCliente.TabIndex = 361;
            // 
            // txtPoblacionCliente
            // 
            this.txtPoblacionCliente.Location = new System.Drawing.Point(89, 260);
            this.txtPoblacionCliente.Name = "txtPoblacionCliente";
            this.txtPoblacionCliente.Size = new System.Drawing.Size(155, 23);
            this.txtPoblacionCliente.TabIndex = 367;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label12.Location = new System.Drawing.Point(12, 206);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(35, 15);
            this.label12.TabIndex = 362;
            this.label12.Text = "DNI:";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label14.Location = new System.Drawing.Point(12, 264);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(75, 15);
            this.label14.TabIndex = 366;
            this.label14.Text = "Población:";
            // 
            // txtDni
            // 
            this.txtDni.Location = new System.Drawing.Point(89, 203);
            this.txtDni.Name = "txtDni";
            this.txtDni.Size = new System.Drawing.Size(106, 23);
            this.txtDni.TabIndex = 363;
            // 
            // txtCalleCliente
            // 
            this.txtCalleCliente.Location = new System.Drawing.Point(89, 232);
            this.txtCalleCliente.Name = "txtCalleCliente";
            this.txtCalleCliente.Size = new System.Drawing.Size(155, 23);
            this.txtCalleCliente.TabIndex = 365;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label13.Location = new System.Drawing.Point(12, 235);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(40, 15);
            this.label13.TabIndex = 364;
            this.label13.Text = "Calle";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(41)))), ((int)(((byte)(41)))), ((int)(((byte)(62)))));
            this.panel2.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("panel2.BackgroundImage")));
            this.panel2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(299, 85);
            this.panel2.TabIndex = 9;
            // 
            // panelDgv
            // 
            this.panelDgv.Controls.Add(this.dgvConsulta);
            this.panelDgv.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelDgv.Location = new System.Drawing.Point(299, 0);
            this.panelDgv.Name = "panelDgv";
            this.panelDgv.Size = new System.Drawing.Size(423, 615);
            this.panelDgv.TabIndex = 1;
            // 
            // dgvConsulta
            // 
            this.dgvConsulta.AllowUserToAddRows = false;
            this.dgvConsulta.AllowUserToDeleteRows = false;
            this.dgvConsulta.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvConsulta.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvConsulta.Location = new System.Drawing.Point(0, 0);
            this.dgvConsulta.MultiSelect = false;
            this.dgvConsulta.Name = "dgvConsulta";
            this.dgvConsulta.ReadOnly = true;
            this.dgvConsulta.RowTemplate.Height = 25;
            this.dgvConsulta.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvConsulta.Size = new System.Drawing.Size(423, 615);
            this.dgvConsulta.TabIndex = 2;
            this.dgvConsulta.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvConsulta_CellClick);
            // 
            // FrmConsultaClientes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(722, 615);
            this.Controls.Add(this.panelDgv);
            this.Controls.Add(this.panelConsulta);
            this.Name = "FrmConsultaClientes";
            this.Text = "FrmConsultaMiembros";
            this.Load += new System.EventHandler(this.FrmConsultaMiembros_Load);
            this.panelConsulta.ResumeLayout(false);
            this.panelConsulta.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panelDgv.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvConsulta)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelConsulta;
        private System.Windows.Forms.Panel panelDgv;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txtProvinciaCliente;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.TextBox txtCpCliente;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TextBox txtNombreCliente;
        private System.Windows.Forms.TextBox txtPoblacionCliente;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox txtDni;
        private System.Windows.Forms.TextBox txtCalleCliente;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.DataGridView dgvConsulta;
        private System.Windows.Forms.Button btnResetear;
        private System.Windows.Forms.Panel panel1;
    }
}