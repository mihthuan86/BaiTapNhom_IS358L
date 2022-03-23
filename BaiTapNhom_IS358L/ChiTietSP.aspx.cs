using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapNhom_IS358L
{
    public partial class ChiTietSP : System.Web.UI.Page
    {
        public string Loai, Masp;
        public DataTable dt;

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Da Them Vao Gio Hang')</script>");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Loai = Request.QueryString["L"];
            Masp = Request.QueryString["masp"];
            AccessData data = new AccessData();
            string sqlSL = "select * from Product where MaSp=N'" + Masp + "'";
            dt = data.DataGV(sqlSL);           
        }
    }
}