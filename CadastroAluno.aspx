<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroAluno.aspx.cs" Inherits="AAP.CadastroAluno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ItaquaPasse</title>
        <link rel="stylesheet" type="text/css" href="CadastroAluno.css"/>
     <script type="text/JavaScript" src="Cadastro.js">
         </script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500;600&display=swap');
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="div1">

           <div class="div2"> Formulario de inscrição</div>

        </div>
        <fieldset style="font-family: 'Segoe UI'">
            <br />
            <asp:Label ID="lblDp" runat="server" Text="Dados Pessoais" CssClass="dp"></asp:Label>
          
            <hr />
            <br />
          
            <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblRg" runat="server" Text="RG:"></asp:Label>
            <asp:TextBox ID="txtRg" runat="server"  ></asp:TextBox>
&nbsp;
            <asp:Label ID="lblNasc" runat="server" Text="Nasc.:"></asp:Label>
            <asp:TextBox ID="txtNasc" runat="server" type="date"></asp:TextBox>
            &nbsp;
            <asp:Label ID="lblIdade" runat="server" Text="Idade: "  ></asp:Label> 

            <asp:TextBox ID="txtIdade" runat="server"  ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblEndereco" runat="server" Text="Endereço: "></asp:Label>
            <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblNumero" runat="server" Text="Nº: "></asp:Label>
            <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblbairro" runat="server" Text="Bairro: "></asp:Label>
            <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblCidade" runat="server" Text="Cidade: "></asp:Label>
            <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Label ID="lblCep" runat="server" Text="CEP: "></asp:Label>
            <asp:TextBox ID="txtCep" runat="server" name="txtCep" MaxLength="9" onkeyup="mascara_CEP()" AutoCompleteType="HomeZipCode"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblEmail" runat="server" Text="E-mail: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Email"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblFone" runat="server" Text="Fone Res.: "></asp:Label>
            <asp:TextBox ID="txtFone" runat="server" AutoCompleteType="HomePhone" name="txtFone" MaxLength="12" onkeyup="mascara_Fone()"></asp:TextBox>
&nbsp;<br />
            <br />
            <asp:Label ID="lblFoneCom" runat="server" Text="Fone Com: "></asp:Label>
            <asp:TextBox ID="txtFoneCom" runat="server" AutoCompleteType="BusinessPhone" name="txtFoneCom" MaxLength="9" onkeyup="mascara_FoneCom()"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblFili" runat="server" Text="Filiação: "></asp:Label>
            <asp:TextBox ID="txtFili" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
                
            <asp:Label ID="lblDe" runat="server" CssClass="de" Text="Dados da Escola"></asp:Label>
            <hr />
            
            <asp:Label ID="lblEscola" runat="server" Text="Escola: "></asp:Label>
            <asp:TextBox ID="txtEscola" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblEnderecoE" runat="server" Text="Endereço: "></asp:Label>
            <asp:TextBox ID="txtEnderecoE" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblNumeroE" runat="server" Text="Nº: "></asp:Label>
            <asp:TextBox ID="txtNumeroE" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblbairroE" runat="server" Text="Bairro: "></asp:Label>
            <asp:TextBox ID="txtBairroE" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblCidadeE" runat="server" Text=" Cidade: "></asp:Label>
            <asp:TextBox ID="txtCidadeE" runat="server" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblFonesE" runat="server" Text="Fones:  "></asp:Label>
            <asp:TextBox ID="txtFoneEsc" runat="server" AutoCompleteType="HomePhone" name="txtFoneEsc" MaxLength="9" onkeyup="mascara_FoneEsc()"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblCurso" runat="server" Text="Curso: "></asp:Label>
            <asp:TextBox ID="txtCurso" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblSerie" runat="server" Text="Série: "></asp:Label>
            <asp:TextBox ID="txtSerie" runat="server" ></asp:TextBox>
            &nbsp;
            <asp:Label ID="lblGrau" runat="server" Text="Grau: "></asp:Label>
            <asp:TextBox ID="txtGrau" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblModalidade" runat="server" Text="Modalidade: "></asp:Label>
            <asp:DropDownList ID="ddlModalidade" runat="server" Font-Names="Segoe UI" ForeColor="Black" font-weight="lighter" DataSourceID="SqlDataSourceModalidade" DataTextField="nome" DataValueField="cod">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceModalidade" runat="server" ConnectionString="<%$ ConnectionStrings:AAP-ITAQUAPASSE1ConnectionString %>" ProviderName="<%$ ConnectionStrings:AAP-ITAQUAPASSE1ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [modalidade]"></asp:SqlDataSource>
<br />
            <br />
            <asp:Label ID="lblHoraAula" runat="server" Text="Horario de aula: "></asp:Label>
            <asp:TextBox ID="txtHoraAula"  runat="server" type="time"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblAs" runat="server" Text="ás "></asp:Label>
&nbsp;<asp:TextBox ID="txtHoraAula2" runat="server" type="time" ></asp:TextBox>
&nbsp;&nbsp;
            <asp:Label ID="lblhora" runat="server" Text="hs."></asp:Label>
            &nbsp;
                
            
            <br />
            <br />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            <br />
            <br />
            
                   
                  </fieldset>

       
        <div class="div3"  >
                 <asp:Button ID="Button1" aling="left" runat="server"  Text="Enviar" OnClick="btnEnviar_Click" CssClass="button" />
              &nbsp 
              <asp:Button ID="btnPesquisa" aling="left" runat="server" Text="Pesquisar" OnClick="btnPesquisa_Click" CssClass="button"  />
              &nbsp;
              <asp:Button ID="btnAltera" aling="left"  runat="server" Text="Alterar" Enabled="False" OnClick="btnAltera_Click" CssClass="button"   />
              &nbsp;
              <asp:Button ID="btnExclui" aling="left" runat="server" Text="Excluir" Enabled="False" OnClick="btnExclui_Click" OnClientClick="return confirm('Deseja realmente excluir o registro?');" CssClass="button"  />
            &nbsp;&nbsp;&nbsp;
              <br />
              <br />
              
              <asp:Button ID="btnLimpar" runat="server"  OnClick="btnLimpar_Click" Text="Limpar"  CssClass="button" />
            </div>
      

    </form>
</body>
</html>
