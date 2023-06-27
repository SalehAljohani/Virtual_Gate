<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="catalog.aspx.cs" Inherits="ProjectWeb2.catalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" >                   	
<HeaderTemplate>
	<div class="container-fluid">
<div class="row">
</HeaderTemplate>
<ItemTemplate>
 <div class="col-md-3">
      	<div class="card mt-5">
          	<div class="card-header">
                	 <asp:Label ID="Label1" runat="server" Text='<%#Eval("name")%>'></asp:Label>
           	</div>
           	<div class="card-body">
             	<asp:Image ID="Image1" Height="150px" Width="150px"  runat="server"
              	ImageUrl ='<%#"~//img//"+Eval("imgfile")%>' />  <br />
                    	</div>
                    	<div class="card-footer">
                     	<asp:HyperLink ID="HyperLink1"   runat ="server"
NavigateUrl='<%# "buy.aspx?idd="+  Eval("Id") %> '> buy   for 
                     	</asp:HyperLink>
                          <asp:Label ID="Label2" runat="server" Text='<%#Eval("price")%>'></asp:Label>
                    	</div>
                	</div>   </div>
</ItemTemplate>
<FooterTemplate></div> </div></FooterTemplate>
</asp:Repeater>


</asp:Content>
