<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectWeb2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
        crossorigin="anonymous" />
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
        integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
        crossorigin="anonymous"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
        integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
        crossorigin="anonymous"></script>

    <style>
        body {
            font-size: larger;
            background-image: url(Img/background.jpg);
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            width: 100%;
            height: 100%;
        }

        .divform {
            background-color: rgba(61, 61, 61, 1);
            border-radius: 20px;
            color: white;
        }
    </style>
    <title>Login Page</title>
</head>
<body>
    <div class="container-fluid">
        <div class="row mt-5 mb-5"></div>
        <div class="row mt-5 mb-5"></div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 mt-5 ms-auto me-auto divform">
                <form id="form1" runat="server" class="pt-3">
                    <div>
                        <h3 class="text-center">Login</h3>
                        <hr style="height: 2.5px" />
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Username: </label>
                            <asp:TextBox ID="TextBox1" runat="server"
                                type="text"
                                for="username"
                                class="form-control"
                                >
                            </asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="text-light pb-1">Password: </label>
                            <asp:TextBox ID="TextBox2" runat="server"
                                type="password"
                                for="password"
                                class="form-control"
                                required>

                            </asp:TextBox>
                        </div>
                        <asp:CheckBox ID="CheckBox1" runat="server"
                            type="checkbox"
                            for="remember"
                            class="form-check-input mt-3" />
                        <label class="mt-2">Auto Login!!</label>

                        <div class="mt-4">
                            <asp:Button ID="Button1" runat="server" class="btn btn-success w-100 btn-lg" Text="Login" OnClick="Button1_Click" />


                        </div>

                        <label class="mt-4 mb-4 labelA">
                            Not registered yet?
                <a href="reg.aspx" class="fw-bold text-secondary">Register!
                </a>
                        </label>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="" class="mt-4 mb-4 labelA"></asp:Label>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
