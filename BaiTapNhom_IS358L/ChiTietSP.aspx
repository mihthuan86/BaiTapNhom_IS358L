<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSP.aspx.cs" Inherits="BaiTapNhom_IS358L.ChiTietSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/style.css" rel="stylesheet" />
    <title></title>          
</head>
<body style="height: 92px">
    <form id="form1" runat="server">
        <div id="header">
            <ul id="nav">
                <li><a href="/Shop.aspx">Home</a></li>
                <li><a href="GioiThieuSanPham.aspx?Loai="<%=Loai%>>Trang Trước</a></li>
                <li><a href="GioHang.aspx">Giỏ Hàng Của Bạn</a></li>
            </ul>          
        </div>
        <div id="content" style="margin-top:46px;" >
            <%
                string content1;
                content1 = "" +
                "<div>" +
                    "<img src='" + dt.Rows[0]["HinhAnh"].ToString() + "'>" +
                    "<div style='display: inline-block; position: fixed; margin-left:20px';width:200px>" +
                        "<p>" +
                            "<b style='font-size:30px;'>" +
                                dt.Rows[0]["TenSp"].ToString() + "<br>" +
                            "</b>";
                Response.Write(content1);%>
            <div>
                <div style="display:inline-block">
                    Chọn Size:
                    <asp:DropDownList ID="ddl_size" runat="server">
                        <asp:ListItem>XL</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div style="display:inline-block;padding-left:20px">
                    Nhập Số lượng:
                    <asp:TextBox ID="txt_soluong" runat="server" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <% string content2="<p>" +
                                "Gia: " +
                            "<div style='font-size: 35px; color: red;'>" +
                                "<b>" + dt.Rows[0]["Gia"] + "</b>" +
                            "</div>" +
                             "<br>" +
                            dt.Rows[0]["MoTaChung"].ToString() +
                            "</p>" +
                        "</p>" +
                    "</div>";
                Response.Write(content2);
                %>
                    <div style="text-align:center">
                        <asp:Button ID="Button1" runat="server" Text="Thêm Vào Giỏ Hàng" OnClick="Button1_Click" />
                    </div>
            <%Response.Write("</div>");%>
        </div>
    </form>
</body>
</html>
