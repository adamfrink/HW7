<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_beerWebsite %>" SelectCommand="SELECT * FROM [beerT]"></asp:SqlDataSource>

    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" CssClass="gviewbkgr" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="BrewertyName" HeaderText="Brewery Name" SortExpression="BrewertyName" />
            <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="designview.aspx?Id={0}" Text="View Details" />
        </Columns>
        <AlternatingRowStyle CssClass="altRow" />
        <HeaderStyle CssClass="headstyle" />
    </asp:GridView>

    

</asp:Content>


