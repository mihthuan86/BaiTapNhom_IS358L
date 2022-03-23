<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSP.aspx.cs" Inherits="BaiTapNhom_IS358L.ChiTietSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shop</title>
    <link href="css/style.css" rel="stylesheet" />
    
    <style type="text/css">
        .dtl{
            margin:auto;
        }
        .auto-style1 {
            font-size: 16px;
            font-family:Cambria;
           
        }
        .auto-style2, sup {
            color: #FF0000;
        }
        .td,input,a {
            font-family:Cambria;
            text-align:center;
            padding:5px;
            margin:5px;
            vertical-align:top;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"> 
        <div id="header">
        <!-- begin nav bar -->
        <ul id="nav">
          <li><a href="Shop.aspx">Home</a></li>
          <li><a href="#">Áo</a>
              <ul class="subnav">
              <li><a href="GioiThieuSanPham.aspx?Loai=AT">Áo Thun</a></li>
              <li><a href="GioiThieuSanPham.aspx?Loai=ASM">Áo Sơ Mi</a></li>
              <li><a href="GioiThieuSanPham.aspx?Loai=AA">Áo Ấm</a></li>
            </ul>
          </li>
          <li><a href="#">Quần</a>
              <ul class="subnav">
              <li><a href="GioiThieuSanPham.aspx?Loai=QS">Quần Short</a></li>
              <li><a href="GioiThieuSanPham.aspx?Loai=QTT">Quần Thẻ Thao</a></li>
              <li><a href="GioiThieuSanPham.aspx?Loai=QT">Quần Tây</a></li>
            </ul>
          </li>
          <li><a href="#">Váy</a>
              <ul class="subnav">
              <li><a href="GioiThieuSanPham.aspx?Loai=VN">Váy Ngắn</a></li>
              <li><a href="GioiThieuSanPham.aspx?Loai=VD">Váy Dài</a></li>
              <li><a href="GioiThieuSanPham.aspx?Loai=VK">Khác</a></li>
            </ul>
          </li>
          <li><a href="#">Mũ</a></li>                 
          <li>
            <a href="#">
              Sản Phẩm Khác             
            </a>
            <ul class="subnav">
              <li><a href="GioiThieuSanPham.aspx?Loai=DC">Dây Chuyền</a></li>
              <li><a href="GioiThieuSanPham.aspx?Loai=VT">Vòng Tay</a></li>
              <li><a href="GioiThieuSanPham.aspx?Loai=K">Khác</a></li>
            </ul>
          </li>
             <li><a href="GioHang.aspx">Giỏ Hàng <asp:Label ID="SLSP" runat="server"></asp:Label>
                 </a></li>
        </ul>
        <!-- End nav bar -->

        <!--  Begin user -->
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
                    <asp:ImageButton ID="imgbtn_DN" runat="server" OnClick="imgbtn_DN_Click"  ImageUrl="/img/TrangChu/icons8-login-40.png" />                                                                                                                                        
            <%} %>
          <!--End user -->
      </div>
       
        <br/>
        <br/>
        <br/>

        <div>

            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:Image ID="img" runat="server" Height="420px" Width="370px" />
                    </td>
                    <td class="auto-style1"><a>
                        <asp:Label ID="Label1" runat="server" Text="Tên sản phẩm: "></asp:Label>
                        <asp:Label ID="lblTenSP" runat="server"></asp:Label>
                        </a>
                        
                        <br />
                        <a>
                            <asp:Label ID="Label2" runat="server" Text="Giá: "></asp:Label>
                            <asp:Label ID="lblGia" runat="server" CssClass="auto-style2"></asp:Label>
                            <span class="auto-style2"><sup>đ</sup> </span>
                        </a>
                        <br />
                        
                        <a>
                            <asp:Label ID="Label3" runat="server" Text="Mô tả: "></asp:Label>
                            <br />
                        <em>
                        <asp:Label ID="lblMota" runat="server"></asp:Label>
                        </em>
                        </a>
                        <br />
                        <br />
                        <asp:Button ID="btnMua" runat="server" OnClick="btnMua_Click" Text="MUA NGAY" />
                        <asp:Button ID="btnAddCart" runat="server" OnClick="btnAddCart_Click" Text="THÊM VÀO GIỎ HÀNG" />
                    </td>
                </tr>
            </table>

        </div>
     
    </form>
</body>
    
</html>
