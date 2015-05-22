<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logowanie.aspx.cs" Inherits="WebApplication1.Logowanie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left:500px">
        Login:<br />
        <asp:TextBox ID="txtLogin" runat="server" style="margin-left: 1px"></asp:TextBox>
        <asp:Label ID="lblLogin" runat="server" ForeColor="Red" Text="*Niepoprawny login" Visible="False"></asp:Label>
        <br />
        <br />
        Password:<br/>
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        <asp:Label ID="lblPassword" runat="server" ForeColor="Red" Text="*Niepoprawne hasło" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblCheck" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Zaloguj" Height="26px" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
