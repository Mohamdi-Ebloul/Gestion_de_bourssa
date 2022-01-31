Imports System.Web
Imports System.Data.SqlClient

Public Class connexion


    Public cn As New SqlConnection("Data Source=DESKTOP-AFU7UFV\SQLEXPRESS;Initial Catalog=stock;Integrated Security=True")
    Public N As Integer
    Public nom As String
    Public prenom As String


End Class
