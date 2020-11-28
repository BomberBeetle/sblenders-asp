<%@ Page Title="Monte Seu Sblurger" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Ingredientes.aspx.cs" Inherits="TCC.Ingredientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Ingredientes.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divTituloPagina">
        <h1>Escolha os Ingredientes </h1>
    </div>
    <div class="geral">
        <div id="secProd1" class="sectionProd">
            <div class="divDescricaoProduto">
                <div class="divDescricaoProdutoTitulo">
                    <h1 class="h1InfoNutri">Como devo montar meu lanche?</h1>
                    <a onclick="fecharInstrucoes()">
                        <img src="Imagens/iconeX.png" class="imgIconX" />
                    </a>
                </div>
                <div class="divDescricaoProdutoCorpo" id="divDescricaoProdutoCorpo1">
                    <p>Adicione os ingredientes da esquerda a seu lanche e eles serão mostrados na direita.</p>
                    <p>Seu lanche deve começar e terminar com uma fatia de pão e conter no máximo 30 ingredientes.</p>
                </div>
            </div>
        </div>
        <div class="bigboy">
            <div class="divIngredientes">
                <div class="divIngredientesCategoria">
                    <h1>Selecione a Categoria:</h1>
                    <select id="select1" name="select1" class="selectCategoria ls-select" onchange="mostrarCategoriaSelecao()">
                        <option class="optionCategoria" value="paes">Pães</option>
                        <option class="optionCategoria" value="carnes">Carnes</option>
                        <option class="optionCategoria" value="verduras">Vegetais</option>
                        <option class="optionCategoria" value="legumes">Queijos</option>
                        <option class="optionCategoria" value="queijos">Molhos</option>
                    </select>
                    <a onclick="exibirInstrucoes()">
                        <img src="Imagens/i.png" class="imgIconI" />
                    </a>
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
            <div class="smallboy">
                <div class="divIngredientesCliente" id="divIngredientesCliente" runat="server">
                    <div class="divIngredientesCategoria">
                        <h1>Seu Sblurger:</h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="divTot">
            <asp:Label ID="lblTotalIngredientes" runat="server" Text="R$ 0" CssClass="lblTotalIngredientes" ClientIDMode="Static"></asp:Label>
        </div>
        <div class="divBotoes">
            <div class="divBtnExcluirLanche">
                <button class="btnExcluirLanche" id="btnExcluirLanche" runat="server" onserverclick="excluirLanche">
                    <div class="divTextoBtnExcluirLanche" onload="tamDivIngredientes()">
                        <p>Excluir Sblurger</p>
                        <img src="Imagens/iconeX.png" />
                    </div>
                </button>
            </div>
            <div class="divBtnOpcoesPagLanches">
                <button class="btnIrCarrinho" id="btnIrCarrinho" runat="server" onserverclick="avancarCarrinho">
                    <div class="divTextoBtnCarrinho" onload="tamDivIngredientes()">
                        <p>Adicionar ao Carrinho</p>
                        <img src="Imagens/seta2.png" />
                    </div>
                </button>
            </div>
        </div>
    </div>
</asp:Content>
