
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub searchTB_TextChanged(sender As Object, e As EventArgs) Handles searchTB.TextChanged
        Dim searchWord As String

        'set variable equal to sql statement to perform the search
        searchWord = "Select * From beerT where (Name Like '%" + searchTB.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
