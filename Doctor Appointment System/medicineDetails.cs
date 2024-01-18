using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Printing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Doctor_Appointment_System
{
    public partial class medicineDetails : Form
    {
        OracleConnection con;
        public medicineDetails()
        {
            InitializeComponent();
        }

        private void updateGrid1()
        {
            con.Open();
            OracleCommand getEmps = con.CreateCommand();
            getEmps.CommandText = "SELECT pres_id, medicine_name FROM prescription INNER JOIN patient ON prescription.pres_id = patient.p_id";


            getEmps.CommandType = CommandType.Text;
            OracleDataReader empDR = getEmps.ExecuteReader();
            DataTable empDT = new DataTable();
            empDT.Load(empDR);
            suggestmedicinedgv.DataSource = empDT;
            con.Close();
        }


        private void updateGrid()
        {
            con.Open();
            OracleCommand getEmps = con.CreateCommand();
            getEmps.CommandText = "SELECT * from medicine order by medicine_id";
            getEmps.CommandType = CommandType.Text;
            OracleDataReader empDR = getEmps.ExecuteReader();
            DataTable empDT = new DataTable();
            empDT.Load(empDR);
            allmedicinedgv.DataSource = empDT;
            con.Close();

        }

        private void lblLogoutS_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
            // Login login = new Login();
            // login.Show();
            //this.Hide();

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void exitlbl_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        
   


        private void updateGrid2()
        {
            con.Open();
            OracleCommand getEmps = con.CreateCommand();
            getEmps.CommandText = "SELECT * from selected_medicine";
            getEmps.CommandType = CommandType.Text;
            OracleDataReader empDR = getEmps.ExecuteReader();
            DataTable empDT = new DataTable();
            empDT.Load(empDR);
            dataGridView2.DataSource = empDT;
            con.Close();

        }
      





        int grandTotal = 0;

        private void button_add_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                OracleCommand insertEmp = con.CreateCommand();
                insertEmp.CommandText = "INSERT INTO selected_medicine VALUES('" + name.Text + "','" + price.Text + "','" + quantity.Text + "','" + Convert.ToInt32(price.Text) * Convert.ToInt32(quantity.Text) + "')";
                insertEmp.CommandType = CommandType.Text;
                int rows = insertEmp.ExecuteNonQuery();
              
                con.Close();

                int Total = Convert.ToInt32(price.Text) * Convert.ToInt32(quantity.Text);
                grandTotal += Total;
                ootk.Text = grandTotal + " TK";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            updateGrid2();



            
        
        }

        private void medicineDetails_Load(object sender, EventArgs e)
        {
            string conStr = @"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger";
            con = new OracleConnection(conStr);
            updateGrid();
            updateGrid1();
            updateGrid2();
        }
        Bitmap bitmap;
        private void printbtn_Click(object sender, EventArgs e)
        {
            
                
                        string deleteQuery = "DELETE FROM Selected_medicine";
                        OracleCommand command = new OracleCommand(deleteQuery, con);
                        con.Open();
                        command.ExecuteNonQuery();
                       
                        con.Close();
                        
                       
                
          

















            PrintDocument printDocument = new PrintDocument();
            printDocument.PrintPage += printDocument1_PrintPage;

            PrintPreviewDialog printPreviewDialog = new PrintPreviewDialog
            {
                Document = printDocument
            };

            printPreviewDialog.ShowDialog();

        }

        private void printDocument1_PrintPage(object sender, PrintPageEventArgs e)
        {
            e.Graphics.DrawString("DOCTOR APPOINTMENT SYSTEM ", new Font("Arial", 20, FontStyle.Bold), Brushes.Black, new Point(185, 10));
            e.Graphics.DrawString("MONEY RECIPT ", new Font("Arial", 16, FontStyle.Bold), Brushes.Black, new Point(240, 40));
            e.Graphics.DrawString("----------------------------------------------------------------------------------", new Font("Arial", 20, FontStyle.Bold), Brushes.Black, new Point(0, 45));
            e.Graphics.DrawString("DATE :"+DateTime.Now.ToShortDateString(), new Font("Arial", 18, FontStyle.Bold), Brushes.Black, new Point(0, 90));
           // e.Graphics.DrawString("DATE :"+grandTotal.ToString(), new Font("Arial", 18, FontStyle.Bold), Brushes.Black, new Point(0, 110));
            e.Graphics.DrawString("----------------------------------------------------------------------------------", new Font("Arial", 20, FontStyle.Bold), Brushes.Black, new Point(0, 95));

           
            Font font = new Font("Arial", 20);
            SolidBrush brush = new SolidBrush(Color.Black);

            int x = 50; 
            int y = 130;

            
            for (int row = 0; row < dataGridView2.Rows.Count; row++)
            {
                for (int col = 0; col < dataGridView2.Columns.Count; col++)
                {
                    if (dataGridView2.Rows[row].Cells[col].Value != null)
                    {
                        string cellValue = dataGridView2.Rows[row].Cells[col].Value.ToString();
                        e.Graphics.DrawString(cellValue, font, brush, x, y);
                    }
                    

                    x += 150; 
                }

                x = 50;   
                y += 40;   
            }
        }

        private void btn_back_Click(object sender, EventArgs e)
        {
            patient_dashbord patient = new patient_dashbord();
            patient.Show();
            this.Hide();
        }

        private void suggestmedicinedgv_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
