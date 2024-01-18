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
    public partial class Admin_doctor_dashboard : Form
    {
        public Admin_doctor_dashboard()
        {
            InitializeComponent();
        }

        private void btnDoctorList_Click(object sender, EventArgs e)
        {
           add_doctor addDoctor = new add_doctor();
            addDoctor.Show();
            this.Hide();
        }

        private void btnDoctorSalary_Click(object sender, EventArgs e)
        {
            doctor_salary doctor_Salary = new doctor_salary();
            doctor_Salary.Show();
            this.Hide();
        }

        private void lblLogoutS_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
        }

        private void btn_back_Click(object sender, EventArgs e)
        {
            admin_From admin = new admin_From();
            admin.Show();
            this.Hide();
        }
    }
}
