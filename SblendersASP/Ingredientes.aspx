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
            <select id="select1" name="select1" runat="server" class="selectCategoria" onchange="mostrarCategoriaSelecao()">
                <option class="optionCategoria" value="paes">Pães</option>
                <option class="optionCategoria" value="carnes" >Carnes</option>
                <option class="optionCategoria" value="verduras">Verduras</option>
                <option class="optionCategoria" value="legumes">Legumes</option>
                <option class="optionCategoria" value="queijos">Queijos</option>
                <option class="optionCategoria" value="molhos">Molhos</option>
            </select>
        </div>

        <div class="divMostrarIngredientes">

            <div class="divPaes" id="divPaes">
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

                <div class="divProduto">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label1" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button1" runat="server" Text="Adicionar Ingrediente" CssClass="btnAdicionarCarrinho"/>
                        </div>
                </div>

                <div class="divProduto">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label3" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button2" runat="server" Text="Adicionar Ingrediente" CssClass="btnAdicionarCarrinho"/>
                        </div>
                </div>

                <div class="divProduto">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label5" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button3" runat="server" Text="Adicionar Ingrediente" CssClass="btnAdicionarCarrinho"/>
                        </div>
                </div>

                <div class="divProduto">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label7" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label8" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button4" runat="server" Text="Adicionar Ingrediente" CssClass="btnAdicionarCarrinho"/>
                        </div>
                </div>

                <div class="divProduto">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label9" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label10" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button5" runat="server" Text="Adicionar Ingrediente" CssClass="btnAdicionarCarrinho"/>
                        </div>
                </div>

            </div>
            
            <div class="divPaes" id="divCarnes">
                <div class="divProduto">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label11" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label12" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button7" runat="server" Text="Adicionar Ingrediente" CssClass="btnAdicionarCarrinho"/>
                        </div>
                </div>

                <div class="divProduto">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label13" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label14" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button8" runat="server" Text="Adicionar Ingrediente" CssClass="btnAdicionarCarrinho"/>
                        </div>
                </div>

                <div class="divProduto">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label15" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label16" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button9" runat="server" Text="Adicionar Ingrediente" CssClass="btnAdicionarCarrinho"/>
                        </div>
                </div>

                <div class="divProduto">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label17" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label18" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button10" runat="server" Text="Adicionar Ingrediente" CssClass="btnAdicionarCarrinho"/>
                        </div>
                </div>

            </div>

        </div>

    </div>

    <div class="divIngredientesCliente">
        <div class="divIngredientesCategoria">
            <h1></h1>
        </div>
    </div>

    <div class="divBtnOpcoesPagLanches">
            <asp:Button ID="Button6" runat="server" Text="Ir para o carrinho"  CssClass="btnIrCarrinho"/>
        </div>

</asp:Content>
