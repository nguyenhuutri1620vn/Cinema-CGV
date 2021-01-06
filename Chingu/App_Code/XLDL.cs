using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace connect
{
    public class XLDL
    {
        public string ConnectString = @"Data Source=DESKTOP-FL772CH\SQLEXPRESS;Initial Catalog=QuanLyRapPhim2;Integrated Security=True";
        public DataTable GetData(String lenhSQL)
        {
            SqlConnection conn = new SqlConnection(ConnectString);
            try
            {
                SqlDataAdapter sqlData = new SqlDataAdapter(lenhSQL, ConnectString);
                DataTable tb = new DataTable();
                sqlData.Fill(tb);
                return tb;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public String GetValue(String lenhsql)
        {
            using (SqlConnection sqlcon = new SqlConnection(ConnectString))
            {
                sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand(lenhsql, sqlcon);
                String value = sqlcmd.ExecuteScalar().ToString();
                sqlcon.Close();
                return (value);
            }
        }
        public void Execute(String lennhSQL)
        {
            using (SqlConnection sqlcon = new SqlConnection(ConnectString))
            {
                sqlcon.Open();
                SqlCommand sqlCmd = new SqlCommand(lennhSQL, sqlcon);
                sqlCmd.ExecuteNonQuery();
                sqlcon.Close();
            }
        }
    }
}