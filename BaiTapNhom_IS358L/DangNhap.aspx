<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BaiTapNhom_IS358L.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<title>Đăng Nhập</title>
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
		<h1>Đăng nhập</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form id="form1" runat="server">
					<div class="txt-center">
					<asp:TextBox ID="username" placeholder="Nhập tên đăng nhập" runat="server"  required=""></asp:TextBox>
				<br/>
					<asp:TextBox ID="password" placeholder="Nhập mật khẩu" runat="server"  required=""></asp:TextBox>
					
				<br/>
					    <strong>
					<asp:Label ID="lbl" runat="server" CssClass="auto-style1"></asp:Label>
					    </strong>
					<asp:Button ID="btn_DN" runat="server" Text="Đăng nhập" OnClick="btn_DN_Click" />
				    </div>
				</form>
				<p>Bạn không có tài khoản? <a href="DangKy.aspx"> Đăng ký tại đây!</a></p>
			</div>
		</div>
	</div>
</body>
</html>