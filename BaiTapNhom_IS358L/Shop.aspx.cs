using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BaiTapNhom_IS358L
{
    public partial class Shop : System.Web.UI.Page
    {
        public string FullName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                AccessData data = new AccessData();
                string sqlUser = "select * from Custom where userName='" + Session["user"].ToString() + "'";
                DataTable dt = data.DataGV(sqlUser);
                if (dt.Rows[0]["fullName"] != null)
                {
                    FullName = dt.Rows[0]["fullName"].ToString();
                }
                else FullName = Session["user"].ToString();
                Page.DataBind();
            }
        }

        protected void imgbtn_DK_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DangNhap.aspx");
        }

        protected void imgbtn_logout_Click(object sender, ImageClickEventArgs e)
        {
            Session["user"]=null;
            Response.Redirect("Shop.aspx");
        }
    }
}