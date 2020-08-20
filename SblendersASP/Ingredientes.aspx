<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Ingredientes.aspx.cs" Inherits="TCC.Ingredientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Ingredientes.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divNomePagina">
        <div class="divTituloPagina">
            <h1> Escolha os Ingredientes </h1>
        </div>
    </div>
    <div class="divIngredientes">
        <div class="divIngredientesCategoria">
            <h1>Selecione a Categoria:</h1>
            <select id="select1" name="select1" class="selectCategoria ls-select" onchange="mostrarCategoriaSelecao()">
                <option class="optionCategoria" value="paes">Pães</option>
                <option class="optionCategoria" value="carnes" >Carnes</option>
                <option class="optionCategoria" value="verduras">Verduras</option>
                <option class="optionCategoria" value="legumes">Legumes</option>
                <option class="optionCategoria" value="queijos">Queijos</option>
                <option class="optionCategoria" value="molhos">Molhos</option>
            </select>
        </div>
        <div class="divMostrarIngredientes">
            <div class="divPaes" id="divPaes" runat="server">
                <div class="divProduto">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>
                            <div class="divSubProduto2">
                                <asp:Label ID="Label25" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label26" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        <div class="divSubProduto3">
                            <asp:Button ID="Button12" runat="server" Text="Adicionar Ingrediente" CssClass="btnAdicionarCarrinho"/>
                        </div>
                </div>
            </div>

            <div class="divPaes" id="divCarnes" runat="server">

            </div>

            <div class="divPaes" id="divVerduras" runat="server">

            </div>

            <div class="divPaes" id="divLegumes" runat="server">

            </div>

            <div class="divPaes" id="divQueijos" runat="server">

            </div>

            <div class="divPaes" id="divMolhos" runat="server">

            </div>
        </div>
    </div>
    <div class="divIngredientesCliente" id="divIngredientesCliente" runat="server">
        <div class="divIngredientesCategoria">
            <h1></h1>
            <asp:Label ID="lblTotalIngredientes" runat="server" Text="R$ 0"></asp:Label>
        </div>
    </div>
    <div class="divBtnOpcoesPagLanches">
            <asp:Button ID="Button6" runat="server" Text="Ir para o carrinho"  CssClass="btnIrCarrinho" OnClick="Button6_Click"/>
    </div>
</asp:Content>
