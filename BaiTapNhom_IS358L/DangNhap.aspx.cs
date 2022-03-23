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

        }


        protected void btn_DN_Click(object sender, EventArgs e)
        {
            AccessData data = new AccessData();
            string sqlKtra = "select * from Custom where userName ='" + username.Text + "' and pass='" + password.Text + "' ";
            SqlDataReader reader = data.ExecuteReader(sqlKtra);
            if (reader.HasRows)
            {
                Session["user"] = username.Text;
                string url = Request.QueryString["ReturnUrl"];
                if (url == null)
                {
                    Response.Redirect("Shop.aspx");
                }
                Response.Redirect(url);
            }
            else
            {
                password.Text = "";
                username.Text = "";
                lbl.Text="Sai tài khoản hoặc mật khẩu";
            }
        }
    }
}