<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rejestracja.aspx.cs" Inherits="WebApplication1.Rejestracja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left:500px; margin-right:200px; width: 450px;">
        Login:<br />
        <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLogin" runat="server" ForeColor="Red" visible="false" Text="*Wypełnij poprawnie pole login"></asp:Label>
        <br />
        Password:<br />
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPassword" runat="server" ForeColor="Red" Text="*Wypełnij poprawnie pole password"></asp:Label>
        <br />
        Confirm Password:<br />
        <asp:TextBox ID="txtPasswordC" TextMode="Password" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPasswordC" runat="server" ForeColor="Red" Text="*Wpisałeś dwa różne hasła"></asp:Label>
        <br />
        Email:<br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblEmail" runat="server" ForeColor="Red" visible="false" Text="*Wypełnij poprawnie pole Email"></asp:Label>
        <br />
        Phone:<br />
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPhone" runat="server" ForeColor="Red" visible="false" Text="*Wypełnij poprawnie pole Phone"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="lblConfirmRegister" runat="server" Text="Registration is Complete!!!"></asp:Label>
        <br/>
        <asp:Label ID="lblCheckEmptyFields" runat="server" visible="false" Text="Uzupełnij wszystkie pola"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Reset"  OnClick="Button2_Click" style="margin-left: 6px" />
     
 
    </div>
    </form>
</body>
</html>
