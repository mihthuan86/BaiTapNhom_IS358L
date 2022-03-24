using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BaiTapNhom_IS358L
{
    public partial class Shop : System.Web.UI.Page
    {   
        public string FullName;
        int SL;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                FullName = Session["user"].ToString();
                AccessData data = new AccessData();
                string sqlUser = "select * from GioHang where userName='" + Session["user"].ToString() + "'";
                DataTable dt = data.DataGV(sqlUser);
                SL = dt.Rows.Count;

                if (SL > 0)
                {
                    SLSP.Text = "(" + SL + ")";
                }
                else
                {
                    SLSP.Text = "(0)";
                }
            }

            if (!IsPostBack)
            {
                AccessData gv = new AccessData();
                string sqlListSp = "SELECT * FROM Product";
                DataList1.DataSource = gv.DataGV(sqlListSp);
                DataList1.DataBind();
            }


        }

        protected void imgbtn_logout_Click(object sender, ImageClickEventArgs e)
        {
            Session["user"]=null;
            Response.Redirect(Request.RawUrl); //reload trang
        }
        
        protected void imgbtn_DN_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DangNhap.aspx?ReturnUrl=Shop.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Add")
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("DangNhap.aspx?ReturnUrl=Shop.aspx");
                }
                else
                {
                    AccessData dt = new AccessData();
                    string ma = DataList1.DataKeys[e.Item.ItemIndex].ToString();

                    string sqlKT = "select * from GioHang where userName=N'" + Session["user"].ToString() + "' and Masp =N'" + ma + "'";

                    string sqlCreate = "INSERT INTO GioHang VALUES(N'" + Session["user"].ToString() + "',N'" + ma + "',1)";
                    string sqlAdd = "update GioHang set SoLuong = SoLuong +1 where userName=N'" + Session["user"].ToString() + "' and Masp =N'" + ma + "' ";

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
            if (e.CommandName == "Buy")
            {
                string ma = DataList1.DataKeys[e.Item.ItemIndex].ToString();
                if (Session["user"] == null)
                {
                    Response.Redirect("DangNhap.aspx?ReturnUrl=Shop.aspx");
                }
                else Response.Redirect("ThanhToan.aspx?ma=" + ma);
            }
        }
    }
}