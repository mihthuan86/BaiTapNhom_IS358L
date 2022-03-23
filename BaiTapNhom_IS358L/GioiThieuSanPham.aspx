<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioiThieuSanPham.aspx.cs" Inherits="BaiTapNhom_IS358L.GioiThieuSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <ul id="nav">
                <li><a href="/Shop.aspx">Home</a></li>
                <li><a href="#">Giỏ Hàng Của Bạn</a></li>
            </ul>
             <%if (Session["user"] != null)
                { %>
                    <div id="user">
                        <a id="user-link" href="#">
                            <img id="user-img" src="/img/icons8-user-40.png" alt="" />    
                        <div id="username">
                            <%=FullName%> 
                        </div>
                        </a>
                        <asp:ImageButton ID="imgbtn_logout" runat="server" OnClick="imgbtn_logout_Click"  ImageUrl="/img/TrangChu/icons8-logout-40.png" />
                    </div>
            <% }
                else
                { %>                                                              
                    <asp:ImageButton ID="imgbtn_DK" runat="server" OnClick="imgbtn_DK_Click"  ImageUrl="/img/TrangChu/icons8-login-40.png" />                                                                                                                                        
                 <%} %>
        </div>
        <div id="content" style="position:relative;margin-top: 66px;">
            <% if (dataTable.Rows.Count > 0)
                {
                    for (int i = 0; i < dataTable.Rows.Count; i++)
                    {
                        content = "<div style = 'max-width: 20%;display:inline-block;vertical-align:top; margin: 0 10px;'> " +
                                             "<a href=ChiTietSP.aspx?masp=" + dataTable.Rows[i]["MaSp"].ToString() + "&L=" +Loai+">" +
                                                 "<img src = '" + dataTable.Rows[i]["HinhAnh"].ToString() + "'height=300px width=300px >" +
                                             "</a>" +
                                                     "<div style='margin-left:30px'>" +
                                                        " <p>" + dataTable.Rows[i]["TenSp"].ToString() +
                                                         "</p>" +
                                                         "<p>" + dataTable.Rows[i]["MoTaChung"].ToString() +
                                                         "</p>" +
                                                     "</div>" +
                                           "</div>";
                        Response.Write(content);
                    }

                }
                else
                {
                    content = "<div style='text-align:center;color:red;margin-top:80px'> " +
                        "<h2>Xin lỗi quý khách chúng tôi hiện vẫn chưa có sản phẩm này!!!</h2>" +
                        "</div>";
                    Response.Write(content);
                }%> 
        </div>
    </form>
</body>
</html>
