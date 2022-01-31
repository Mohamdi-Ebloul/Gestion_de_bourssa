Public Class achat
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextNumero_TextChanged(sender As Object, e As EventArgs) Handles TextNumero.TextChanged

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        SqlDataSource1.Insert()

    End Sub

    Protected Sub TextNclient_TextChanged(sender As Object, e As EventArgs) Handles TextNclient.TextChanged

    End Sub
End Class