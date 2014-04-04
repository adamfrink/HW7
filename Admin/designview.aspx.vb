
Partial Class designview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleting(sender As Object, e As DetailsViewDeleteEventArgs) Handles DetailsView1.ItemDeleting
        Dim deletedBeer As String = e.Values("Name").ToString()

        Response.Write("The record")
        Response.Write("<span class-deletedBeersHighlight>")
        Response.Write("deletedBeer")
        Response.Write("</span> has been deleted from the database.")

        Response.AddHeader("REFRESH", "4;URL=./gridview.aspx")
        'Response.Write("The record has been deletd from the database")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.Redirect("./gridview.aspx")
    End Sub


End Class
