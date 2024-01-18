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
    public partial class medicinelist : Form
    {
        OracleConnection con;
        public medicinelist()
        {
            InitializeComponent();
        }

        private void lblLogoutS_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
        }


        private void updateGrid()
        {
            con.Open();
            OracleCommand getEmps = con.CreateCommand();
            getEmps.CommandText = "SELECT * from medicine order by Medicine_id";
            getEmps.CommandType = CommandType.Text;
            OracleDataReader empDR = getEmps.ExecuteReader();
            DataTable empDT = new DataTable();
            empDT.Load(empDR);
            medicinedgv.DataSource = empDT;
            con.Close();


        }

        private void button_add_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                OracleCommand insertEmp = con.CreateCommand();
                insertEmp.CommandText = "INSERT INTO medicine VALUES(" + idtxt.Text + ",'" + nametxt.Text + "','" + menutxt.Text + "','" + expiretxt.Text + "','" +pricetxt.Text + "')";
                insertEmp.CommandType = CommandType.Text;
                int rows = insertEmp.ExecuteNonQuery();
                if (rows > 0)
                {
                    MessageBox.Show("Medicine Inserted Successfully!");
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
            nametxt.Clear();
            menutxt.Clear();
            expiretxt.Clear();
            pricetxt.Clear();




        }
        private void button_update_Click(object sender, EventArgs e)
        {
            if (idtxt.Text == "" || nametxt.Text == "" || menutxt.Text == "" || expiretxt.Text == "" || pricetxt.Text == "" )
            {
                MessageBox.Show("Missing Information", "Missing Information", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {

                string updateQuery = "UPDATE medicine SET  Medicine_id ='" + idtxt.Text + "',m_name ='" + nametxt.Text + "',m_manufacture ='" + menutxt.Text + "',m_expire='" + expiretxt.Text + "',m_price = '" + pricetxt.Text + "'WHERE Medicine_id=" + idtxt.Text + "";
                OracleCommand command = new OracleCommand(updateQuery, con);
                con.Open();
                command.ExecuteNonQuery();
                MessageBox.Show("Medicine Updated Successfully", "Update Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
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
                        string deleteQuery = "DELETE FROM medicine WHERE Medicine_id =" + idtxt.Text + "";
                        OracleCommand command = new OracleCommand(deleteQuery, con);
                        con.Open();
                        command.ExecuteNonQuery();
                        MessageBox.Show("Medicine Deleted Successfully", "Delete Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
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



        private void medicinelist_Load(object sender, EventArgs e)
        {
            string conStr = @"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger";
            con = new OracleConnection(conStr);
            updateGrid();
        }

        private void medicinedgv_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            idtxt.Text = medicinedgv.SelectedRows[0].Cells[0].Value.ToString();
            nametxt.Text = medicinedgv.SelectedRows[0].Cells[1].Value.ToString();
            menutxt.Text = medicinedgv.SelectedRows[0].Cells[2].Value.ToString();
            expiretxt.Text = medicinedgv.SelectedRows[0].Cells[3].Value.ToString();
            pricetxt.Text = medicinedgv.SelectedRows[0].Cells[4].Value.ToString();
           
        }

        private void exitlbl_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btn_back_Click(object sender, EventArgs e)
        {
            admin_From admin = new admin_From();
            admin.Show();
            this.Hide();
        }
    }
}
