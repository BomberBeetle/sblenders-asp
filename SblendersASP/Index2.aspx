<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index2.aspx.cs" Inherits="TCC.Index2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="CSS/Master2.css" />
    <link rel="stylesheet" type="text/css" href="CSS/Index2.css" />
    <link rel="stylesheet" type="text/css" href="CSS/MapsSblenders.css" />

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="JS/Funcoes.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">  
    <div id="divCorpoIndex">
        <nav class="container-fluid" id="divCabecalho">
            <div class="col-2 CabEsq">
                <a href="Index.aspx">
                    <img src="Imagens/sblendersBlack.png" class="imgLogo" />
                </a>
            </div>
            <div class="col-6 CabEsq">
                <a class="aProjSblenders" href="Q">Quem Somos</a>
                <a class="aProjSblenders" href="A">Fale Conosco</a>
                <a class="aProjSblenders" href="V">Mais Informações</a>
            </div>
            <div class="col-4 CabEsq">
                <a class="aCad" onclick="">Login</a>
                <a class="aCad" onclick="">Cadastre-se</a>
            </div>
    </nav>
        <nav id="carouselBanner" class="carousel slide carousel-fade" data-ride="carousel">
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
        </nav>
    </div>
    </form>
</body>
</html>
