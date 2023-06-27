<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="ProjectWeb2.Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="211px" Width="705px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Total Price" HeaderText="Total Price" ReadOnly="True" SortExpression="Total Price" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;C:\USERS\ADMINISTRATOR\SOURCE\REPOS\PROJECTWEB2\DB\MYDB.MDF&quot;;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT orders.username AS Username, orders.quantity * itemsall.price AS [Total Price] FROM orders INNER JOIN itemsall ON orders.Id = itemsall.Id
"></asp:SqlDataSource>
            <br />
            <div class="container-fluid col-md-2 mt-5 pt-5"></div>
            <div class="container-fluid col-md-8 pt-5">
                <h3 class="text-black searchlabel">Search</h3>
                <div id="search" class="input-group w-75 ms-auto me-auto">
                    <input
                        type="text"
                        id="searchBar"
                        list="ProductList"
                        class="form-control mt-1" />
                    </div>
                </div>
            <br />
            <asp:Button ID="Button1" class="btn btn-success h-100 mt-1" runat="server" Text="Search" />
        </center>
    </form>
</asp:Content>
