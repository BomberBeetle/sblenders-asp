<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="TCC.Produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Produtos.css" />    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                <asp:Label ID="lblNome17987987" runat="server" Text="Refrigerante Coca-Cola em lata, 350ml" CssClass="lblDescricaoProduto"></asp:Label>
                                <asp:Label ID="lblValor189799797" runat="server" Text="R$ 5,45" CssClass="lblValorProduto"></asp:Label>
                            </div>
                        </a>
                        
                        <div class="divSubProduto3">
                            <asp:Button ID="btnAdicionarCarrinho179879787" runat="server" Text="Adicionar ao Carrinho" CssClass="btnAdicionarCarrinho"/>
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
                    
                </div>
            </div>

            <div class="divBotaoExpandir">
                <div class="divSubBotaoExpandir">
                    <button class="btnExpandir" onclick="expandirMolhos()" id="btnExpandirMolho"></button>
                </div>
                
            </div>

        </div>

        <div class="divBtnOpcoesPagLanches">
            <button class="btnIrCarrinho" id="btnIrCarrinho" runat="server" onserverclick="btnIrCarrinho_ServerClick">
                <div class="divTextoBtnCarrinho">
                    <p>Ir Para o Carrinho</p>
                    <img src="Imagens/seta2.png" />
                </div>                
            </button>
        </div>
    </div>

    <div id="secProd1" class="sectionProd">
        <div class="divDescricaoProduto">
            <div class="divDescricaoProdutoTitulo">
                    <h1 class="h1InfoNutri">Informações Nutricionais</h1>
                    <a onclick="fecharInfoNutri()">
                        <img src="Imagens/iconeX.png" class="imgIconX" />
                    </a>
                    
            </div>
            <div class="divDescricaoProdutoCorpo">

            </div>
        </div>
    </div>
</asp:Content>
