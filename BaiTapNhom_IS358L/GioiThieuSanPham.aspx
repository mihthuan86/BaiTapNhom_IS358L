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
        <div id="content" style="position:relative;margin-top: 46px;">
            <% Response.Write(content); %> 
        </div>
    </form>
</body>
</html>
