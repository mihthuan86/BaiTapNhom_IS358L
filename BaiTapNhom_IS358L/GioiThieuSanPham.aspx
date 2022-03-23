﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioiThieuSanPham.aspx.cs" Inherits="BaiTapNhom_IS358L.GioiThieuSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shop</title>
    <link href="css/style.css" rel="stylesheet" />
    
    <style type="text/css">
        .dtl{
            margin:auto;
        }
        .auto-style2 {
            width: 100%;
            
        }
        td,input {
            font-family:Cambria;
            text-align:center;
            padding:5px;
            margin:5px;
            vertical-align:top;
            font-size: 15px;
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
         <asp:DataList ID="DataList1" class="dtl" runat="server" DataKeyField="MaSp" RepeatColumns="5" OnItemCommand="DataList1_ItemCommand">
             <ItemTemplate>
                 <table class="auto-style2">
                     <tr>
                         <td>
                                
                            <a href="ChiTietSP.aspx?ma=<%# Eval("MaSp") %>"> <asp:Image ID="img" runat="server" Width="240px" Height="270px" ImageUrl='<%# Eval("HinhAnh") %>' /></a>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSp") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <b style="color:red;"><asp:Label ID="Label2" runat="server" Text='<%# Eval("Gia") %>'></asp:Label><sup>đ</sup></b>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Button ID="Button1" runat="server" Text="MUA NGAY" CommandName="Buy" />
                             <asp:Button ID="Button2" runat="server" Text="THÊM VÀO GIỎ" CommandName="Add" />
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
             </div>
     
    </form>
</body>
    
</html>
