namespace Doctor_Appointment_System
{
    partial class Admin_doctor_dashboard
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
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnDoctorSalary = new System.Windows.Forms.Button();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.btnDoctorList = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblLogoutS = new System.Windows.Forms.Label();
            this.lblExit = new System.Windows.Forms.Label();
            this.label = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btn_back = new System.Windows.Forms.Button();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.Bisque;
            this.panel2.Controls.Add(this.btnDoctorSalary);
            this.panel2.Controls.Add(this.pictureBox2);
            this.panel2.Controls.Add(this.btnDoctorList);
            this.panel2.Controls.Add(this.pictureBox1);
            this.panel2.Controls.Add(this.lblLogoutS);
            this.panel2.Location = new System.Drawing.Point(2, 150);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1366, 618);
            this.panel2.TabIndex = 7;
            // 
            // btnDoctorSalary
            // 
            this.btnDoctorSalary.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.btnDoctorSalary.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDoctorSalary.ForeColor = System.Drawing.SystemColors.Desktop;
            this.btnDoctorSalary.Location = new System.Drawing.Point(734, 266);
            this.btnDoctorSalary.Name = "btnDoctorSalary";
            this.btnDoctorSalary.Size = new System.Drawing.Size(293, 43);
            this.btnDoctorSalary.TabIndex = 55;
            this.btnDoctorSalary.Text = "Add Salary";
            this.btnDoctorSalary.UseVisualStyleBackColor = false;
            this.btnDoctorSalary.Click += new System.EventHandler(this.btnDoctorSalary_Click);
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = global::Doctor_Appointment_System.Properties.Resources.doctor_salary;
            this.pictureBox2.Location = new System.Drawing.Point(734, 63);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(293, 197);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox2.TabIndex = 54;
            this.pictureBox2.TabStop = false;
            // 
            // btnDoctorList
            // 
            this.btnDoctorList.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.btnDoctorList.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDoctorList.ForeColor = System.Drawing.SystemColors.Desktop;
            this.btnDoctorList.Location = new System.Drawing.Point(329, 266);
            this.btnDoctorList.Name = "btnDoctorList";
            this.btnDoctorList.Size = new System.Drawing.Size(293, 43);
            this.btnDoctorList.TabIndex = 53;
            this.btnDoctorList.Text = "Doctor List";
            this.btnDoctorList.UseVisualStyleBackColor = false;
            this.btnDoctorList.Click += new System.EventHandler(this.btnDoctorList_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Doctor_Appointment_System.Properties.Resources.doctor1;
            this.pictureBox1.Location = new System.Drawing.Point(329, 63);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(293, 197);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 49;
            this.pictureBox1.TabStop = false;
            // 
            // lblLogoutS
            // 
            this.lblLogoutS.AutoSize = true;
            this.lblLogoutS.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lblLogoutS.Font = new System.Drawing.Font("Sitka Display", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLogoutS.ForeColor = System.Drawing.Color.White;
            this.lblLogoutS.Location = new System.Drawing.Point(22, 566);
            this.lblLogoutS.Name = "lblLogoutS";
            this.lblLogoutS.Size = new System.Drawing.Size(68, 28);
            this.lblLogoutS.TabIndex = 48;
            this.lblLogoutS.Text = "Logout";
            this.lblLogoutS.Click += new System.EventHandler(this.lblLogoutS_Click);
            // 
            // lblExit
            // 
            this.lblExit.AutoSize = true;
            this.lblExit.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblExit.ForeColor = System.Drawing.Color.Red;
            this.lblExit.Location = new System.Drawing.Point(1320, 8);
            this.lblExit.Name = "lblExit";
            this.lblExit.Size = new System.Drawing.Size(35, 33);
            this.lblExit.TabIndex = 1;
            this.lblExit.Text = "X";
            // 
            // label
            // 
            this.label.AutoSize = true;
            this.label.Font = new System.Drawing.Font("Perpetua Titling MT", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.label.Location = new System.Drawing.Point(540, 36);
            this.label.Name = "label";
            this.label.Size = new System.Drawing.Size(394, 58);
            this.label.TabIndex = 0;
            this.label.Text = "ADMIN PANEL";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.panel1.Controls.Add(this.btn_back);
            this.panel1.Controls.Add(this.lblExit);
            this.panel1.Controls.Add(this.label);
            this.panel1.ForeColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel1.Location = new System.Drawing.Point(-1, 1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1366, 150);
            this.panel1.TabIndex = 6;
            // 
            // btn_back
            // 
            this.btn_back.BackColor = System.Drawing.Color.OrangeRed;
            this.btn_back.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_back.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btn_back.Location = new System.Drawing.Point(18, 11);
            this.btn_back.Name = "btn_back";
            this.btn_back.Size = new System.Drawing.Size(75, 27);
            this.btn_back.TabIndex = 54;
            this.btn_back.Text = "<<";
            this.btn_back.UseVisualStyleBackColor = false;
            this.btn_back.Click += new System.EventHandler(this.btn_back_Click);
            // 
            // Admin_doctor_dashboard
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1366, 768);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Admin_doctor_dashboard";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Admin_doctor_dashboard";
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button btnDoctorSalary;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.Button btnDoctorList;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblLogoutS;
        private System.Windows.Forms.Label lblExit;
        private System.Windows.Forms.Label label;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btn_back;
    }
}