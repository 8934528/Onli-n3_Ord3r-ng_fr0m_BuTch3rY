<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MabovulaButchery.Pages.login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mabovula Butchery - Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="login.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="login-background"></div>
            <div class="login-form animate-form">
                <div class="logo-container">
                    <h1 class="logo-text">Mabovula</h1>
                    <p class="logo-subtext">Butchery & Frozen Goods</p>
                </div>
                
                <h2 class="form-title">Welcome Back!</h2>
                <p class="form-subtitle">Please login to your account</p>
                
                <div class="form-group">
                    <div class="input-group">
                        <i class="fa fa-user"></i>
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" CssClass="form-input"></asp:TextBox>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="input-group">
                        <i class="fa fa-lock"></i>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="form-input"></asp:TextBox>
                    </div>
                </div>
                
                <div class="form-options">
                    <label class="remember-me">
                        <input type="checkbox" id="rememberMe" />
                        <span class="checkmark"></span>
                        Remember me
                    </label>
                    <a href="#" class="forgot-password">Forgot password?</a>
                </div>
                
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-button" />
                
                <div class="signup-link">
                    Don't have an account? <a href="../signup/signup.aspx">Sign up</a>
                </div>
            </div>
        </div>
    </form>

    <script src="login.js"></script>
    <script src="../../Scripts/bootstrap.js"></script>
</body>
</html>
