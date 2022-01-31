<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="log.aspx.vb" Inherits="bourssa.log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 297px;
        }
    </style>
</head>
<body style="background-color: #add8e6; color: black; width: 530px; height: 243px; margin-left: 392px;"> <div align="center" style="height: 301px; width: 408px;">
    <div style="background-color: #6dd1e4; color: black; width: 411px;">
    <form id="form1" runat="server">
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Autentificaton<br />
        <br />
&nbsp;&nbsp;&nbsp;
        Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="184px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Width="184px"></asp:TextBox>
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Connecter" Width="70px" />
       
   
    
    
    </form></div>
</body>
</html>
