<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="AdicaoCarrinho.aspx.cs" Inherits="TCC.AdicaoCarrinho" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/AdicaoCarrinho.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="geral">
        <div class="divAdicaoProdutoCorpo" id="divDescricaoProdutoCorpo2">
            <div class="texto">
                <img src="Imagens/check.png" class="check" />
                <p class="corpo">O Item foi adicionado ao carrinho com sucesso! </p>
            </div>
            <div class="buttons">
                <button class="btnJorge1" id="Button1" runat="server" onserverclick="btnVoltar_ServerClick">
                    <div class="divTextoBtnVoltar">
                        <img src="Imagens/seta2.png" />
                        <p>Voltar aos produtos</p>
                    </div>
                </button>
                <button class="btnJorge2" id="btnAvancar" runat="server" onserverclick="btnIrCarrinho_ServerClick">
                    <div class="divTextoBtnAvancar">
                        <p>Ir para o carrinho</p>
                        <img src="Imagens/seta2.png" />
                    </div>
                </button>
            </div>
        </div>
    </div>
</asp:Content>
