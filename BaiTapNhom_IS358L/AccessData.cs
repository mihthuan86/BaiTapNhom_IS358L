using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BaiTapNhom_IS358L
{
    public class AccessData
    {
        public SqlConnection GetConnection()
        {
            string path = HttpContext.Current.Server.MapPath("App_Data/QuanLyShop.mdf");

            return new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB; 
            AttachDbFilename=" + path + "; Integrated Security=True");
        }
        public void ExcuteNonQuery(string sql) 
        {
            SqlConnection conn = GetConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            cmd.Dispose();
        }
        public SqlDataReader ExecuteReader(string sql) 
        {
            SqlConnection conn = GetConnection();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
        public DataTable DataGV(string sql) 
        {
            SqlConnection conn = GetConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            return dt;
        }
    }
}