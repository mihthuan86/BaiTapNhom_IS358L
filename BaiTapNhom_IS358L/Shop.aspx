﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="BaiTapNhom_IS358L.Shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shop</title>
    <link href="/style.css" rel="stylesheet" />
    
    <style type="text/css">
        .dtl{
            margin:auto;
        }
        .auto-style1 {
            font-size: 16px;
            font-family:Cambria;
           
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
          <li><a href="#">Home</a></li>
          <li><a href="#">Áo</a>
              <ul class="subnav">
              <li><a href="#">Áo Thun</a></li>
              <li><a href="#">Áo Sơ Mi</a></li>
              <li><a href="#">Áo Ấm</a></li>
            </ul>
          </li>
          <li><a href="#">Quần</a>
              <ul class="subnav">
              <li><a href="#">Quần Short</a></li>
              <li><a href="#">Quần Thẻ Thao</a></li>
              <li><a href="#">Quần Tây</a></li>
            </ul>
          </li>
          <li><a href="#">Váy</a>
              <ul class="subnav">
              <li><a href="#">Váy Ngắn</a></li>
              <li><a href="#">Váy Dài</a></li>
              <li><a href="#">Khác</a></li>
            </ul>
          </li>
          <li><a href="#">Mũ</a></li>                 
          <li>
            <a href="#">
              Sản Phẩm Khác             
            </a>
            <ul class="subnav">
              <li><a href="#">Dây Chuyền</a></li>
              <li><a href="#">Vòng Tay</a></li>
              <li><a href="#">Khác</a></li>
            </ul>
          </li>
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
                    <asp:ImageButton ID="imgbtn_DK" runat="server" OnClick="imgbtn_DK_Click"  ImageUrl="/img/TrangChu/icons8-login-40.png" />                                                                                                                                        
            <%} %>
          <!--End user -->
      </div>
        <!-- Begin slider -->
        <div id="slider">
            <div class="mySlides fade">
                <img src="./img/TrangChu/anh1.jpg" style="width:100%"/>
                <div class="text">Fashion</div>
              </div>
 
              <div class="mySlides fade">
                <img src="./img/TrangChu/anh2.jpg" style="width:100%"/>
                <div class="text">Fashion</div>
              </div>
 
              <div class="mySlides fade">
                <img src="./img/TrangChu/anh3.jpg" style="width:100%"/>
                <div class="text">Fashion</div>
              </div>
            <div class="mySlides fade">
                <img src="./img/TrangChu/anh4.jpg" style="width:100%"/>
                <div class="text">Fashion</div>
              </div>
            <br/>
 
            <div style="text-align:center">
              <span class="dot" onclick="currentSlide(0)"></span> 
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
            </div>
        </div>
        <!-- end slider -->
        <br/>
        <br/>
        <br/>
        <div>
         <asp:DataList ID="DataList1" class="dtl" runat="server" DataKeyField="MaSp" RepeatColumns="5">
             <ItemTemplate>
                 <table class="auto-style2">
                     <tr>
                         <td>
                             <asp:Image ID="Image1" runat="server" Height="320px" ImageUrl='<%# Eval("HinhAnh") %>'
                                 Width="240px" />
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label1" runat="server"  Text='<%# Eval("TenSP") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <b style="color:red;"><asp:Label ID="Label2" runat="server"  Text='<%# Eval("Gia") %>'></asp:Label><sup>đ</sup></b>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Button ID="Button1" runat="server" Text="MUA NGAY" OnClick="btnBuy_Click" />
                             <asp:Button ID="Button2" runat="server" Text="THÊM VÀO GIỎ" OnClick="btnAddCart_Click" />
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
             </div>
    </form>
</body>
     <script>
         //khai báo biến slideIndex đại diện cho slide hiện tại
         var slideIndex;
         // KHai bào hàm hiển thị slide
         function showSlides() {
             var i;
             var slides = document.getElementsByClassName("mySlides");
             var dots = document.getElementsByClassName("dot");
             for (i = 0; i < slides.length; i++) {
                 slides[i].style.display = "none";
             }
             for (i = 0; i < dots.length; i++) {
                 dots[i].className = dots[i].className.replace(" active", "");
             }

             slides[slideIndex].style.display = "block";
             dots[slideIndex].className += " active";
             //chuyển đến slide tiếp theo
             slideIndex++;
             //nếu đang ở slide cuối cùng thì chuyển về slide đầu
             if (slideIndex > slides.length - 1) {
                 slideIndex = 0
             }
             //tự động chuyển đổi slide sau 5s
             setTimeout(showSlides, 5000);
         }
         //mặc định hiển thị slide đầu tiên 
         showSlides(slideIndex = 0);
         
         function currentSlide(n) {
             showSlides(slideIndex = n);
         }
     </script>
</html>
