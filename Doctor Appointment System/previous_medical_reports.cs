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
    public partial class previous_medical_reports : Form
    {
        OracleConnection con;
        public previous_medical_reports()
        {
            InitializeComponent();
        }

        private void btn_back_Click(object sender, EventArgs e)
        {
            admin_From doctordashboard = new admin_From();
            doctordashboard.Show();
            this.Hide();
        }
        private void updateGrid()
        {
            

            try
            {
                
                    con.Open();
                    OracleCommand getEmps = con.CreateCommand();
                    getEmps.CommandText = "SELECT Reports.p_id,Reports.p_name, Reports.p_reports FROM Reports INNER JOIN patient ON Reports.p_id = patient.p_id";
                    getEmps.CommandType = CommandType.Text;
                    OracleDataReader empDR = getEmps.ExecuteReader();
                    DataTable empDT = new DataTable();
                    empDT.Load(empDR);
                    dataGridView1.DataSource = empDT;
                    con.Close();

                
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

        private void previous_medical_reports_Load(object sender, EventArgs e)
        {
            string conStr = @"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger";
            con = new OracleConnection(conStr);
            updateGrid();
        }
    }
}
