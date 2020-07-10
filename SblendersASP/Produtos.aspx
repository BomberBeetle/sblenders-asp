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
                <div class="divProdCustom">
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
                            <asp:Button ID="Button12" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>
                   
                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label27" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label28" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label29" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label30" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label31" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label32" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button15" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>
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
                <div class="divProdCustom">
                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label1" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label3" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label5" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label7" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label8" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button5" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>
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
                <div class="divProdCustom">
                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label9" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label10" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label11" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label12" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label13" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label14" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label15" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label16" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button8" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>
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
                <div class="divProdCustom">
                    <div class="divProduto">
                        <a href=""> 
                            <div class="divSubProduto1">
                                <img src="Imagens/ProdutosComplementares/cocacola.png" class="imgSubProduto" />
                            </div>

                            <div class="divSubProduto2">
                                <asp:Label ID="Label17" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label18" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label19" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label20" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label21" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label22" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
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
                                <asp:Label ID="Label23" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="Label24" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="Button11" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
                        </div>
                    </div>
                </div>
            </div>

            <div class="divBotaoExpandir">
                <div class="divSubBotaoExpandir">
                    <button class="btnExpandir" onclick="expandirMolhos()" id="btnExpandirMolho"></button>
                </div>
                
            </div>

        </div>

        <div class="divBtnOpcoesPagLanches">
            <asp:Button ID="Button3" runat="server" Text="Ir para o carrinho"  CssClass="btnIrCarrinho"/>
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
