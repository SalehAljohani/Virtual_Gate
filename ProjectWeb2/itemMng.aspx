<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="itemMng.aspx.cs" Inherits="ProjectWeb2.itemMng" %>

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
                        <h3 class="text-center">Item Management</h3>
                        <hr style="height: 2.5px" />
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Item name: </label>
                            <asp:TextBox ID="TextBox1" runat="server"
                                type="text"
                                for="itemname"
                                class="form-control" OnTextChanged="TextBox1_TextChanged">
                            </asp:TextBox>
                        </div>
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Item Descraption: </label>
                            <asp:TextBox ID="TextBox2" runat="server"
                                type="text"
                                for="descraption"
                                class="form-control">
                            </asp:TextBox>
                        </div>
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Item price: </label>
                            <asp:TextBox ID="TextBox3" runat="server"
                                type="text"
                                for="price"
                                TextMode="Number"
                                class="form-control">
                            </asp:TextBox>
                        </div>
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Item quantity: </label>
                            <asp:TextBox ID="TextBox4" runat="server"
                                type="text"
                                TextMode="Number"
                                for="quantity"
                                class="form-control">
                            </asp:TextBox>
                        </div>
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Item discount: </label>
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="dis" Text="Yes" />
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="dis" Text="No"/>
                        </div>
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Item category: </label>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Dell</asp:ListItem>
                                <asp:ListItem>Lenovo</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <center>
                            <div class="mb-3 mt-4">
                            <asp:Image ID="Image1" runat="server" Height="128px" Width="128px" AlternateText="product image" />
                        </div>
                        </center>

                        <div class="mb-3 mt-4">
                            <br />
                            <label class="text-light pb-1">Upload Image: </label>
                            <br />
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>

                        <div class="mt-4 me-auto">
                            <asp:Button ID="Button1" runat="server" class="btn btn-success btn-lg" Text="Insert" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" class="btn btn-success btn-lg" Text="Update" OnClick="Button2_Click" />
                            <asp:Button ID="Button3" runat="server" class="btn btn-success btn-lg" Text="Delete" OnClick="Button3_Click" />
                        </div>

                        <br />
                        <asp:Label ID="Label1" runat="server" Text="" class="mt-4 mb-4 labelA"></asp:Label>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
