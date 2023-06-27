<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="mypurchase.aspx.cs" Inherits="ProjectWeb2.mypurchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <center>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="243px" Width="779px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Item Name" HeaderText="Item Name" SortExpression="Item Name" />
                    <asp:BoundField DataField="Buy Date" HeaderText="Buy Date" SortExpression="Buy Date" />
                    <asp:BoundField DataField="Total Price" HeaderText="Total Price" ReadOnly="True" SortExpression="Total Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;C:\USERS\ADMINISTRATOR\SOURCE\REPOS\PROJECTWEB2\DB\MYDB.MDF&quot;;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT itemsall.name AS [Item Name], orders.buydate AS [Buy Date], itemsall.price * orders.quantity AS [Total Price], orders.quantity AS Quantity FROM itemsall INNER JOIN orders ON itemsall.Id = orders.itemid
"></asp:SqlDataSource>
    <br />
    <br />
    
            </center>
    </form>
</asp:Content>
