<%@ Page Title="Bem vindo ao Sblenders!" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Index2.aspx.cs" Inherits="TCC.Index2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Index2.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselBanner" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" id="itemCarro1">
                <img class="d-block w-100 imgCarrouselBanner" src="Imagens/sblenders1.jpg" alt="Primeiro Slide" />
            </div>
            <div class="carousel-item" id="itemCarro2">
                <img class="d-block w-100 imgCarrouselBanner" src="Imagens/carroBurguer2.jpeg" alt="Segundo Slide" />
            </div>
            <div class="carousel-item" id="itemCarro3">
                <img class="d-block w-100 imgCarrouselBanner" src="Imagens/sblenders2.jpg" alt="Terceiro Slide" />
            </div>
        </div>
        <a class="carousel-control-prev aNeg" href="#carouselBanner" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Anterior</span>
        </a>
        <a class="carousel-control-next aNeg" href="#carouselBanner" role="button" data-slide="next">
            <b><span class="carousel-control-next-icon" aria-hidden="true"></span></b>
            <span class="sr-only">Próximo</span>
        </a>
    </div>
    <div class="divProd">
        <h1 class="Faca">Faça seu Pedido</h1>
        <div class="divCustomizarLanches">
            <div class="divBurguer" id="divBurguer1">
                <a href="Ingredientes.aspx">
                    <div class="divTxtBurguer">
                        <h1>Monte seu Sblurger </h1>
                    </div>
                </a>
            </div>
            <div class="divBurguer2">
                <div class="divBurguer3 AcomWall">
                    <a href="Produtos.aspx#Acompanhamentos" class="aBurg">
                        <div class="divTxtBurguer2">
                            <h1>Acompanhamentos</h1>
                        </div>
                    </a>
                </div>
                <div class="divBurguer3 BebidasWall">
                    <a href="Produtos.aspx#Bebidas" class="aBurg">
                        <div class="divTxtBurguer2">
                            <h1>Bebidas</h1>
                        </div>
                    </a>
                </div>
            </div>
            
            <div class="divBurguer2">
                <div class="divBurguer3 divBurguer4">
                    <a href="Produtos.aspx#Sobremesas" class="aBurg">
                        <div class="divTxtBurguer2">
                            <h1>Sobremesas</h1>
                        </div>
                    </a>
                </div>
                <div class="divBurguer3 divBurguer5">
                    <a href="Produtos.aspx#Molhos" class="aBurg">
                        <div class="divTxtBurguer2">
                            <h1>Molhos</h1>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>