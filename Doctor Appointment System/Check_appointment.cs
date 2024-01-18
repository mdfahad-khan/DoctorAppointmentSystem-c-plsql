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
    partial class Check_appointment : Form
    {
       

        OracleConnection con;
        internal object appointmedgv;

        public Check_appointment()
        {
            InitializeComponent();
           
            
        }
        private void lblaccept_Click(object sender, EventArgs e)
        {
            approve_patient approve = new approve_patient(
             appointmentgv.SelectedRows[0].Cells[0].Value.ToString(),
                appointmentgv.SelectedRows[0].Cells[1].Value.ToString(),
                appointmentgv.SelectedRows[0].Cells[2].Value.ToString(),
                appointmentgv.SelectedRows[0].Cells[3].Value.ToString(),
                appointmentgv.SelectedRows[0].Cells[4].Value.ToString(),
                appointmentgv.SelectedRows[0].Cells[5].Value.ToString(),
                appointmentgv.SelectedRows[0].Cells[6].Value.ToString(),
                appointmentgv.SelectedRows[0].Cells[7].Value.ToString(),
                appointmentgv.SelectedRows[0].Cells[8].Value.ToString(),
                appointmentgv.SelectedRows[0].Cells[9].Value.ToString()
                );

            try
            {
                con.Open();
                OracleCommand insertEmp = con.CreateCommand();
                insertEmp.CommandText = "INSERT INTO patient VALUES(" + appointmentgv.SelectedRows[0].Cells[0].Value.ToString() + ",'" + appointmentgv.SelectedRows[0].Cells[1].Value.ToString() + "','" + appointmentgv.SelectedRows[0].Cells[2].Value.ToString() + "','" + appointmentgv.SelectedRows[0].Cells[3].Value.ToString()+"','" + appointmentgv.SelectedRows[0].Cells[4].Value.ToString() + "','" + appointmentgv.SelectedRows[0].Cells[5].Value.ToString() + "','" + appointmentgv.SelectedRows[0].Cells[6].Value.ToString() +"','" + appointmentgv.SelectedRows[0].Cells[7].Value.ToString() + "','" + appointmentgv.SelectedRows[0].Cells[8].Value.ToString() + "','" + appointmentgv.SelectedRows[0].Cells[9].Value.ToString() + "')";
                insertEmp.CommandType = CommandType.Text;
                int rows = insertEmp.ExecuteNonQuery();
                if (rows > 0)
                {
                    MessageBox.Show("Accepted!");
                }
                con.Close();


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            approve.Show();

            try
            {
               
                
                    string deleteQuery = "DELETE FROM Appointment WHERE A_Id=" + appointmentgv.SelectedRows[0].Cells[0].Value.ToString() + "";
                        OracleCommand command = new OracleCommand(deleteQuery, con);
                        con.Open();
                        command.ExecuteNonQuery(); 
                        con.Close();
                        updateGrid();
                                  
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

           




            updateGrid();
        }

        private void updateGrid()
        {
            con.Open();
            OracleCommand getEmps = con.CreateCommand();
            getEmps.CommandText = "SELECT * FROM Appointment order by A_id";
            getEmps.CommandType = CommandType.Text;
            OracleDataReader empDR = getEmps.ExecuteReader();
            DataTable empDT = new DataTable();
            empDT.Load(empDR);
            appointmentgv.DataSource = empDT;
            con.Close();
            


        }
        

        private void btn_back_Click(object sender, EventArgs e)
        {
            admin_From adminFrom = new admin_From();
            adminFrom.Show();
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

        private void Check_appointment_Load(object sender, EventArgs e)
        {
            string conStr = @"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger";
            con = new OracleConnection(conStr);
            updateGrid();
           
        }

        private void appointmentgv_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void lblreject_Click(object sender, EventArgs e)
        {
            try
            {

                if ((MessageBox.Show("Are you sure you want to delete this record?", "Delete Record", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes))
                {
                    string deleteQuery = "DELETE FROM Appointment WHERE A_Id=" + appointmentgv.SelectedRows[0].Cells[0].Value.ToString() + "";
                    OracleCommand command = new OracleCommand(deleteQuery, con);
                    con.Open();
                    command.ExecuteNonQuery();
                    con.Close();
                    updateGrid();
                }



            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            doctor_dashborad doctor = new doctor_dashborad();
            doctor.Show();
            this.Hide();
        }
    }
}
