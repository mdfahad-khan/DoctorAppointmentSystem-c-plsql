using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Doctor_Appointment_System
{
    public partial class paitient__details : Form
    {

        OracleConnection con;
        public paitient__details()
        {
            InitializeComponent();
        }

        private void label_Click(object sender, EventArgs e)
        {

        }

        private void lblLogoutS_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
        }

        private void approvepatientbtn_Click(object sender, EventArgs e)
        {
          Check_appointment ck = new Check_appointment();
            ck.Show();
            this.Hide();
        }

      

        private void button4_Click(object sender, EventArgs e)
        {
            previous_medical_reports previous_Medical_Reports = new previous_medical_reports();
            previous_Medical_Reports.Show();
            this.Hide();
        }

        private void button3_Click(object sender, EventArgs e)
        {
           Add_reports add_Reports = new Add_reports();
            add_Reports.Show();
            this.Hide();
        }

        private void btn_back_Click(object sender, EventArgs e)
        {
            admin_From admin = new admin_From();
            admin.Show();   
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            create_Patient_password create = new create_Patient_password();
            create.Show();
            this.Hide();
        }
    }
}
