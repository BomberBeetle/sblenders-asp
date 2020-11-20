<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Carrinho.aspx.cs" Inherits="TCC.Carrinho" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Carrinho.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divCorpoCarrinho">
        <div class="divTituloPagina">
            <h1>Carrinho </h1>
        </div>
        <div class="divItensCarrinhos">
            <div class="divCaixaItens" id="divItensCarrinhos" runat="server">
                <div class="divNomeCampos">
                    <div class="divSubCampo1">
                        <h1 class="h1Campo2">Lista de Produtos</h1>
                    </div>
                    <div class="divSubCampo2">
                        <h1 class="h1Campo">Quantidade</h1>
                    </div>
                    <div class="divSubCampo3">
                        <h1 class="h1Campo">Preço</h1>
                    </div>
                </div>
            </div>
            <div class="divCaixaItens2">
                <div class="divTotal">
                    <asp:Label ID="lblItens" runat="server" Text="Itens:" CssClass="lblItens"></asp:Label>
                    <asp:Label ID="lblTotal" runat="server" Text="Total:" CssClass="lblTotal"></asp:Label>
                </div>
                <div class="divBtnAvancar">
                    <button class="btnIrCarrinho3" id="btnIrCarrinho" runat="server" onserverclick="Voltar">
                        <div class="divTextoBtnCarrinho3">
                            <img src="Imagens/seta2.png" />
                            <p>Voltar aos produtos</p>
                        </div>
                    </button>
                    <button class="btnIrCarrinho2" id="Button3" runat="server" onserverclick="Avancar">
                        <div class="divTextoBtnCarrinho2">
                            <p>Avançar ao local de entrega </p>
                            <img src="Imagens/seta2.png" />
                        </div>
                    </button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
