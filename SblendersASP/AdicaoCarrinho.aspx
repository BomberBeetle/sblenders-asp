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
                <button class="btnVoltar" id="btnVoltar" runat="server" onserverclick="Voltar">
                    <div class="divTextoBtnVoltar">
                        <img src="Imagens/seta2.png" />
                        <p>Voltar aos produtos</p>                            
                    </div>
                </button>
                <button class="btnAvancar" id="btnAvancar" runat="server" onserverclick="Avancar">
                    <div class="divTextoBtnAvancar">
                        <p>Ir para o carrinho</p>
                        <img src="Imagens/seta2.png" />
                    </div>                
                </button>
            </div>
        </div>
    </div>
</asp:Content>
