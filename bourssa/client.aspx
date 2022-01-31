<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="client.aspx.vb" Inherits="bourssa.client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #add8e6; color: black;">
    <form id="form1" runat="server">
    <div align="center" style="width: 689px; margin-left: 188px">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:boursaConnectionString3 %>" DeleteCommand="DELETE FROM vendeurs WHERE (Numero_vd = @Numero_vd)" InsertCommand="INSERT INTO vendeurs(Numero_vd,Nom,Tel, Solde) VALUES (@Numero_vd,@Nom,@Tel,0)" SelectCommand="SELECT * FROM [vendeurs]" UpdateCommand="UPDATE vendeurs SET Nom =@Nom, Tel =@Tel WHERE Numero_vd =@Numero_vd">
            <DeleteParameters>
                <asp:ControlParameter ControlID="TextNumero" Name="Numero_vd" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextNumero" Name="Numero_vd" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextNom" Name="Nom" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextTel" Name="Tel" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="TextNumero" Name="Numero_vd" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextNom" Name="Nom" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextTel" Name="Tel" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
     <div style="background-color: #6dd1e4; color: black; width: 415px; height: 169px;">
        Numero&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextNumero" runat="server" Width="184px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
         <br />
        <br />
        Nom&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextNom" runat="server" Width="184px"></asp:TextBox>
         <br />
&nbsp;<br />
        Tel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextTel" runat="server" Width="182px"></asp:TextBox>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Ajouter" />
&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Button ID="Button3" runat="server" Text="Modifier" />
&nbsp;&nbsp; <asp:Button ID="Button4" runat="server" Text="Suprimer" />
&nbsp;
       </div> <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="495px" Height="158px">
            <Columns>
                <asp:BoundField DataField="Numero_vd" HeaderText="Numero_vd" SortExpression="Numero_vd" />
                <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                <asp:BoundField DataField="Solde" HeaderText="Solde" SortExpression="Solde" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
