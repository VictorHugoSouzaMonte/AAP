<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="AAP.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SignUp</title>
       <link rel="stylesheet" type="text/css" href="SignUp.css"/>
</head>
<body>
      <div class="container" id="sign">
        <form id="form1" runat="server" class="form">

            <div align="center" class="header">Sign Up</div>

            <div class="form-control">
                <asp:Label ID="UserNameLabel" runat="server" CssClass="formControlLabel">Nome do Usuário:</asp:Label>

                <asp:TextBox ID="txtNome" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="txtNome" ErrorMessage="O Nome do Usuário é necessário." ToolTip="O Nome do Usuário é necessário." ValidationGroup="sign">*</asp:RequiredFieldValidator>

            </div>
            <div class="form-control">
                <asp:Label ID="lblRg" runat="server"  CssClass="formControlLabel">RG: </asp:Label>

                <asp:TextBox ID="txtRg" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lblRgRequired" runat="server" ControlToValidate="txtrg" ErrorMessage="O Rg é necessário." ToolTip="O Rg é necessário." ValidationGroup="sign">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">

                <asp:Label ID="lblDt" runat="server"  CssClass="formControlLabel">Dt.Nascimento: </asp:Label>

                <asp:TextBox ID="txtDt" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lblDtRequired" runat="server" ControlToValidate="txtDt" ErrorMessage="A data de nascimento é necessária." ToolTip="A data de nascimento é necessária." ValidationGroup="sign">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:Label ID="EmailLabel" runat="server"  CssClass="formControlLabel">Email:</asp:Label>

                <asp:TextBox ID="txtEmail" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="txtEmail" ErrorMessage="O email é necessário." ToolTip="O email é necessário." ValidationGroup="sign">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:Label ID="PasswordLabel" runat="server"  CssClass="formControlLabel">Senha:</asp:Label>

                <asp:TextBox ID="txtPassword" runat="server" CssClass="formControlTextBox" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword" ErrorMessage="A senha é necessária." ToolTip="A senha é necessária." ValidationGroup="sign">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:Label ID="ConfirmPasswordLabel" runat="server" CssClass="formControlLabel">Confirmar Senha:</asp:Label>

                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="formControlTextBox" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="É necessário Confirmar Senha." ToolTip="É necessário Confirmar Senha." ValidationGroup="sign">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" CssClass="formControlLabel" Display="Dynamic" ErrorMessage="A Senha e a Senha de Confirmação devem coincidir." ValidationGroup="sign"></asp:CompareValidator>

                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>

            </div>
             <div class="form-control" align="Center">

            <asp:Label ID="lblMensagem" runat="server"></asp:Label>

                 <br />

            <asp:Button ID="btnCriar" runat="server" CssClass="bnt"  Text="Criar Usuario" OnClick="btnCriar_Click" />
                 <br />
                 <br />
            <asp:Button ID="btnVoltar" runat="server" CssClass="bnt"  Text="Voltar" OnClick="btnVoltar_Click" />
                 </div>
        </form>
    </div>
</body>
</html>
