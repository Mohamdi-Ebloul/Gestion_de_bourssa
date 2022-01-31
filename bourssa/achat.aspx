<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="achat.aspx.vb" Inherits="bourssa.achat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #add8e6; color: black;"><div align="center">
    <form id="form1" runat="server">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:boursaConnectionString7 %>" SelectCommand="SELECT * FROM [vente]" DeleteCommand="DELETE FROM [vente] WHERE [Numero_vente] = @Numero_vente" InsertCommand="INSERT INTO [vente] ([Numero_vente], [Numero_v], [Prix], [Nom_Voiture]) VALUES (@Numero_vente, @Numero_v, @Prix, @Nom_Voiture)" UpdateCommand="UPDATE [vente] SET [Numero_v] = @Numero_v, [Prix] = @Prix, [Date] = @Date, [Nom_Voiture] = @Nom_Voiture WHERE [Numero_vente] = @Numero_vente">
            <DeleteParameters>
                <asp:Parameter Name="Numero_vente" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextNumero" Name="Numero_vente" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextNclient" Name="Numero_v" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextPrix" Name="Prix" PropertyName="Text" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:ControlParameter ControlID="TextNom" Name="Nom_Voiture" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Numero_v" Type="Int32" />
                <asp:Parameter Name="Prix" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="Nom_Voiture" Type="String" />
                <asp:Parameter Name="Numero_vente" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
     
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnectionString %>" DeleteCommand="DELETE FROM [clients] WHERE [Numero_client] = @Numero_client" InsertCommand="INSERT INTO [clients] ([Numero_client]) VALUES (@Numero_client)" SelectCommand="SELECT [Numero_client] FROM [clients]">
            <DeleteParameters>
                <asp:Parameter Name="Numero_client" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Numero_client" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
     
        <br />
        <div style="background-color: #6dd1e4; color: black; width: 411px;">
            <br />
            <br />
        Numero&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextNumero" runat="server" Width="168px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <br />
        Voiture&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextNom" runat="server" Width="180px"></asp:TextBox>
        &nbsp;<br />
        Prix&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextPrix" runat="server" Width="144px"></asp:TextBox>
&nbsp;MRU&nbsp;&nbsp;
&nbsp;<br />
            Tel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextNclient" runat="server" Width="182px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;
        &nbsp;
        <asp:Button ID="Button2" runat="server" Text="Ajouter" />
&nbsp;&nbsp;<br />
            </div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="157px" Width="562px" DataKeyNames="Numero_vente">
            <Columns>
                <asp:BoundField DataField="Numero_vente" HeaderText="Numero_vente" SortExpression="Numero_vente" ReadOnly="True" />
                <asp:BoundField DataField="Numero_v" HeaderText="Numero_v" SortExpression="Numero_v" />
                <asp:BoundField DataField="Prix" HeaderText="Prix" SortExpression="Prix" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Nom_Voiture" HeaderText="Nom_Voiture" SortExpression="Nom_Voiture" />
            </Columns>
        </asp:GridView>
    
    <div>
    
    </div>
    </form></div>
</body>
</html>
