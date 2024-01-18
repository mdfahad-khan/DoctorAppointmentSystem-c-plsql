using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Doctor_Appointment_System
{
    public partial class appointmentFrom : Form
    {
        OracleConnection con;
        DBConnection dBcon = new DBConnection();
        public appointmentFrom()
        {
            InitializeComponent();
        }
        private void lblExit_Click(object sender, EventArgs e)
        {

            
        }


        private void appointmentFrom_Load(object sender, EventArgs e)
        {
            string conStr = @"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger";
            con = new OracleConnection(conStr);
            

        }

        private void btnSubmitAppointment_Click(object sender, EventArgs e)
        {
         

            try
            {
                //con.Open();
                //OracleCommand insertEmp = con.CreateCommand();

                //insertEmp.CommandText = "INSERT INTO Appointment VALUES(" + A_id.nextval + ",'" + patientnametxt.Text + "','" + patientemailtxt.Text + "','" + patientaddresstxt.Text + "','" + doctordepartmentcmb.Text + "','" + patientphone.Text + "','" + patientproblemtxt.Text + "','" + apointmentshiftcmb.Text + "','" + patientage.Text + "','" + patientgendercmb.Text + "')";
                //insertEmp.CommandType = CommandType.Text;
                //int rows = insertEmp.ExecuteNonQuery();
                //if (rows > 0)
                //{
                //    MessageBox.Show("Data Inserted Successfully!");
                //}
                //con.Close();


                try
                {
                    con.Open();





                    OracleCommand insertEmp = con.CreateCommand();
                    insertEmp.CommandText = "INSERT INTO Appointment (A_ID, A_PName, A_Email, A_Address, A_Dpt, A_Phone, A_Problem, A_Shift, A_Age, A_Gender) " +
                                            "VALUES (A_id.nextval, :patientName, :patientEmail, :patientAddress, :doctorDepartment, :patientPhone, :patientProblem, :appointmentShift, :patientAge, :patientGender)";

                    insertEmp.Parameters.Add(new OracleParameter("patientName", patientnametxt.Text));
                    insertEmp.Parameters.Add(new OracleParameter("patientEmail", patientemailtxt.Text));
                    insertEmp.Parameters.Add(new OracleParameter("patientAddress", patientaddresstxt.Text));
                    insertEmp.Parameters.Add(new OracleParameter("doctorDepartment", doctordepartmentcmb.Text));
                    insertEmp.Parameters.Add(new OracleParameter("patientPhone", patientphone.Text));
                    insertEmp.Parameters.Add(new OracleParameter("patientProblem", patientproblemtxt.Text));
                    insertEmp.Parameters.Add(new OracleParameter("appointmentShift", apointmentshiftcmb.Text));
                    insertEmp.Parameters.Add(new OracleParameter("patientAge", patientage.Text));
                    insertEmp.Parameters.Add(new OracleParameter("patientGender", patientgendercmb.Text));

                    int rows = insertEmp.ExecuteNonQuery();
                    if (rows > 0)
                    {
                        MessageBox.Show("Data Inserted Successfully!");
                    }
                }
                catch (OracleException ex)
                {
                    MessageBox.Show("Error: " + ex.Message);
                }
                finally
                {
                    con.Close();
                }




            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        

        private void btnLoginApp_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
        }

        private void apointmentshiftcmb_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void login_Click(object sender, EventArgs e)
        {
            
        }

        private void doctorlistbtn_Click(object sender, EventArgs e)
        {
            
        }

        private void lblExit_Click_1(object sender, EventArgs e)
        {
            
        }

        private void login_Click_1(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
        }

        private void doctorlistbtn_Click_1(object sender, EventArgs e)
        {
            doctorlist doctorlist = new doctorlist();
            doctorlist.Show();
            this.Hide();

        }
    }
}
