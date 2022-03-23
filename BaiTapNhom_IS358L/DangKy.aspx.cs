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

        protected void btn_DK_Click(object sender, EventArgs e)
        {
                if (password.Text == password2.Text)
                {
                    AccessData data = new AccessData();
                    string sqlKtra = "select * from Custom where userName ='" + username.Text + "'";
                    SqlDataReader reader = data.ExecuteReader(sqlKtra);

                    if (!reader.HasRows)
                    {
                        string sqlInsert = "insert into Custom values(N'" + username.Text + "',N'" + password.Text + "',N'" + txtTen.Text + "','" + txtEmail.Text + "',N'" + txtDiachi.Text + "','" + txtSDT.Text + "')";
                        data.ExcuteNonQuery(sqlInsert);
                        lbl.Text = "Đăng ký thành công!";

                    }
                    else lbl.Text = "Đã tồn tại tài khoản này";
                }
                else lbl.Text = "Nhập lại mật khẩu không đúng!";
            
        }     

    }
    
}