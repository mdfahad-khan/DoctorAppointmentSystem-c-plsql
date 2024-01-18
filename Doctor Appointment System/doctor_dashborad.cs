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
    public partial class doctor_dashborad : Form
    {
        public doctor_dashborad()
        {
            InitializeComponent();
        }

        private void btnCheckAppointment_Click(object sender, EventArgs e)
        {
            Check_appointment check_Appointment = new Check_appointment();
            check_Appointment.Show();
            this.Hide();
        }

        private void btnCreatePrescription_Click(object sender, EventArgs e)
        {
           prescription prescrip = new prescription();
            prescrip.Show();
            this.Hide();
        }

        private void btnCheckPreviousMedical_Click(object sender, EventArgs e)
        {
            previous_medical_reports pervioustmedical = new previous_medical_reports();
            pervioustmedical.Show();
            this.Hide();
        }

        private void btnViewReports_Click(object sender, EventArgs e)
        {
            view_reports viewreports = new view_reports();
            viewreports.Show();
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
