<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newBeer.aspx.vb" Inherits="designview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_beerWebsite %>" SelectCommand="SELECT * FROM [beerT]" DeleteCommand="DELETE FROM [beerT] WHERE [Id] = @Id" InsertCommand="INSERT INTO [beerT] ([Name], [Type], [ABV], [BrewertyName], [City], [State], [Score], [Review], [Notes]) VALUES (@Name, @Type, @ABV, @BrewertyName, @City, @State, @Score, @Review, @Notes)" UpdateCommand="UPDATE [beerT] SET [Name] = @Name, [Type] = @Type, [ABV] = @ABV, [BrewertyName] = @BrewertyName, [City] = @City, [State] = @State, [Score] = @Score, [Review] = @Review, [Notes] = @Notes WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="ABV" Type="String" />
            <asp:Parameter Name="BrewertyName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Score" Type="String" />
            <asp:Parameter Name="Review" Type="String" />
            <asp:Parameter Name="Notes" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="ABV" Type="String" />
            <asp:Parameter Name="BrewertyName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Score" Type="String" />
            <asp:Parameter Name="Review" Type="String" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="464px" AutoGenerateRows="False" DataKeyNames="Id" CssClass="dtviewbg"  DataSourceID ="SqlDataSource1" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="ABV" HeaderText="ABV" SortExpression="ABV" />
            <asp:BoundField DataField="BrewertyName" HeaderText="BrewertyName" SortExpression="BrewertyName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
            <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:CommandField ShowInsertButton="True" ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FieldHeaderStyle CssClass="headstyle" />
    </asp:DetailsView>
</asp:Content>

