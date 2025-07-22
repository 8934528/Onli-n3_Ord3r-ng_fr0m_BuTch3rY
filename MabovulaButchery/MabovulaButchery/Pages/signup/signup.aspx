<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="MabovulaButchery.Pages.signup.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mabovula Butchery - Register</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="signup.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="register-container">
            <div class="register-background"></div>
            <div class="register-form animate-form">
                <div class="logo-container">
                    <h1 class="logo-text">Mabovula</h1>
                    <p class="logo-subtext">Butchery & Frozen Goods</p>
                </div>
                
                <h2 class="form-title">Create Account</h2>
                <p class="form-subtitle">Join our community today</p>
                
                <div class="form-group">
                    <div class="input-group">
                        <i class="fa fa-user"></i>
                        <asp:TextBox ID="txtFullName" runat="server" placeholder="Full Name" CssClass="form-input"></asp:TextBox>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="input-group">
                        <i class="fa fa-envelope"></i>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address" CssClass="form-input" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="input-group">
                        <i class="fa fa-phone"></i>
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone Number" CssClass="form-input" TextMode="Phone"></asp:TextBox>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="input-group">
                        <i class="fa fa-lock"></i>
                        <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="form-input" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="input-group">
                        <i class="fa fa-lock"></i>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" placeholder="Confirm Password" CssClass="form-input" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                
                <div class="form-checkbox">
                    <label class="terms-checkbox">
                        <input type="checkbox" id="agreeTerms" />
                        <span class="checkmark"></span>
                        I agree to the <a href="../TnCs/TnCs.aspx">Terms & Conditions</a>
                    </label>
                </div>
                
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="register-button" />
                
                <div class="login-link">
                    Already have an account? <a href="login.aspx">Login</a>
                </div>
            </div>
        </div>
    </form>

    <script src="signup.js"></script>
    <script src="../../Scripts/bootstrap.js"></script>
</body>
</html>
