<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CustSearch.aspx.cs" Inherits="ProjectWeb2.CustSearch" %>

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
                        <h3 class="text-center">Customer Search</h3>
                        <hr style="height: 2.5px" />
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">Customer Name: </label>
                            <asp:TextBox ID="TextBox1" runat="server"
                                type="text"
                                for="username"
                                class="form-control"
                                MaxLength="12" OnTextChanged="TextBox1_TextChanged">
                            </asp:TextBox>
                        </div>
                        <center>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="" class="mt-4 mb-4 labelA"></asp:Label>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="" class="mt-4 mb-4 labelA"></asp:Label>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="" class="mt-4 mb-4 labelA"></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="" class="mt-4 mb-4 labelA"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                        </center>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
