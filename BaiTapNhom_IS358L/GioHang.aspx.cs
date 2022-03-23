using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapNhom_IS358L
{
    public partial class GioHang : System.Web.UI.Page
    {
        public string FullName;
        int SL;
        private void LoadData()
        {
            if (Session["user"] != null)
            {
                FullName = Session["user"].ToString();

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
            AccessData gv = new AccessData();
            string sqlListSp = "SELECT GioHang.MaSp, Product.TenSp AS 'Tên sản phẩm', GioHang.SoLuong as 'Số lượng', Product.Gia as 'Đơn giá', GioHang.SoLuong*Product.Gia as 'Thành tiền' FROM GioHang INNER JOIN Product On GioHang.MaSp = Product.MaSp where userName=N'" + Session["user"].ToString() + "'";

            GridView1.DataSource = gv.DataGV(sqlListSp);
            GridView1.DataBind();
            try
            {
                double p = 0;
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    p += Double.Parse(GridView1.Rows[i].Cells[5].Text);
                }

                Label2.Text = p.ToString();
            }
            catch (Exception ex) { }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("DangNhap.aspx");
                }
                else
                {
                    LoadData();
                }
            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            AccessData dt = new AccessData();
            string datakey = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string sql = "delete from GioHang where userName=N'" + Session["user"].ToString() + "' and Masp =N'" + datakey + "'";
            dt.ExcuteNonQuery(sql);
            LoadData();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            AccessData dt = new AccessData();
            string datakey = GridView1.DataKeys[e.RowIndex].Value.ToString();
            TextBox txtSL = GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;
            string sql = "update GioHang set SoLuong ='" + txtSL.Text + "' where userName=N'" + Session["user"].ToString() + "' and Masp =N'" + datakey + "'";
            dt.ExcuteNonQuery(sql);
            LoadData();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadData();
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThanhToan.aspx");
        }

        protected void imgbtn_DN_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DangNhap.aspx?ReturnUrl=TrangChu.aspx");
        }

        protected void imgbtn_logout_Click(object sender, ImageClickEventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("TrangChu.aspx");
        }
    }
}