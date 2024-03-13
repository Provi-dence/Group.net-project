<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ELNET_PROJECT.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
        crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 40px;
        }

        .login-form {
            width: 340px;
            margin: 0 auto;
            padding: 30px;
            background-color: #fff;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="login-form">
                        <h2 class="text-center mb-4">Admin Login</h2>
                        <asp:Label ID="lblMessage" runat="server" Text="" CssClass="text-danger d-block mb-3"></asp:Label>
                        <div class="form-group">
                            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
