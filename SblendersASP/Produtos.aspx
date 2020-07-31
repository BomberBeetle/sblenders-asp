<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="TCC.Produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Produtos.css" />    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--
    <div id="1">
        <div id="divlista">
            <div id="title">
                <h1>Lista de Produtos</h1>
            </div>
            <div id="lista">
                
            </div>
        </div>

    </div>-->

    <div class="divCorpoProdutos" onload="testeConexao()">

        <div class="divNomePagina">
                <div class="divTituloPagina">
                    <h1> Monte seu Pedido </h1>
                </div>
        </div>

        <div class="divAdicionarLanches">
            <div class="divCustomizarLanches">
                <div class="divBurguer" id="divBurguer1" >
                    <a href="Ingredientes.aspx">
                        <div class="divTxtBurguer">
                            <h1> Monte seu Sblurger </h1>
                        </div>
                        <div class="divImgBurguer">
                            <img src="Imagens/burguer2.png" class="imgDivImgBurger"/>
                        </div>
                    </a>
                
                </div>

                <div class="divBurguer2">
                    <a href="" class="aBurg">
                        <div class="divTxtBurguer2">
                            <h1> Personalize sua Batata Frita</h1>
                        </div>
                        <div class="divImgBurguer2">
                            <img src="Imagens/batataFrita.png" class="imgDivImgBurger"/>
                        </div>
                    </a>
                </div>

                <div class="divBurguer3">
                    <a href="" class="aBurg">
                        <div class="divTxtBurguer2">
                            <h1> Personalize seu Hot Dog </h1>
                        </div>
                        <div class="divImgBurguer2">
                            <img src="Imagens/hotDog.png" class="imgDivImgBurger"/>
                        </div>
                    </a>
                </div>

                <div class="divBurguer" id="divBurguer2" >
                    <a href="">
                        <div class="divTxtBurguer">
                        <h1> Personalize seu Churros </h1>
                    </div>
                    <div class="divImgBurguer">
                        <img src="Imagens/churros.png" class="imgDivImgBurger"/>
                    </div>
                    </a>
                
                </div>
            </div>           
            
        </div>

        <div class="divProdutosCustomizaveis">
            <!--<div class="divNomeComplemento">
                <div class="divTituloComplemento">
                    <h1> Adicione Complementos </h1>
                </div>
            </div>-->

            <div class="divBebidas">
                <div class="divSubBebidas">
                    <p> <b> Acompanhamentos </b></p>
                </div>                
            </div>

            <div class="divSubProdutosCustomizaveis" id="divAcompanhamento">
                <div class="divProdCustom" id="divProds" runat="server">
                    <!--<div class="divProduto" id="divPro">
                        <a href="javascript:void(0)" onclick="popupProduto()"> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome1" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor1" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="btnAdicionarCarrinho1" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>
                   
                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome2" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor2" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button13" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>

                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome3" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor3" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button14" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>

                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome4" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor4" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button15" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>-->
                </div>
            </div>

            <div class="divBotaoExpandir">
                <div class="divSubBotaoExpandir">
                    <button class="btnExpandir" onclick="expandirAcompanhamentos()" id="btnExpandirAcompanhamento"></button>
                </div>
                
            </div>

            <div class="divBebidas">
                <div class="divSubBebidas">
                    <p> <b> Bebidas </b></p>
                </div>                
            </div>

            <div class="divSubProdutosCustomizaveis" id="divBebida">
                <div class="divProdCustom" id="divProds2" runat="server">
                    <!--<div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome5" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor5" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button1" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>
                   
                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome6" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor6" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button2" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>

                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome7" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor7" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button87" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>

                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome8" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor8" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button5" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>-->
                </div>
            </div>

            <div class="divBotaoExpandir">
                <div class="divSubBotaoExpandir">
                    <button class="btnExpandir" onclick="expandirBebidas()" id="btnExpandirBebida"></button>
                </div>
                
            </div>

            <div class="divBebidas">
                <div class="divSubBebidas">
                    <p> <b> Sobremesas </b></p>
                </div>                
            </div>

            <div class="divSubProdutosCustomizaveis" id="divSobremesa">
                <div class="divProdCustom" id="divProds3" runat="server">
                    <!--<div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome9" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor9" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button375" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>
                   
                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome10" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor10" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button6" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>

                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome11" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor11" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button7" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>

                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome12" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label16" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button8" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>-->
                </div>
            </div>

            <div class="divBotaoExpandir">
                <div class="divSubBotaoExpandir">
                    <button class="btnExpandir" onclick="expandirSobremesas()" id="btnExpandirSobremesa"></button>
                </div>
                
            </div>

            <div class="divBebidas">
                <div class="divSubBebidas">
                    <p> <b> Molhos </b></p>
                </div>                
            </div>

            <div class="divSubProdutosCustomizaveis" id="divMolho">
                <div class="divProdCustom" id="divProds4" runat="server">
                    <!--<div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome13" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor13" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button366" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>
                   
                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome14" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor14" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button9" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>

                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome15" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor15" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button10" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>

                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="lblNome16" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor16" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button11" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>-->
                </div>
            </div>

            <div class="divBotaoExpandir">
                <div class="divSubBotaoExpandir">
                    <button class="btnExpandir" onclick="expandirMolhos()" id="btnExpandirMolho"></button>
                </div>
                
            </div>

        </div>

        <div class="divBtnOpcoesPagLanches">
            <button class="btnIrCarrinho" id="btnIrCarrinho" runat="server">
                <div class="divTextoBtnCarrinho">
                    <p>Ir Para o Carrinho</p>
                </div>
                <div class="divImgBtnCarrinho">
                    <div class="divSubImgBtnCarrinho">
                        <img src="CSS/ImagensCSS/carrinhoCompras.png" />
                    </div>
                </div>
                
            </button>
        </div>
    </div>

    <div id="secProd1" class="sectionProd">
        <div class="divDescricaoProduto">
            <div class="divDescricaoProdutoTitulo">
                <div class="divSubDescricaoProdutoTitulo1">
                    <h1 class="h1InfoNutri">Informações Nutricionais</h1>
                </div>
                <div class="divSubDescricaoProdutoTitulo2">
                    <a href="">
                        <img src="Imagens/iconX.png" class="imgIconX" />
                    </a>
                    
                </div>
            </div>
            <div class="divDescricaoProdutoCorpo">

            </div>
        </div>
    </div>
</asp:Content>
