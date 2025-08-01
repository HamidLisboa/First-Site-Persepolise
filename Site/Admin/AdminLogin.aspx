﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html lang="en">

<head>
	<title>ورود به صفحه مدیریت</title>
	<link href="../Style.css" rel="stylesheet" />
    <meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title p-b-33" style="font-family:IRNazanin">
						ورود مدیر سایت
					</span>

					<div class="wrap-input100 validate-input" dir="rtl">
						<input class="input100" type="text" name="uname" placeholder="نام کاربری" style="font-family:IRNazanin" />
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="wrap-input100 rs1 validate-input" dir="rtl">
						<input class="input100" type="password" name="pass" placeholder="رمز عبور" style="font-family:IRNazanin" />
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="container-login100-form-btn m-t-20">
                        <asp:Button ID="btnEnter" CssClass="login100-form-btn" runat="server" Text="ورود" OnClick="btnEnter_Click" style="font-family:IRNazanin; font-size:20px;" />
					</div>

					<div class="text-center p-t-45 p-b-4">
					    <asp:Label ID="Label1" runat="server" Font-Names="IRNazanin" ForeColor="Red"></asp:Label>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	
<!--===============================================================================================-->
	<script type="text/jscript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/jscript" src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/jscript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/jscript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/jscript" src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script type="text/jscript" src="vendor/daterangepicker/moment.min.js"></script>
	<script type="text/jscript" src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script type="text/jscript" src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script type="text/jscript" src="js/main.js"></script>

</body>
</html>

