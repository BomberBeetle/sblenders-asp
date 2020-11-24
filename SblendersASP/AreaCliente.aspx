<%@ Page Title="Área do Cliente" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="AreaCliente.aspx.cs" Inherits="TCC.AreaCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/AreaCliente.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divTituloPagina">
        <h1>Área do Cliente </h1>
    </div>
    <div class="divBodyAreaCliente" runat="server" id="divBodyAreaCliente">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="120000" OnTick="Timer1_Tick"></asp:Timer>
        <div class="inputs">
            <asp:TextBox ID="TextBox1" runat="server" Text="" class="txtNome" placeholder="Nome"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Text="" class="txtSobrenome" placeholder="Sobrenome"></asp:TextBox>
            <asp:TextBox ID="txtSenha" runat="server" Text="" TextMode="Password" class="txtSenha" placeholder="Nova senha"></asp:TextBox>
            <asp:TextBox ID="txtConfirmarSenha" runat="server" Text="" TextMode="Password" class="txtConfirmarSenha" placeholder="Confirme a Senha"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Button class="btnSalvar" ID="Button1" runat="server" Text="Salvar alterações" OnClick="alterarDados" />
        </div>
        <div class="pedidos">
            <asp:PlaceHolder ID="PedidosPlaceholder" runat="server"></asp:PlaceHolder>
        </div>
    </div>
</asp:Content>
