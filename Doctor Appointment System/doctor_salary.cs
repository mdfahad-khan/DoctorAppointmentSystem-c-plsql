using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data; 
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.ManagedDataAccess.Client;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;


namespace Doctor_Appointment_System
{
    public partial class doctor_salary : Form
    {
        OracleConnection con;
        public doctor_salary()
        {
            InitializeComponent();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void dgvdoctorSalary_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtdoctorSalaryId_TextChanged(object sender, EventArgs e)
        {

        }

        

        private void doctor_salary_Load(object sender, EventArgs e)
        {
            string conStr = @"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger";
            con = new OracleConnection(conStr);
            updateGrid();
        }

        private void updateGrid()
        {
            con.Open();
            OracleCommand getEmps = con.CreateCommand();
            getEmps.CommandText = "SELECT * FROM doctor_Salary order by d_id";
            getEmps.CommandType = CommandType.Text;
            OracleDataReader empDR = getEmps.ExecuteReader();
            DataTable empDT = new DataTable();
            empDT.Load(empDR);
            dgvdoctorSalary.DataSource = empDT;
            con.Close();

        }

        private void btnSalaryAdd_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                OracleCommand insertEmp = con.CreateCommand();
                insertEmp.CommandText = "INSERT INTO doctor_Salary VALUES(" + txtdoctorSalaryId.Text + ",'" + txtdoctorSalaryName.Text + "','" + txtdoctorSalary.Text + "')";
                insertEmp.CommandType = CommandType.Text;
                int rows = insertEmp.ExecuteNonQuery();
                if (rows > 0)
                {
                    MessageBox.Show("Doctor salary added Successfully!");
                }
                con.Close();
                updateGrid();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }





            
        }


        private void lblLogoutS_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
        }

        private void btn_back_Click(object sender, EventArgs e)
        {
            Admin_doctor_dashboard admin = new Admin_doctor_dashboard();
            admin.Show();
            this.Hide();
        }

        private void exitlbl_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
