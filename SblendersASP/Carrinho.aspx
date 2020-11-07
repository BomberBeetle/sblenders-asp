<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Carrinho.aspx.cs" Inherits="TCC.Carrinho" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Carrinho.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divCorpoCarrinho">

        <div class="divNomeCarrinho">
            <div class="divTituloCarrinho">
                    <h1> Carrinho </h1>
                </div>
        </div>

        <div class="divItensCarrinhos" >
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

                <div class="divItemCarrinho">
                    <div class="divImgItem">
                        <img src="Imagens/burger7.png" class="imgItem" />
                    </div>
                    <div class="divInfoItem">
                        <div class="divSubInfoItem1">
                            <asp:Label ID="Label2" runat="server" Text="Batata" CssClass="lblNomeItem"></asp:Label>
                        </div>
                        <div class="divSubInfoItem2">
                            <asp:Button ID="Button1" runat="server" Text="Excluir" CssClass="btnExcluirItem"/>
                            <asp:Button ID="Button2" runat="server" Text="Alterar" CssClass="btnAlterarItem"/>
                        </div>
                    </div>
                    <div class="divQuantidadeItem">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="selectQuantidadeItem">
                            <asp:ListItem Selected="True" Text="1"></asp:ListItem>
                            <asp:ListItem Text="2"></asp:ListItem>
                            <asp:ListItem Text="3"></asp:ListItem>
                            <asp:ListItem Text="4"></asp:ListItem>
                            <asp:ListItem Text="5"></asp:ListItem>
                            <asp:ListItem Text="6"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="divPrecoItem">
                        <asp:Label ID="Label1" runat="server" Text="R$: 45,56" CssClass="lblPrecoItem"></asp:Label>
                    </div>
                </div>

                <div class="divTotal">
                    <asp:label ID="lblItens" runat="server" text="Itens:" CssClass="lblItens"></asp:label>
                    <asp:label ID="lblTotal" runat="server" text="Total:" CssClass="lblTotal"></asp:label>
                </div>

                <div class="divBtnAvancar">                    
                    <asp:button runat="server" text="Voltar para os produtos" CssClass="btnVoltarCarrinho" OnClick="Voltar"/>
                    <asp:button runat="server" text="Avançar para o local de entrega" CssClass="btnAvancarCarrinho" OnClick="Avancar"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
