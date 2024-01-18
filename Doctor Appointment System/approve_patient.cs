using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Doctor_Appointment_System
{ 
    public partial class approve_patient : Form
    {
      
        
        OracleConnection con;
        public approve_patient(string p_Id, string p_pName, string p_Email, string p_Address, string p_Dpt, string p_Phone, string p_Problem, string p_Shift, string p_Age, string p_Gender)
        {
            InitializeComponent();



            dataGridView1.Rows.Add();
            dataGridView1.Rows[0].Cells[0].Value = p_Id;
            dataGridView1.Rows[0].Cells[1].Value = p_pName;
            dataGridView1.Rows[0].Cells[2].Value = p_Email;
            dataGridView1.Rows[0].Cells[3].Value = p_Address;
            dataGridView1.Rows[0].Cells[4].Value = p_Dpt;
            dataGridView1.Rows[0].Cells[5].Value = p_Phone;
            dataGridView1.Rows[0].Cells[6].Value = p_Problem;
            dataGridView1.Rows[0].Cells[7].Value = p_Shift;
            dataGridView1.Rows[0].Cells[8].Value = p_Age;
            dataGridView1.Rows[0].Cells[9].Value = p_Gender;


        }

        private void updateGrid()
        {
            con.Open();
            OracleCommand getEmps = con.CreateCommand();
            getEmps.CommandText = "SELECT * FROM patient order by p_id";
            getEmps.CommandType = CommandType.Text;
            OracleDataReader empDR = getEmps.ExecuteReader();
            DataTable empDT = new DataTable();
            empDT.Load(empDR);
            dataGridView1.DataSource = empDT;
            con.Close();



        }


        private void approve_patient_Load(object sender, EventArgs e)
        {
            string conStr = @"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger";
            con = new OracleConnection(conStr);
            updateGrid();

        }



        private void btn_back_Click(object sender, EventArgs e)
        {
            doctor_dashborad doctordashboard = new doctor_dashborad();
            doctordashboard.Show();
            this.Hide();
        }

        private void lblLogoutS_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Check_appointment check = new Check_appointment();  
            check.Show();
            this.Hide();
        }
    }
}
