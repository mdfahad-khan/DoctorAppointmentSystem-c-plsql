using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Doctor_Appointment_System
{
    
    public partial class add_doctor : Form

    {
       
        OracleConnection con;
        public add_doctor()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btn_back_Click(object sender, EventArgs e)
        { 
            Admin_doctor_dashboard admin_Doctor_Dashboard = new Admin_doctor_dashboard();
            admin_Doctor_Dashboard.Show();
            this.Hide();
        }
        private void updateGrid()
        {
            con.Open();
            OracleCommand getEmps = con.CreateCommand();
            getEmps.CommandText = "SELECT * from DOCTORS order by D_id";
            getEmps.CommandType = CommandType.Text;
            OracleDataReader empDR = getEmps.ExecuteReader();
            DataTable empDT = new DataTable();
            empDT.Load(empDR);
            dataGridView1.DataSource = empDT;
            con.Close();

        }


        private void add_doctor_Load(object sender, EventArgs e)
        {
            string conStr = @"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger";
            con = new OracleConnection(conStr);
            updateGrid();
        }

        private void exitlbl_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button_add_Click(object sender, EventArgs e)
        {
           
            try
            {
                con.Open();
                OracleCommand insertEmp = con.CreateCommand();
                insertEmp.CommandText = "INSERT INTO DOCTORS VALUES(" + doctoridtxt.Text + ",'" + doctornametxt.Text + "','" + doctoragetxt.Text + "','" + doctordepartmentcmb.Text + "','" + doctordesignationcmb.Text + "','" + doctorphonetxt.Text + "','" + doctorgendercmb.Text + "','" + doctorusernametxt.Text + "','" + doctorpasswordtxt.Text + "')";
                insertEmp.CommandType = CommandType.Text;
                int rows = insertEmp.ExecuteNonQuery();
                if (rows > 0)
                {
                    MessageBox.Show("Data Inserted Successfully!");
                }
                con.Close();
                clear();
                
                     

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            updateGrid();
        }

        private void clear()
        {
            doctoridtxt.Clear();
            doctornametxt.Clear();
            doctoragetxt.Clear();
            doctorphonetxt.Clear();
            doctorusernametxt.Clear();
            doctorpasswordtxt.Clear();  



        }


        private void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                if (doctoridtxt.Text == "")
                {
                    MessageBox.Show("Missing Information", "Missing Information", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if ((MessageBox.Show("Are you sure you want to delete this record?", "Delete Record", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes))
                    {
                        string deleteQuery = "DELETE FROM doctors WHERE d_id=" + doctoridtxt.Text + "";
                        OracleCommand command = new OracleCommand(deleteQuery, con);
                        con.Open();
                        command.ExecuteNonQuery();
                        MessageBox.Show("Doctor Deleted Successfully", "Delete Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                         con.Close();
                        updateGrid();
                        clear();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void doctordgv_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            doctoridtxt.Text = dataGridView1.SelectedRows[0].Cells[0].Value.ToString();
            doctornametxt.Text = dataGridView1.SelectedRows[0].Cells[1].Value.ToString();
            doctoragetxt.Text = dataGridView1.SelectedRows[0].Cells[2].Value.ToString();
            doctordepartmentcmb.Text = dataGridView1.SelectedRows[0].Cells[3].Value.ToString();
            doctordesignationcmb.Text = dataGridView1.SelectedRows[0].Cells[4].Value.ToString();
            doctorphonetxt.Text = dataGridView1.SelectedRows[0].Cells[5].Value.ToString();
            doctorgendercmb.Text = dataGridView1.SelectedRows[0].Cells[6].Value.ToString();
            doctorusernametxt.Text = dataGridView1.SelectedRows[0].Cells[7].Value.ToString();
            doctorpasswordtxt.Text = dataGridView1.SelectedRows[0].Cells[8].Value.ToString();
        }

        private void button_update_Click(object sender, EventArgs e)
        {

            if (doctoridtxt.Text == "" || doctornametxt.Text == "" || doctoragetxt.Text == "" || doctordepartmentcmb.Text == "" || doctordesignationcmb.Text == "" || doctorphonetxt.Text == "" || doctorgendercmb.Text == "" || doctorusernametxt.Text == "" || doctorpasswordtxt.Text == "")
            {
                MessageBox.Show("Missing Information", "Missing Information", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {

                string updateQuery = "UPDATE doctors SET  d_NAME='" + doctornametxt.Text + "',d_AGE='" + doctoragetxt.Text + "',D_DEPARTMENT='" + doctordepartmentcmb.Text + "',D_DESIGNATION='" + doctordesignationcmb.Text + "',D_PHONE='" + doctorphonetxt.Text + "',D_GENDER='" + doctorgendercmb.Text + "',D_USERNAME='" + doctorusernametxt.Text + "',D_PASSWORD='" + doctorpasswordtxt + "'WHERE D_ID=" + doctoridtxt.Text + "";
                OracleCommand command = new OracleCommand(updateQuery, con);
                con.Open();
                command.ExecuteNonQuery();
                MessageBox.Show("Doctor Updated Successfully", "Update Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                con.Close();
                updateGrid();
                clear();
            }

            try
            {
               
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            doctoridtxt.Text = dataGridView1.SelectedRows[0].Cells[0].Value.ToString();
            doctornametxt.Text = dataGridView1.SelectedRows[0].Cells[1].Value.ToString();
            doctoragetxt.Text = dataGridView1.SelectedRows[0].Cells[2].Value.ToString();
            doctordepartmentcmb.Text = dataGridView1.SelectedRows[0].Cells[3].Value.ToString();
            doctordesignationcmb.Text = dataGridView1.SelectedRows[0].Cells[4].Value.ToString();
            doctorphonetxt.Text = dataGridView1.SelectedRows[0].Cells[5].Value.ToString();
            doctorgendercmb.Text = dataGridView1.SelectedRows[0].Cells[6].Value.ToString();
            doctorusernametxt.Text = dataGridView1.SelectedRows[0].Cells[7].Value.ToString();
            doctorpasswordtxt.Text = dataGridView1.SelectedRows[0].Cells[8].Value.ToString();

        }
    }
}
