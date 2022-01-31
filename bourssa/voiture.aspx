<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="voiture.aspx.vb" Inherits="bourssa.voiture" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #add8e6; color: black;"><div align="center">
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:boursaConnectionString5 %>" SelectCommand="SELECT * FROM [voiture]" InsertCommand="INSERT INTO voiture(Numero_v, Nom, Numero_vd, Prix, Qte) VALUES (@Numero_v,@Nom,@Numero_vd,@Prix,@Qte)">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextNumero" Name="Numero_v" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextNom" Name="Nom" PropertyName="Text" />
                <asp:ControlParameter ControlID="listV" Name="Numero_vd" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextPrix" Name="Prix" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextQte" Name="Qte" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlNomVd" runat="server" ConnectionString="<%$ ConnectionStrings:boursaConnectionString4 %>" SelectCommand="SELECT [Nom], [Numero_vd] FROM [vendeurs]"></asp:SqlDataSource>
     </div>
        <br /><div style="background-color: #6dd1e4; color: black; width: 411px;">
            <br />
        Numero&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextNumero" runat="server" Width="184px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
        <br />
            Nom&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextNom" runat="server" Width="184px"></asp:TextBox>
            <br />
        <br />
            Vendeurs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="listV" runat="server" DataSourceID="SqlNomVd" DataTextField="Nom" DataValueField="Numero_vd" Height="33px" Width="189px">
            </asp:DropDownList>
            &nbsp;
            &nbsp;<br />
            <br />
        Prix&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="TextPrix" runat="server" Width="144px"></asp:TextBox>
&nbsp;MRU&nbsp;
            <br />
            <br />
            Qte&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextQte" runat="server" Width="180px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Ajouter" />
&nbsp;</div>
      
        <br />
      
        <br />
            
    </div>
    </form>
</body>
</html>
