<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="designview.aspx.vb" Inherits="designview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_beerWebsite %>" SelectCommand="SELECT * FROM [beerT] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="464px" AutoGenerateRows="False" DataKeyNames="Id" CssClass="dtviewbg"  DataSourceID ="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="ABV" HeaderText="ABV" SortExpression="ABV" />
            <asp:BoundField DataField="BrewertyName" HeaderText="Brewery Name" SortExpression="BrewertyName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
            <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
        </Fields>
       

    </asp:DetailsView>
</asp:Content>

