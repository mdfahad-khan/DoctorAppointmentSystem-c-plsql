using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

namespace Doctor_Appointment_System
{
        class DBConnection
        {
        

        private SqlConnection connection = new SqlConnection(@"DATA SOURCE = localhost:1521/XE; USER ID=Fahad;PASSWORD=tiger");
            private SqlConnection sqlcon;
            public SqlConnection Sqlcon
            {
                get { return this.sqlcon; }
                set { this.sqlcon = value; }
            }

            private SqlCommand sqlcom;
            public SqlCommand Sqlcom
            {
                get { return this.sqlcom; }
                set { this.sqlcom = value; }
            }

            private SqlDataAdapter sda;
            public SqlDataAdapter Sda
            {
                get { return this.sda; }
                set { this.sda = value; }
            }

            private DataSet ds;
            public DataSet Ds
            {
                get { return this.ds; }
                set { this.ds = value; }
            }
            private void QueryText(string query)
            {
                this.Sqlcom = new SqlCommand(query, this.Sqlcon);
            }
            public DataSet ExecuteQuery(string sql)
            {
                this.QueryText(sql);
                this.Sda = new SqlDataAdapter(this.Sqlcom);
                this.Ds = new DataSet();
                this.Sda.Fill(this.Ds);
                return Ds;
            }
            public int ExecuteDMLQuery(string sql)
            {

                this.QueryText(sql);
                int u = this.Sqlcom.ExecuteNonQuery();
                return u;
            }



            public SqlConnection GetCon()
            {
                return connection;
            }

            public void OpenCon()
            {
                if (connection.State == System.Data.ConnectionState.Closed)
                {
                    connection.Open();
                }
            }

            public void CloseCon()
            {
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }


    
}
