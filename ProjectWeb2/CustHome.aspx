<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustHome.aspx.cs" Inherits="ProjectWeb2.CustHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

        <br />
        <br />
        <h1>our discounts</h1>
         <asp:Repeater ID="Repeater1" runat="server" >                   	
<HeaderTemplate>
	<div class="container-fluid">
<div class="row">
</HeaderTemplate>
<ItemTemplate>
 <div class="col-md-3">
      	<div class="card">
          	<div class="card-header">
                	ID: <asp:Label ID="Label2" runat="server" Text='<%#Eval("Id")%>'></asp:Label>
           	</div>
           	<div class="card-body">
             	<asp:Image ID="Image1" Height="150px" Width="150px"  runat="server"
              	ImageUrl ='<%#"~//img//"+Eval("imgfile")%>' />  <br />
                 	Title:
                  	<asp:Label ID="Label3" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                    	</div>
                    	<div class="card-footer">
                     	<asp:HyperLink ID="HyperLink1"   runat ="server"
NavigateUrl='<%# "detail.aspx?idd="+  Eval("Id") %> '> more </asp:HyperLink>
                    	</div>
                	</div>   </div>
</ItemTemplate>
<FooterTemplate></div> </div></FooterTemplate>
</asp:Repeater>
        <footer>
            <p>Tu4100533@taibahu.edu.sa <br />   Phone Number:0591234083</p>
        </footer>
    </center>
</asp:Content>
