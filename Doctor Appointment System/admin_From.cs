using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Doctor_Appointment_System
{
    public partial class admin_From : Form
    {
        public admin_From()
        {
            InitializeComponent();
        }

        private void label_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox5_Click(object sender, EventArgs e)
        {

        }

        private void lblExit_Click(object sender, EventArgs e)
        {

            Application.Exit();
        }

        private void lblExit_MouseEnter(object sender, EventArgs e)
        {
            lblExit.ForeColor = Color.Red;

        }

        private void lblExit_MouseLeave(object sender, EventArgs e)
        {
            lblExit.ForeColor = Color.Goldenrod;
        }

        private void btnManageAppointment_Click(object sender, EventArgs e)
        {
            Check_appointment checkAppointment = new Check_appointment();

            checkAppointment.Show();
            this.Hide();
        }

        private void btnManageDoctor_Click(object sender, EventArgs e)
        {
            Admin_doctor_dashboard admin_doctor_dashboard = new Admin_doctor_dashboard();
            admin_doctor_dashboard.Show();
            this.Hide();
        }

        private void btnManagePatient_Click(object sender, EventArgs e)
        { 
            paitient__details patient_details = new paitient__details();
            patient_details.Show();
            this.Hide();
        }

       

        private void lblLogoutS_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
        }

        private void addmedicinebtn_Click(object sender, EventArgs e)
        {
            medicinelist Medicine = new medicinelist();
            Medicine.Show();
            this. Hide();
        }
    }
}
