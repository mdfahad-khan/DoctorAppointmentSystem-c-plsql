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
    public partial class prescription : Form
    {
        OracleConnection con;
        public prescription()
        {
            InitializeComponent();
        }
        private void updateGrid()
        {
            con.Open();
            OracleCommand getEmps = con.CreateCommand();
            getEmps.CommandText = "SELECT * from Prescription order by pres_id";
            getEmps.CommandType = CommandType.Text;
            OracleDataReader empDR = getEmps.ExecuteReader();
            DataTable empDT = new DataTable();
            empDT.Load(empDR);
            doctordgv.DataSource = empDT;
            con.Close();

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
                insertEmp.CommandText = "INSERT INTO Prescription VALUES(" + idtxt.Text + ",'" + pnametxt.Text + "','" + pagetxt.Text + "','" + pgendercmb.Text + "','" + doctornamecmb.Text + "','" + medicinecmb.Text +  "')";
                insertEmp.CommandType = CommandType.Text;
                int rows = insertEmp.ExecuteNonQuery();
                if (rows > 0)
                {
                    MessageBox.Show("Data Inserted Successfully!");
                }
                con.Close();



            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            updateGrid();
        }
        private void clear()
        {
            idtxt.Clear();
            pnametxt.Clear();
            pagetxt.Clear();
            



        }

        private void button_update_Click(object sender, EventArgs e)
        {

            if (idtxt.Text == "" || pnametxt.Text == "" || pagetxt.Text == "" || pgendercmb.Text == "" || doctornamecmb.Text == "" || medicinecmb.Text == "" )
            {
                MessageBox.Show("Missing Information", "Missing Information", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {

                string updateQuery = "UPDATE Prescription SET  Pres_id ='" + idtxt.Text + "',patient_name ='" + pnametxt.Text + "',patient_age ='" + pagetxt.Text + "',patient_gender='" + pgendercmb.Text + "',doctor_name='" + doctornamecmb.Text + "',medicine_name  ='" + medicinecmb.Text + "'WHERE Pres_id=" + idtxt.Text + "";
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

        private void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                if (idtxt.Text == "")
                {
                    MessageBox.Show("Missing Information", "Missing Information", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if ((MessageBox.Show("Are you sure you want to delete this record?", "Delete Record", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes))
                    {
                        string deleteQuery = "DELETE FROM Prescription WHERE Pres_id =" + idtxt.Text + "";
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

        private void prescription_Load(object sender, EventArgs e)
        {
            string conStr = @"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger";
            con = new OracleConnection(conStr);
            updateGrid();
        }

        private void doctordgv_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            idtxt.Text = doctordgv.SelectedRows[0].Cells[0].Value.ToString();
            pnametxt.Text = doctordgv.SelectedRows[0].Cells[1].Value.ToString();
            pagetxt.Text = doctordgv.SelectedRows[0].Cells[2].Value.ToString();
            pgendercmb.Text = doctordgv.SelectedRows[0].Cells[3].Value.ToString();
            doctornamecmb.Text = doctordgv.SelectedRows[0].Cells[4].Value.ToString();
            medicinecmb.Text = doctordgv.SelectedRows[0].Cells[5].Value.ToString();
        }
    }
}
