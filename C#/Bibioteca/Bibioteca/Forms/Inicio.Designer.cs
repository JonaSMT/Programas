
namespace Bibioteca
{
    partial class Inicio
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnLibro = new System.Windows.Forms.Button();
            this.txtVersion = new System.Windows.Forms.Label();
            this.btnComics = new System.Windows.Forms.Button();
            this.btnManga = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnLibro
            // 
            this.btnLibro.Location = new System.Drawing.Point(182, 292);
            this.btnLibro.Name = "btnLibro";
            this.btnLibro.Size = new System.Drawing.Size(75, 23);
            this.btnLibro.TabIndex = 0;
            this.btnLibro.Text = "Llibre";
            this.btnLibro.UseVisualStyleBackColor = true;
            this.btnLibro.Click += new System.EventHandler(this.btnLibro_Click);
            // 
            // txtVersion
            // 
            this.txtVersion.AutoSize = true;
            this.txtVersion.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtVersion.Location = new System.Drawing.Point(683, 406);
            this.txtVersion.Name = "txtVersion";
            this.txtVersion.Size = new System.Drawing.Size(74, 15);
            this.txtVersion.TabIndex = 17;
            this.txtVersion.Text = "Versió: 1.1.1";
            this.txtVersion.Click += new System.EventHandler(this.txtVersion_Click);
            // 
            // btnComics
            // 
            this.btnComics.Location = new System.Drawing.Point(360, 292);
            this.btnComics.Name = "btnComics";
            this.btnComics.Size = new System.Drawing.Size(75, 23);
            this.btnComics.TabIndex = 18;
            this.btnComics.Text = "Còmics";
            this.btnComics.UseVisualStyleBackColor = true;
            this.btnComics.Click += new System.EventHandler(this.btnComics_Click);
            // 
            // btnManga
            // 
            this.btnManga.Location = new System.Drawing.Point(544, 292);
            this.btnManga.Name = "btnManga";
            this.btnManga.Size = new System.Drawing.Size(75, 23);
            this.btnManga.TabIndex = 19;
            this.btnManga.Text = "Manga";
            this.btnManga.UseVisualStyleBackColor = true;
            this.btnManga.Click += new System.EventHandler(this.btnManga_Click);
            // 
            // Inicio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnManga);
            this.Controls.Add(this.btnComics);
            this.Controls.Add(this.txtVersion);
            this.Controls.Add(this.btnLibro);
            this.Name = "Inicio";
            this.Text = "Biblioteca";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnLibro;
        private System.Windows.Forms.Label txtVersion;
        private System.Windows.Forms.Button btnComics;
        private System.Windows.Forms.Button btnManga;
    }
}

