using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapNhom_IS358L
{
    public partial class ChiTietSP : System.Web.UI.Page
    {
        public string FullName, maSp;
        int SL;
        protected void Page_Load(object sender, EventArgs e)
        {
            maSp = Request.QueryString["ma"];

            if (maSp == null)
            {
                Response.Redirect("Shop.aspx");
            }

            if (Session["user"] != null)
            {
                AccessData dt = new AccessData();
                string sqlSLSP = "select * from GioHang where userName=N'" + Session["user"].ToString() + "'";
                DataTable tb = dt.DataGV(sqlSLSP);
                SL = tb.Rows.Count;
                if (SL > 0)
                {
                    SLSP.Text = "(" + SL + ")";
                }
                else
                {
                    SLSP.Text = "(0)";
                }
            }


            AccessData data = new AccessData();
            string sql = "select * from Product where MaSp ='" + maSp + "'";
            DataTable bang = data.DataGV(sql);
            int dong = bang.Rows.Count;
            for (int i = 0; i < dong; i++)
            {
                lblTenSP.Text = bang.Rows[i]["TenSp"].ToString();
                lblGia.Text = bang.Rows[i]["Gia"].ToString();
                img.ImageUrl = bang.Rows[i]["HinhAnh"].ToString();
                lblMota.Text = bang.Rows[i]["MoTaChung"].ToString();
            }
        }

        protected void btnMua_Click(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("DangNhap.aspx?ReturnUrl=Shop.aspx");
            }
            else Response.Redirect("ThanhToan.aspx?ma=" + maSp);
        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("DangNhap.aspx?ReturnUrl=Shop.aspx");
            }
            else
            {
                AccessData dt = new AccessData();

                string sqlKT = "select * from GioHang where userName=N'" + Session["user"].ToString() + "' and Masp =N'" + maSp + "'";

                string sqlCreate = "INSERT INTO GioHang VALUES(N'" + Session["user"].ToString() + "',N'" + maSp + "',1)";
                string sqlAdd = "update GioHang set SoLuong = SoLuong +1 where userName=N'" + Session["user"].ToString() + "' and Masp =N'" + maSp + "' ";

                SqlDataReader reader = dt.ExecuteReader(sqlKT);
                if (reader.HasRows)
                {
                    dt.ExcuteNonQuery(sqlAdd);

                }
                else
                {
                    dt.ExcuteNonQuery(sqlCreate);
                }
                Response.Write("<script>alert('Đã thêm sản phẩm vào giỏ hàng!');</script>");

            }

        }

        protected void imgbtn_logout_Click(object sender, ImageClickEventArgs e)
        {
            Session["user"] = null;
            Response.Redirect(Request.RawUrl); //reload trang
        }

        protected void imgbtn_DN_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DangNhap.aspx?ReturnUrl=ChiTietSP.aspx?ma=" + maSp);
        }
    }
}