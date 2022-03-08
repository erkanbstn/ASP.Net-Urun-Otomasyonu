<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirisYap.aspx.cs" Inherits="UrunSite.GirisYap" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>E-Stok Giriş Yap</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="Login/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/css/util.css">
    <link rel="stylesheet" type="text/css" href="Login/css/main.css">
    <!--===============================================================================================-->
</head>
<body>


    <div class="container-login100" style="background-image: url('Login/images/bg-01.jpg');">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
            <form class="login100-form validate-form" runat="server">
                <span class="login100-form-title p-b-37">E-Stok Giriş
                </span>

                <div class="wrap-input100 validate-input m-b-20" data-validate="Enter username or email">
                    <asp:TextBox CssClass="input100" ID="TxtKullanici" placeholder="Kullanıcı Adı Giriniz" runat="server"></asp:TextBox>
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
                    <asp:TextBox type="password" ID="TxtParola" CssClass="input100" runat="server" placeholder="Parola Giriniz"></asp:TextBox>
                    <span class="focus-input100"></span>
                </div>

                <div class="container-login100-form-btn">
                    <asp:Button ID="BtnGiris" runat="server" class="login100-form-btn" Text="Giriş Yap" OnClick="Button1_Click" />
                </div>



                <div class="flex-c p-b-112">
                    <a href="https://www.facebook.com/erkanbstn" target="_blank" class="login100-social-item">
                        <i class="fa fa-facebook-f"></i>
                    </a>
                    <a href="https://google.com" target="blank" class="login100-social-item">
                        <img src="Login/images/icons/icon-google.png" alt="GOOGLE">
                    </a>
                </div>
                <div class="text-center">
                    <a href="#" class="txt2 hov1">Kayıt Ol
                    </a>
                </div>
            </form>


        </div>
    </div>



	
<!--===============================================================================================-->
	<script src="Login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Login/vendor/bootstrap/js/popper.js"></script>
	<script src="Login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Login/vendor/daterangepicker/moment.min.js"></script>
	<script src="Login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Login/js/main.js"></script>

</body>
</html>
