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
    public partial class patient_dashbord : Form
    {
        public patient_dashbord()
        {
            InitializeComponent();
        }

        private void btnCheckDoctorList_Click(object sender, EventArgs e)
        {
            checkDoctorList checkdoctor = new checkDoctorList();
            checkdoctor.Show();
            this.Hide();
        }

        private void btnCheckBill_Click(object sender, EventArgs e)
        {
            checkBills checkbill = new checkBills();
            checkbill.Show();
            this.Hide();
        }

        private void btnMakeAppointment_Click(object sender, EventArgs e)
        {
            appointmentFrom appointment = new appointmentFrom();
            appointment.Show();
                this.Hide();
        }

        private void btnViewReports_Click(object sender, EventArgs e)
        {
            Reports_patient viewreports = new Reports_patient();
            viewreports.Show();
            this.Hide();
        }

        private void btnMedicine_Click(object sender, EventArgs e)
        {
            medicineDetails details = new medicineDetails();
            details.Show();
            this.Hide();
        }

        private void lblLogoutS_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
        }

        private void exitlbl_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
