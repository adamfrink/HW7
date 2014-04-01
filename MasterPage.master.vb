
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        timeLabel.Text = DateTime.Now

    End Sub
End Class

