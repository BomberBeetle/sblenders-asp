<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TCC.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="divCorpoIndex">
        <div id="carouselBanner" class="carousel slide carousel-fade" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block w-100 imgCarrouselBanner" src="Imagens/burguer1.jpg" alt="Primeiro Slide"/>
            </div>
            <div class="carousel-item">
              <img class="d-block w-100 imgCarrouselBanner" src="Imagens/burgerk.png" alt="Segundo Slide"/>
            </div>
            <div class="carousel-item">
              <img class="d-block w-100 imgCarrouselBanner" src="Imagens/burguerk2.png" alt="Terceiro Slide"/>
            </div>
          </div>
          <a class="carousel-control-prev aNeg" href="#carouselBanner" role="button" data-slide="prev" >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Anterior</span>
          </a>
          <a class="carousel-control-next aNeg" href="#carouselBanner" role="button" data-slide="next">
            <b><span class="carousel-control-next-icon" aria-hidden="true"></span></b>
            <span class="sr-only">Próximo</span>
          </a>
        </div>

        <!--<div id="carouselIndex2" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block w-100 imgCarouselIndex2" src="Imagens/burguer1.jpg" alt="Primeiro Slide"/>
            </div>
            <div class="carousel-item">
              <img class="d-block w-100 imgCarouselIndex2" src="Imagens/burguer2.jpg" alt="Segundo Slide"/>
            </div>
            <div class="carousel-item">
              <img class="d-block w-100 imgCarouselIndex2" src="Imagens/burguer3.jpg" alt="Terceiro Slide"/>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselIndex2" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Anterior</span>
          </a>
          <a class="carousel-control-next" href="#carouselIndex2" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Próximo</span>
          </a>
        </div>

        </div>-->
    </div>
</asp:Content>
