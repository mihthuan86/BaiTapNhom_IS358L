<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="BaiTapNhom_IS358L.Shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
        .product{
            width:100%
        }
        
        .auto-style4 {
            height: 421px;
            width: 231px;
            margin-left: 0px;
        }
        .auto-style5 {
            width: 308px;
            height: 425px;
        }
        .auto-style6 {
            width: 340px;
            height: 296px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .auto-style7 {
            width: 79%;
            margin-right: 0px;
        }
        .auto-style8 {
            width: 91%
        }
        .auto-style9 {
            width: 309px;
            margin-right: 0px;
            height: 340px;
        }
        .auto-style10 {
            width: 90%
        }
        .auto-style11 {
            height: 31px;
            width: 318px;
        }
        .auto-style12 {
            width: 318px;
        }
        .auto-style13 {
            height: 31px;
            width: 333px;
        }
        .auto-style14 {
            width: 333px;
        }
        .auto-style17 {
            width: 338px;
        }
        .product-heading{
            text-align:center;
        }
        .auto-style18 {
            height: 31px;
            width: 360px;
        }
        .auto-style19 {
            width: 360px;
        }
        .auto-style20 {
            width: 76%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:0 auto" class="auto-style20">

            <table style="width:100%;">
                <tr>
                    <td colspan="4">
                        <div style="text-align:center">
                            <h3 style="color:red;">
                                Chào mừng bạn đến với cửa hàng của chúng tôi
                            </h3>
                            <p>
                                Vui lòng chọn sản phẩm
                            </p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" dir="rtl">
                        <div id="shoes" class="product">
                            <div>
                                <img src="/img/shoes.jpg" alt="Alternate Text" class="auto-style9" />
                            </div>
                        </div>
                    </td>
                    <td class="auto-style11" aria-orientation="horizontal" dir="rtl">
                        <div id="hat" class="auto-style10">
                            <img src="/img/hat.jpg" alt="Alternate Text" class="auto-style6" />
                        </div>
                    </td>
                    <td class="auto-style18" aria-orientation="horizontal" dir="rtl">
                        <div id="shirt" class="auto-style7">
                            <img src="/img/shirt.jpg" alt="Alternate Text" class="auto-style5" />
                        </div>
                    </td>
                    <td class="auto-style1" aria-orientation="horizontal" dir="rtl">
                        <div id="pants" class="auto-style8" dir="auto" style="text-align:center">
                            <img src="/img/pants.jpg" alt="Alternate Text" class="auto-style4" />
                        </div>
                    </td>
                        </tr>
                        <tr>
                    <td class="auto-style14">
                        <div class="place-boby">
                          <h3 class="product-heading">Shoes</h3>
                          <p class="product-description">
                              Sport Shoes</p>
                            <p class="product-description">
                                Price: 18$</p>
                            <div class="quatity">
                                Nhập số lượng cần mua:<br />
                                <asp:TextBox ID="txt_shoes" runat="server" Width="174px" TextMode="Number"></asp:TextBox>
                            </div>                           
                        </div>

                    </td>
                    <td class="auto-style12">
                        <div class="place-boby">
                          <h3 class="product-heading">Hat</h3>
                          <p class="product-description">
                              Fashion Hat</p>
                            <p class="product-description">
                                Price: 10$</p>
                            <div class="auto-style17">
                                Nhập số lượng cần mua:
                                <br />
                                <asp:TextBox ID="txt_hat" runat="server" Width="180px" TextMode="Number"></asp:TextBox>
                            </div>                           
                        </div>

                    </td>
                    <td class="auto-style19">
                        <div class="place-boby">
                          <h3 class="product-heading">Shirt</h3>
                          <p class="product-description">
                              Black T-Shirt</p>
                            <p class="product-description">
                                Price: 15$</p>
                            <div class="quatity">
                                Nhập số lượng cần mua:<br />
                                <asp:TextBox ID="txt_shirt" runat="server" Width="173px" TextMode="Number" ></asp:TextBox>
                            </div>                           
                        </div>
                    </td>
                    <td>
                        <div class="place-boby">
                          <h3 class="product-heading">Pants</h3>
                          <p class="product-description">
                              Gray Pants</p>
                            <p class="product-description">
                                Price: 13$</p>
                            <div class="quatity">
                                Nhập số lượng cần mua:
                                <asp:TextBox ID="txt_pants" runat="server" Width="180px" TextMode="Number"></asp:TextBox>
                            </div>                           
                        </div>
                    </td>
                </tr>
                        <tr>
                    <td colspan="4">
                        <div style="text-align:center">

                            <asp:Button ID="btn_buy" runat="server" Text="Buy " Width="253px" />

                        </div>
                        </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
