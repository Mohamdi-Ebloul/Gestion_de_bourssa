<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="acceil.aspx.vb" Inherits="bourssa.acceil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         #b {border-radius:20px;font-size:100%;height:40px;width:80px; background-color:gainsboro ;color:black ;font-size :150%;}
           .b1 {border-radius:20px;font-size:80%;height:45px;width:90px;background-color :blue ;color :white ; }

        .b {
            height: 154px;
            width: 261%;
        }

    </style>
    </head>
<body style="background-color: #add8e6;">
    <form id="form1" runat="server">
    <center>
          <h1><font face="snap itc" size="280%" color=black style="position: fixed; top: 10px; center: 349px; height: 75px; width: 392px; left: 333px; size:200%;">BOURSA&trade;</font></h1>
          <p>&nbsp;</p>
       
            <div style="position: fixed; align:center; top: 94px; left: 17px; height: 46px; width: 423px;">
               <table class="b"><tr>
                  <td> <asp:Button  style="background-color: #d3d3d3; color:  black; " ID="Button1" runat="server" Text="Ajoute Voiture" Width="99px" Height ="30px" />
                &nbsp;&nbsp;&nbsp;</td>
                   <td> <asp:Button  style="background-color: #d3d3d3; color:  black; " ID="Button5" runat="server" Text="Acheter" Width="99px" Height ="30px" />
                &nbsp;&nbsp;&nbsp;</td>
               <td> <asp:Button style="background-color: #e6e6f6;color: black;" ID="Button2" runat="server" Text="Vendeur" Width="87px" Height ="30px" />
                &nbsp;</td>
               <td> <asp:Button style="background-color: #f0fff0;color: black;" ID="Button3" runat="server" Text="Utilisateur" Width="91px" Height ="30px" />
                &nbsp;</td>
                <td><asp:Button ID="Button4" runat="server" Text="Deconnexion" Width="92px" Height ="30px" />
                </td></tr>
                   <tr>
                       <td colspan="5">
                          <asp:Image ID="Image1" runat="server" Height="560px" ImageUrl="~/image/a.png" Width="1086px" />
&nbsp;</td>
                   </tr>
               </table> </div>&nbsp; <br />
       
          <br />
       
       
       </center>
        <p style="height: 829px; width: 1105px;">
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:boursaConnectionString6 %>" SelectCommand="SELECT [Nom], [Prix] FROM [voiture]">
              </asp:SqlDataSource>
          </p>
       
        
    </form>
</body>
</html>
