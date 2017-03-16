<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logueo.aspx.cs" Inherits="Inmobiliario.Logueo" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
       #nav 
       {
           width:500px;
           margin:auto;
       }
        /*.auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 43px;
        }
        .auto-style3 {
            height: 126px;
        }*/
    </style>
</head>
<%--<body style="width: 445px" >--%>
 <body >
    <form id="form1" runat="server">
   <%-- <div  id="nav" class="auto-style1" style="height: 418px; width: 308px;" >--%>
    <div  id="nav" class="auto-style1" style="height: 418px; width: 308px;" >
      
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="87px" ImageUrl="~/Imagenes/LogoEntorno.jpg" style="text-align: center" Width="218px" />
                </td>
            </tr>
            <tr>
                <td>
    
        <asp:Label ID="Label1" runat="server" Text="Usuario" Font-Names="Calibri Light" Font-Size="14pt" ForeColor="Gray"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
        <asp:TextBox ID="txtusuario" runat="server" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" Font-Size="14pt" style="text-align: left" Width="183px" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label2" runat="server" Text="Clave" BackColor="White" Font-Names="Calibri Light" Font-Size="14pt" ForeColor="Gray"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                     <asp:TextBox ID="txtclave" runat="server" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" Font-Size="14pt" TextMode="Password" Width="183px" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnaceptar" runat="server" BackColor="#66CCFF" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Calibri Light" Font-Size="14pt" ForeColor="White" Height="48px" OnClick="btnaceptar_Click" Text="Aceptar" Width="177px" />
                </td>
            </tr>
        </table>       
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
