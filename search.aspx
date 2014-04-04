<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_beerWebsite %>" SelectCommand="SELECT * FROM [beerT]"></asp:SqlDataSource>

    <br />

    <asp:Label ID="Label1" runat="server" CssClass="gviewbkgr"  Text="Search Beer"></asp:Label>
    <asp:TextBox ID="searchTB" runat ="server"></asp:TextBox>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" CssClass="gviewbkgr"  DataSourceID="SqlDataSource1">
     <HeaderStyle CssClass="headstyle" />
   <AlternatingRowStyle CssClass="altRow" />
     </asp:GridView>
   
</asp:Content>


