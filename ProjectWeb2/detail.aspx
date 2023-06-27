<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="ProjectWeb2.detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">product </label>
                            <asp:TextBox ID="TextBox1" runat="server"
                                type="text"
                                for="username"
                                class="form-control"
                                
                                ReadOnly>
                            </asp:TextBox>
                        </div>
                         <div class="mb-3 mt-4">
                            <label class="text-light pb-1">price </label>
                            <asp:TextBox ID="TextBox2" runat="server"
                                type="text"
                                for="username"
                                class="form-control"
                                ReadOnly>
                            </asp:TextBox>
                        </div>
                         <div class="mb-3 mt-4">
                            <label class="text-light pb-1">dicsount </label>
                             <asp:RadioButton ID="RadioButton1" runat="server" GroupName="dis" Text="Yes"/>
                             <asp:RadioButton ID="RadioButton2" runat="server" GroupName="dis" Text="No"/>
                        </div>
                         <div class="mb-3 mt-4">
                            <label class="text-light pb-1">catagory </label>
                            <asp:TextBox ID="TextBox4" runat="server"
                                type="text"
                                for="username"
                                class="form-control"
                                ReadOnly>
                            </asp:TextBox>
                        </div>
                          <center>
                            <div class="mb-3 mt-4">
                            <asp:Image ID="Image1" runat="server" Height="128px" Width="128px" AlternateText="product image" />
                        </div>
                        </center>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
