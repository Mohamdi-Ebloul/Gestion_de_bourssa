﻿Public Class voiture
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
   

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click



        SqlDataSource1.Insert()

    End Sub



End Class