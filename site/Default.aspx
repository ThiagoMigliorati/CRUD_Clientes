﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="site.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-1.9.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
    <div class="jumbotron">
        <h1>Projeto CRUD - Controle de Clientes</h1>
    
        Selecione a operação desejada:
        <asp:DropDownList ID="ddlMenu" runat="server">
            <asp:ListItem Value="0" Text="Escolha uma Opção"/>
            <asp:ListItem Value="1" Text="Cadastrar Cliente"/>
            <asp:ListItem Value="2" Text="Consultar Cliente"/>
            <asp:ListItem Value="3" Text="Pesquisar Cliente"/>
        </asp:DropDownList>
        <asp:Button ID="btnMenu" runat="server" Text="Acessar" CssClass="btn btn-primary btn-lg" OnClick="btnAcessar"/>
        <p>
            <asp:Label ID="iblMensagem" runat="server"></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
