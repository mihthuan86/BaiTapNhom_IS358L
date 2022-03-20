<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BaiTapNhom_IS358L.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }
        .btn{
            width:40%;
            margin:0 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:50%;margin:0 auto">
            <table style="width:100%;">
                <tr>
                    <td colspan="2">
                        <h2 style="color:red;font:bold;text-align:center">
                            Xin Chào Quý Khách
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Tên đăng nhập</td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server" Width="338px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" Width="337px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div style="width:50%;margin: 0 auto">

                            <asp:Button class="btn" ID="btnDangNhap" runat="server" Text="Đăng Nhập" Width="151px" OnClick="btnDangNhap_Click" />
                            <asp:Button class="btn" ID="btnDangKy" runat="server" Text="Đăng Ký" Width="151px" OnClick="btnDangKy_Click" />

                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
