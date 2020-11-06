<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="AdicaoCarrinho.aspx.cs" Inherits="TCC.AdicaoCarrinho" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/AdicaoCarrinho.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divCorpoQuemSomos">
        <div class="principal">
            <h1 class="titulo"> Item adicionado ao carrinho </h1>
            <div class="message">
                <img src="Imagens/check.png" class="check"/>
                <p class="corpo"> O Item foi adicionado ao carrinho com sucesso! </p>
            </div>
            <div class="buttons">  
                <img src="Imagens/carrinho.png" class="continuar"/>
                <asp:Button ID="btnVoltar" runat="server" Text="Continuar comprando" />
                <img src="Imagens/seta.png" class="avancar"/>
                <asp:Button ID="btnContinuar" runat="server" Text="Ir para o carrinho" />
            </div>
        </div>
    </div>
</asp:Content>
