<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="buy.aspx.cs" Inherits="ProjectWeb2.buy" %>
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
        <div class="row mt-3 mb-3"></div>
        <div class="row"></div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 mt-5 ms-auto me-auto divform">
                <form id="form1" runat="server" class="pt-3">
                    <div>
                        <h3 class="text-center">buy</h3>
                        <hr style="height: 2.5px" />
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">product </label>
                            <asp:TextBox ID="TextBox1" runat="server"
                                type="text"
                                for="itemname"
                                class="form-control"
                                Enabled="False">
                            </asp:TextBox>
                        </div>
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">price </label>
                            <asp:TextBox ID="TextBox2" runat="server"
                                type="text"
                                for="descraption"
                                class="form-control"
                                Enabled="False">
                            </asp:TextBox>
                        </div>
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1"> discount </label>
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="dis" Text="Yes" />
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="dis" Text="No" />
                        </div>
                         
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Item category: </label>
                            <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
                        </div>
                         
                        <center>
                            <div class="mb-3 mt-4">
                            <asp:Image ID="Image1" runat="server" Height="128px" Width="128px" AlternateText="product image" />
                        </div>
                        </center>

                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Item quantity: </label>
                            <asp:TextBox ID="TextBox4" runat="server"
                                type="text"
                                TextMode="Number"
                                for="quantity"
                                class="form-control" AutoPostBack="true" OnTextChanged="TextBox4_TextChanged">
                            </asp:TextBox>
                        </div>
                      <center>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="" class="mt-4 mb-4 labelA"></asp:Label>
                        
                        <div class="mt-4 me-auto">
                            <asp:Button ID="Button1" runat="server" class="btn btn-success btn-lg" Text="buy" OnClick="Button1_Click"  />
                        </div>
                            <br />
                        </center>
                         <asp:Label ID="Label2" runat="server" Text="" class="mt-4 mb-4 labelA"></asp:Label>
                        <br />
                        <br />


                      
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
