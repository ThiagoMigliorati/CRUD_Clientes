<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="site.Pages.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-1.9.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="span10 offset1">
            <div class="row">
                <h3 class="well">Cadastro do Cliente</h3>
            </div>
            <div class="row">
                <asp:Label>Nome:</asp:Label>
                <asp:TextBox ID="txtNome" runat="server" placeholder="Nome Completo" Width="45%" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="requiredNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Digite seu nome" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="row">
                <asp:Label>Endereco:</asp:Label>
                <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço Residencial" Width="45%" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEndereco" ErrorMessage="Digite seu nome" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="row">
                <asp:Label>Email:</asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email válido" Width="45%" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Digite seu nome" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <br />
            <p><asp:Label ID="lblMensagem" runat="server"></asp:Label></p>
            <br />
            <div class="row">
               <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn btn-success btn-lg" OnClick="btnCadastrar_Click" />
               <a href="../Default.aspx" class="btn btn-default btn-lg"> Voltar </a>
            </div>
            
        </div>
    </div>
    </form>
</body>
</html>
