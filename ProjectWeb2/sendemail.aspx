<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="sendemail.aspx.cs" Inherits="ProjectWeb2.WebForm2" %>
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
                        <h3 class="text-center">send e-mail</h3>
                        <hr style="height: 2.5px" />
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1">customer email address </label>
                            <asp:TextBox ID="TextBox1" runat="server"
                                type="text"
                                for="itemname"
                                class="form-control" 
                                Textmode="Email">
                            </asp:TextBox>
                        </div>
                        <div class="mb-3 mt-4">
                            <label class="text-light pb-1"> messeage </label>
                            <asp:TextBox ID="TextBox2" runat="server" 
                                type="text"
                                for="descraption"
                                class="form-control"
                                TextMode="MultiLine"> 
                            </asp:TextBox>
                                
                           
                             
                           
                        </div>

                        <div class="mt-4 me-auto">
                            <asp:Button ID="Button1" runat="server" class="btn btn-success btn-lg" Text="Send" OnClick="Button1_Click"  />
                        </div>

                        <br />
                        <asp:Label ID="Label1" runat="server" Text="" class="mt-4 mb-4 labelA"></asp:Label>
                         </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
