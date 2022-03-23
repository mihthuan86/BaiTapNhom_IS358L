<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="BaiTapNhom_IS358L.Shop" %>

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
             <li><a href="GioHang.aspx">Giỏ Hàng</a></li>
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
