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
                <option class="optionCategoria" value="verduras">Vegetais</option>
                <option class="optionCategoria" value="legumes">Queijos</option>
                <option class="optionCategoria" value="queijos">Molhos</option>
            </select>
        </div>
        <div class="divMostrarIngredientes" id="divMostrarIngredientes" runat="server">
            <div class="divPaes" id="divPaes" runat="server">
                
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
            <asp:Label ID="lblTotalIngredientes" runat="server" Text="R$ 0"></asp:Label>
        </div>
    </div>
    <div class="divBtnOpcoesPagLanches">
        <button class="btnIrCarrinho" id="btnIrCarrinho" runat="server" onserverclick="avancarCarrinho">
                <div class="divTextoBtnCarrinho">
                    <p>Ir Para o Carrinho</p>
                    <img src="Imagens/seta2.png" />
                </div>                
            </button>
    </div>
</asp:Content>
