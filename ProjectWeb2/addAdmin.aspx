<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addAdmin.aspx.cs" Inherits="ProjectWeb2.addAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row mt-5 mb-5"></div>
        <div class="row mt-5 mb-5"></div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 mt-5 ms-auto me-auto divform">
                <form id="form1" runat="server" class="pt-3">
                    <div>
                        <h3 class="text-center">add admin</h3>
                        <hr style="height: 2.5px" />
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Username: </label>
                            <asp:TextBox ID="TextBox1" runat="server"
                                type="text"
                                for="username"
                                class="form-control"
                                MaxLength="12">
                            </asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="text-light pb-1">Password: </label>
                            <asp:TextBox ID="TextBox2" runat="server"
                                type="password"
                                for="password"
                                class="form-control">
                            </asp:TextBox>
                        </div>
                         <div class="mb-3">
                            <label class="text-light pb-1">confirm password: </label>
                            <asp:TextBox ID="TextBox3" runat="server"
                                type="password"
                                for="password"
                                class="form-control">

                            </asp:TextBox>
                        </div>
                        <div class="mt-4">
                            <asp:Button ID="Button1" runat="server" class="btn btn-success w-100 btn-lg" Text="add" OnClick="Button1_Click"  />
                        </div>
                       <br />

     <asp:Label ID="Label1" runat="server" Text="" class="mt-4 mb-4 labelA"></asp:Label>
                    </div>
                   
                </form>
            </div>
        </div>
    </div>
</asp:Content>
