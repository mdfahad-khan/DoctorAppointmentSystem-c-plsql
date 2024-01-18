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

namespace Doctor_Appointment_System
{
    public partial class Login : Form
    {
        public static string add_doctor;
        OracleConnection con;
        private OracleDataAdapter orad;

        public Login()
        {
            InitializeComponent();
        }
        private void Login_Load(object sender, EventArgs e)
        {
            string conStr = @"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger";
            con = new OracleConnection(conStr);

        }

        private void btnLoginSubmit_Click(object sender, EventArgs e)
        {
            
                if (txtUsername.Text == "" || txtPassword.Text == "")
                {
                    MessageBox.Show("Please Enter Username and Password", "Missing Information", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if (cmbRole.SelectedIndex > -1)
                    {
                        if (cmbRole.SelectedItem.ToString() == "ADMIN")
                        {
                            if (txtUsername.Text == "Admin" && txtPassword.Text == "123")
                            {
                            admin_From adminfrom = new admin_From();
                            adminfrom.Show();
                            this.Hide();
                            }
                            else
                            {
                                MessageBox.Show("If you are Admin, Please Enter the corret Id and Password", "Miss Id", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            }
                        }

                        
                    else if (cmbRole.SelectedItem.ToString() == "DOCTOR")
                    {
                        con.Open();
                        string selectQuery = "SELECT * FROM Doctors WHERE d_username='" + txtUsername.Text + "' AND d_password='" + txtPassword.Text + "'";

                       
                        OracleCommand command = new OracleCommand(selectQuery, con);
                        orad = new OracleDataAdapter(command.CommandText, con);
                        DataTable table = new DataTable();
                        orad.Fill(table);

                        command.ExecuteNonQuery();
                        con.Close();
                        

                       
                        if (table.Rows.Count > 0)
                        {
                            doctor_dashborad doctordashboard = new doctor_dashborad();
                            doctordashboard.Show();
                            this.Hide();
                        }
                        else
                        {
                            MessageBox.Show("Wrong Username or Password", "Wrong Information", MessageBoxButtons.OK, MessageBoxIcon.Error);

                        }



                    }



                    else if (cmbRole.SelectedItem.ToString() == "PATIENT")
                    {
                        con.Open();
                        string selectQuery = "SELECT * FROM PatientUP WHERE username='" + txtUsername.Text + "' AND password='" + txtPassword.Text + "'";


                        OracleCommand command = new OracleCommand(selectQuery, con);
                        orad = new OracleDataAdapter(command.CommandText, con);
                        DataTable table = new DataTable();
                        orad.Fill(table);

                        command.ExecuteNonQuery();
                        con.Close();



                        if (table.Rows.Count > 0)
                        {
                            patient_dashbord doctordashboard = new patient_dashbord();
                            doctordashboard.Show();
                            this.Hide();
                        }
                        else
                        {
                            MessageBox.Show("Wrong Username or Password", "Wrong Information", MessageBoxButtons.OK, MessageBoxIcon.Error);

                        }



                    }


                }
                    }
                    
                }

      

        private void btnLoginClear_Click(object sender, EventArgs e)
        {
            txtUsername.Clear();
            txtPassword.Clear();
        }


        private void lblExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnappointmentClick_Click(object sender, EventArgs e)
        {
            appointmentFrom appointment = new appointmentFrom();
            appointment.Show();
            this.Hide();
        }

        private void label9_Click(object sender, EventArgs e)
        {
            aobut a = new aobut();
            a.Show();
            this.Hide();
        }
    }

    
}
