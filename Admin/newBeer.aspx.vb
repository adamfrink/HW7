
Partial Class designview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Dim deletedBeer As String = e.Values("Name").ToString()

        Response.Write("The record")
        Response.Write("<span class-deletedBeersHighlight>")
        Response.Write("deletedBeer")
        Response.Write("</span> has been added from the database.")

        Response.AddHeader("REFRESH", "4;URL=./gridview.aspx")

        'Response.Redirect("./gridview.aspx")
    End Sub
End Class
