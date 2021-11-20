
namespace Facturacion.Formulario
{
    partial class FrmBorrar
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmBorrar));
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.btnResetear = new System.Windows.Forms.Button();
            this.panelBorrar = new System.Windows.Forms.Panel();
            this.txtFecha = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtDni = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtId = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.dgvBorrar = new System.Windows.Forms.DataGridView();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panelBorrar.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvBorrar)).BeginInit();
            this.SuspendLayout();
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.SystemColors.Window;
            this.panel3.Controls.Add(this.panel4);
            this.panel3.Controls.Add(this.panelBorrar);
            this.panel3.Controls.Add(this.panel2);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(299, 618);
            this.panel3.TabIndex = 1;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.btnResetear);
            this.panel4.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel4.Location = new System.Drawing.Point(0, 518);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(299, 100);
            this.panel4.TabIndex = 10;
            // 
            // btnResetear
            // 
            this.btnResetear.Location = new System.Drawing.Point(105, 43);
            this.btnResetear.Name = "btnResetear";
            this.btnResetear.Size = new System.Drawing.Size(75, 23);
            this.btnResetear.TabIndex = 0;
            this.btnResetear.Text = "Resetear";
            this.btnResetear.UseVisualStyleBackColor = true;
            this.btnResetear.Click += new System.EventHandler(this.btnResetear_Click);
            // 
            // panelBorrar
            // 
            this.panelBorrar.Controls.Add(this.txtFecha);
            this.panelBorrar.Controls.Add(this.label4);
            this.panelBorrar.Controls.Add(this.txtDni);
            this.panelBorrar.Controls.Add(this.label3);
            this.panelBorrar.Controls.Add(this.txtNombre);
            this.panelBorrar.Controls.Add(this.label2);
            this.panelBorrar.Controls.Add(this.txtId);
            this.panelBorrar.Controls.Add(this.label1);
            this.panelBorrar.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelBorrar.Location = new System.Drawing.Point(0, 85);
            this.panelBorrar.Name = "panelBorrar";
            this.panelBorrar.Size = new System.Drawing.Size(299, 341);
            this.panelBorrar.TabIndex = 9;
            // 
            // txtFecha
            // 
            this.txtFecha.Location = new System.Drawing.Point(107, 181);
            this.txtFecha.Name = "txtFecha";
            this.txtFecha.Size = new System.Drawing.Size(123, 23);
            this.txtFecha.TabIndex = 15;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label4.Location = new System.Drawing.Point(52, 184);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(42, 15);
            this.label4.TabIndex = 14;
            this.label4.Text = "Fecha:";
            // 
            // txtDni
            // 
            this.txtDni.Location = new System.Drawing.Point(107, 152);
            this.txtDni.Name = "txtDni";
            this.txtDni.Size = new System.Drawing.Size(123, 23);
            this.txtDni.TabIndex = 13;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label3.Location = new System.Drawing.Point(52, 155);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(32, 15);
            this.label3.TabIndex = 12;
            this.label3.Text = "DNI:";
            // 
            // txtNombre
            // 
            this.txtNombre.Location = new System.Drawing.Point(107, 123);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(123, 23);
            this.txtNombre.TabIndex = 11;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label2.Location = new System.Drawing.Point(52, 126);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(49, 15);
            this.label2.TabIndex = 10;
            this.label2.Text = "Cliente:";
            // 
            // txtId
            // 
            this.txtId.Location = new System.Drawing.Point(107, 94);
            this.txtId.Name = "txtId";
            this.txtId.Size = new System.Drawing.Size(123, 23);
            this.txtId.TabIndex = 9;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(51, 97);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(23, 15);
            this.label1.TabIndex = 8;
            this.label1.Text = "ID:";
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
            this.panel2.TabIndex = 8;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.dgvBorrar);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(299, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(482, 618);
            this.panel1.TabIndex = 2;
            // 
            // dgvBorrar
            // 
            this.dgvBorrar.AllowUserToAddRows = false;
            this.dgvBorrar.AllowUserToDeleteRows = false;
            this.dgvBorrar.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvBorrar.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvBorrar.Location = new System.Drawing.Point(0, 0);
            this.dgvBorrar.MultiSelect = false;
            this.dgvBorrar.Name = "dgvBorrar";
            this.dgvBorrar.ReadOnly = true;
            this.dgvBorrar.RowTemplate.Height = 25;
            this.dgvBorrar.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvBorrar.Size = new System.Drawing.Size(482, 618);
            this.dgvBorrar.TabIndex = 1;
            this.dgvBorrar.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvBorrar_CellClick);
            // 
            // FrmBorrar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(781, 618);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel3);
            this.Name = "FrmBorrar";
            this.Text = "FrmBorrar";
            this.Load += new System.EventHandler(this.FrmBorrar_Load);
            this.panel3.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panelBorrar.ResumeLayout(false);
            this.panelBorrar.PerformLayout();
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvBorrar)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView dgvBorrar;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panelBorrar;
        private System.Windows.Forms.TextBox txtFecha;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtDni;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtId;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Button btnResetear;
    }
}