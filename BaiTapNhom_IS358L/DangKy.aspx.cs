using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapNhom_IS358L
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_dangky_Click(object sender, EventArgs e)
        {
            if (txt_pass.Text != "" && txt_username.Text != "")
            {
                if (txt_pass.Text == txt_pass2.Text)
                {
                    AccessData data = new AccessData();
                    string sqlKtra = "select * from Custom where userName ='" + txt_username.Text + "'";
                    SqlDataReader reader = data.ExecuteReader(sqlKtra);

                    if (!reader.HasRows)
                    {
                        string sqlInsert = "insert into Custom values('" + txt_username.Text + "','" + txt_pass.Text + "',N'" + txt_hoten.Text + "','" + txt_email.Text + "',N'" + txt_diachi.Text + "','" + txt_sdt.Text + "')";
                        data.ExcuteNonQuery(sqlInsert);
                        lb_thongbao.Text = " Da Dang Ky Thanh Cong";
                        btn_dangnhap.Visible = true;
                    }
                    else lb_thongbao.Text = "Da co username nay";
                }
                else lb_thongbao.Text = "hai mat khau khong trung nhau";
            }
            else lb_thongbao.Text = "Không được để trống username và password";
        }     
        protected void btn_dangnhap_Click(object sender, EventArgs e)
        {
            Session["user"] = txt_username.Text;
            Response.Redirect("DangNhap.aspx");
        }

        protected void btn_return_dangnhap_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangNhap.aspx");
        }
    }
    
}