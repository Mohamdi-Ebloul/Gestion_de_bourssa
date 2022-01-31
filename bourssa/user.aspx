<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="user.aspx.vb" Inherits="bourssa.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body style="background-color: #add8e6; color: black;">
    <form id="form1" runat="server">
    <div align="center" style="width: 689px; margin-left: 188px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:boursaConnectionString2 %>" DeleteCommand="DELETE FROM [users] WHERE [Numero_user] = @Numero_user" InsertCommand="INSERT INTO users(Numero_user, Nom, PW) VALUES (@Numero_user, @Nom, @PW)" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [Nom] = @Nom, [PW] = @PW WHERE [Numero_user] = @Numero_user">
            <DeleteParameters>
                <asp:ControlParameter ControlID="TextNumero" Name="Numero_user" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextNumero" Name="Numero_user" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextNom" Name="Nom" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextPass" Name="PW" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="TextNom" Name="Nom" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextPass" Name="PW" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextNumero" Name="Numero_user" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
    &nbsp;<div style="background-color: #6dd1e4; color: black; width: 441px; height: 262px;">

            <br />
            <br />

        Numero &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextNumero" runat="server" Width="184px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
        <br />
        Nom&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextNom" runat="server" Width="184px"></asp:TextBox>
&nbsp;<br />
            <br />
        Password&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextPass" runat="server" Width="180px"></asp:TextBox>
              <br />
              <br />
        <br />
       
&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Ajouter" />
&nbsp;&nbsp;
&nbsp;<asp:Button ID="Button3" runat="server" Text="Modifier" />
&nbsp;
&nbsp;<asp:Button ID="Button4" runat="server" Text="Suprimer" />
&nbsp;
       </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="434px">
            <Columns>
                <asp:BoundField DataField="Numero_user" HeaderText="Numero_user" SortExpression="Numero_user" />
                <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                <asp:BoundField DataField="PW" HeaderText="PW" SortExpression="PW" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
     
    </div>
    </form>
</body>
</html>
