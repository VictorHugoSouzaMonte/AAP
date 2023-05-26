<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AAP.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="SignUp.css" />
</head>
<body>
    <div class="container" id="Login1">
        <form id="form1" runat="server" class="form">

            <asp:Label ID="lblMensagem" runat="server"></asp:Label>


            <div align="center" class="header">Login
            </div>
            <div class="form-control">
                <asp:Label ID="UserNameLabel" runat="server">Nome do Usuário:</asp:Label>

                <asp:TextBox ID="txtNome" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="txtNome" ErrorMessage="O Nome do Usuário é obrigatório." ToolTip="O Nome do Usuário é obrigatório." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
            </div>
             <div class="form-control">
                <asp:Label ID="lblRg" runat="server">RG: </asp:Label>

                <asp:TextBox ID="txtRg" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RgRequiredField" runat="server" ControlToValidate="txtRg" ErrorMessage="O Rg do Usuário é obrigatório." ToolTip="O Rg do Usuário é obrigatório." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
            </div>
           
            <div class="form-control">
                <asp:Label ID="UserEmailLabel" runat="server">E-mail:</asp:Label>

                <asp:TextBox ID="txtEmail" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="O E-mail é obrigatório." ToolTip="O E-mail é obrigatório." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:Label ID="PasswordLabel" runat="server">Senha:</asp:Label>

                <asp:TextBox ID="txtPassword" runat="server" CssClass="formControlTextBox" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword" ErrorMessage="A senha é obrigatória." ToolTip="A senha é obrigatória." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">

                <asp:Label ID="PasswordConfirmLabel" runat="server">Confirme sua Senha:</asp:Label>

                <asp:TextBox ID="txtPasswordConfirm" runat="server" CssClass="formControlTextBox" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPasswordConfirm" ErrorMessage="A Confirmação de senha é obrigatória." ToolTip="A Confirmação de senha é obrigatória." ValidationGroup="Login1">*</asp:RequiredFieldValidator>

            </div>
            <div class="form-control">
                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordConfirm" CssClass="formControlLabel" Display="Static" ErrorMessage="A Senha e a Senha de Confirmação devem coincidir." ValidationGroup="sign"></asp:CompareValidator>

                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>

            </div>
            <div class="form-control">
                <asp:CheckBox ID="RememberMe" runat="server" Text="Lembrar na próxima vez." />

            </div>
            <div class="form-control" align="Center">
                <asp:Button ID="LoginButton" runat="server" CommandName="Login" CssClass="bnt" Text="Login" ValidationGroup="Login1" OnClick="LoginButton_Click"  />
            </div>
            <div class="form-control" align="Center">
                <asp:Button ID="SignUpButton" runat="server" CommandName="SignUp" CssClass="bnt" Text="Sign Up" OnClick="SignUpButton_Click"  />



            </div>
        </form>
    </div>
</body>
</html>
