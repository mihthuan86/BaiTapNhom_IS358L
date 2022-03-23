<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="BaiTapNhom_IS358L.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<title>Đăng Ký</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/StyleSheet.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet"/>
<!-- //web font -->
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>Đăng ký tài khoản</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form id="form1" runat="server">
					<div class="txt-center">
					<asp:TextBox ID="username" placeholder="Nhập tên đăng nhập" runat="server"  required=""></asp:TextBox>
				<br/>
					<asp:TextBox ID="password" placeholder="Nhập mật khẩu" runat="server"  required="" TextMode="Password"></asp:TextBox>
					<br/>
					<asp:TextBox ID="password2" placeholder="Nhập mật khẩu" runat="server"  required="" TextMode="Password"></asp:TextBox>
					<br/>
					<asp:TextBox ID="txtTen" placeholder="Nhập Họ và Tên" runat="server"  required=""></asp:TextBox>
					<br/>
					<asp:TextBox ID="txtEmail" placeholder="Nhập Email" runat="server"  required="" TextMode="Email"></asp:TextBox>
					<br/>
					<asp:TextBox ID="txtDiachi" placeholder="Nhập địa chỉ" runat="server"  required="" ></asp:TextBox>
					<br/>
					<asp:TextBox ID="txtSDT" placeholder="Nhập số điện thoại" runat="server"  required="" TextMode="Password"></asp:TextBox>
					<br/>
					    <strong>
					<asp:Label ID="lbl" runat="server" CssClass="auto-style1"></asp:Label>
					    </strong>
					<asp:Button ID="btn_DK" runat="server" Text="Đăng ký" OnClick="btn_DK_Click" />
				    </div>
				</form>
				<p>Bạn đã có tài khoản? <a href="DangNhap.aspx"> Đăng nhập!</a></p>
			</div>
		</div>
	</div>
</body>
</html>