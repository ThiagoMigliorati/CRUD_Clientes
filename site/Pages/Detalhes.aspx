<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="site.Pages.Detalhes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalhes</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-1.9.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="span10 offset1">
            <div class="row">
                <h3 class="well">Detalhes do Cliente</h3>
                <br /><br />
                <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" Width="10%"></asp:TextBox><br />
                <asp:Button ID="btnPesquisa" runat="server" Text="Pesquisar" CssClass="btn btn-info btn-lg" OnClick="btnPesquisarCliente" />
                <a href="../Default.aspx" class="btn btn-default btn-lg"> Voltar </a>
                <br /><br />
                <p><asp:Label ID="lblMensagem" runat="server"></asp:Label></p>
                <br />
                <asp:Panel ID="pnlDados" runat="server">
                Nome do cliente:
                <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" Width="20%"></asp:TextBox><br />
                <asp:TextBox ID="txtEndereco" runat="server" CssClass="form-control" Width="20%"></asp:TextBox><br />
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Width="20%"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server" Text="Excluir" CssClass="btn btn-info btn-lg" OnClick="btnExcluirCliente" />
                <asp:Button ID="Button2" runat="server" Text="Atualizar" CssClass="btn btn-info btn-lg" OnClick="btnAtualizarCliente" />
                
                </asp:Panel>
            </div>

        </div>
    </div>
    </form>
</body>
</html>
