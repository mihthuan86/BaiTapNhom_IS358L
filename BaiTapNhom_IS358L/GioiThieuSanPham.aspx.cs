using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapNhom_IS358L
{
    public partial class GioiThieuSanPham : System.Web.UI.Page
    {     
        public string FullName;
        public string content;
        public string Loai;
        protected void Page_Load(object sender, EventArgs e)
        {
            AccessData data = new AccessData();
            if (Session["user"] != null)
            {

                string sqlUser = "select * from Custom where userName='" + Session["user"].ToString() + "'";
                DataTable dt = data.DataGV(sqlUser);
                if (dt.Rows[0]["fullName"] != null)
                {
                    FullName = dt.Rows[0]["fullName"].ToString();
                }
                else FullName = Session["user"].ToString();
                Page.DataBind();

            }
            Loai = Request.QueryString["Loai"];
            string sqlSl = "select * from Product where LoaiSp='" + Loai + "'";
            DataTable dataTable = data.DataGV(sqlSl);
            if (dataTable.Rows.Count > 0)
            {
                for (int i = 0; i < dataTable.Rows.Count; i++)
                {
                    content = "<div style = 'max-width: 20%;display:inline-block;vertical-align:top'> " +
                                         "<a href=ChiTietSP.aspx?masp=" + dataTable.Rows[i]["MaSp"].ToString() + ">" +
                                             "<img src = '" + dataTable.Rows[i]["HinhAnh"].ToString() + "'height=300px width=300px >" +
                                         "</a>" +
                                                 "<div style='margin-left:30px'>" +
                                                    " <p>" + dataTable.Rows[i]["TenSp"].ToString() +
                                                     "</p>" +
                                                     "<p>" + dataTable.Rows[i]["MoTaChung"].ToString() +
                                                     "</p>" +
                                                 "</div>" +
                                       "</div>";
                }

            }
        }
        protected void imgbtn_DK_Click(object sender, ImageClickEventArgs e)
        {
            Session["last_page"] = "GioiThieuSanPham.aspx?Loai="+Loai;
            Response.Redirect("DangNhap.aspx");
        }

        protected void imgbtn_logout_Click(object sender, ImageClickEventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Shop.aspx");
        }
    }
}