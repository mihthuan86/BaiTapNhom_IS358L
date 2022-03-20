using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapNhom_IS358L
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                txtUser.Text = Session["user"].ToString();
            }
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangKy.aspx");
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            AccessData data = new AccessData();
            string sqlKtra = "select * from Custom where userName ='"+txtUser.Text+"' and pass='"+txtPass.Text+"' ";
            SqlDataReader reader = data.ExecuteReader(sqlKtra);
            if (reader.HasRows)
            {
                Session["user"] = txtUser.Text;
                Response.Redirect("Shop.aspx");
            }
            else
            {
                txtPass.Text = "";
                txtUser.Text = "";
                Response.Write("<script>alert('Sai tài khoản hoặc mật khẩu')</script>");
            }
        }
    }
}