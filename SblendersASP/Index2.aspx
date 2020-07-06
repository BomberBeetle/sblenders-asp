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
    <script src="JS/conexaoApi.js" type="text/javascript"></script>
</head>
<body  onload="repetidor()"> <!--onpagehide/onmouseover="indexDinamico()"-->
    <form id="form1" runat="server">  
        
    <div id="divCorpoIndex"> 
        <nav class="container-fluid" id="divCabecalho">
            <div class="col-2 CabEsq">
                <audio controls="controls" id="audio1" style="visibility:hidden; height:0px; width:0px;" onload="tocarMusica()" onended="fecharMusica()">
                    <source src="Audio/teste.mp3" type="audio/mp3"/>
                </audio>
                <a href="Index2.aspx" >
                    <img src="Imagens/novoSblenders.png" class="imgLogo" />
                </a>
            </div>
            <div class="col-6 CabEsq">
                <a class="aProjSblenders" href="Q" id="quemSomos">Quem Somos</a>
                <a class="aProjSblenders" href="A" id="faleConosco">Fale Conosco</a>
                <a class="aProjSblenders" href="V" id="maisInformacoes">Mais Informações</a>
            </div>
            <div class="col-4 CabEsq">
                <a class="aCad" onclick="Login()" id="textoLogin">Login</a>
                <a class="aCad" onclick="Cadastro()" id="textoCadastro">Cadastre-se</a>
            </div>
        </nav>

        <section class="container-fluid" id="divCad">
                <div class="col-3 divFG">

                </div>
                <div class="col-6 divFacaLogin">
                    <div class="divCadastro">
                        <div class="divSubCadastroSair">
                            <a onclick="sairCad()">
                                <img src="Imagens/iconX.png" />
                            </a>
                        </div>

                        <div class="divSubCadastroLogo">
                            <img src="Imagens/novoSblenders.png" />
                        </div>

                        <div class="divSubCadastroTitulo">
                            <h1>Faça seu Cadastro</h1>
                        </div>

                        <div class="divEspacoCadastro">

                        </div>

                        <div class="divCadastroItem">
                            <div class="divSubLoginEmail1">
                                <asp:Label ID="lblNomeCadastro" runat="server" Text="Nome" CssClass="lblDivCadastro"></asp:Label>
                            </div>
                            <div class="divSubLoginEmail2">
                                <asp:TextBox ID="txtNomeCadastro" runat="server" CssClass="txtDivCadastro"></asp:TextBox>
                            </div>
                            <div class="divSubLoginEmail3">
                                <asp:Label ID="lblNomeAvisoCadastro" runat="server" Text="" CssClass="lblDivAvisoLogin"></asp:Label>
                            </div>
                        </div>
                        <div class="divCadastroItem">
                            <div class="divSubLoginEmail1">
                                <asp:Label ID="lblEmailCadastro" runat="server" Text="E-mail" CssClass="lblDivCadastro"></asp:Label>
                            </div>
                            <div class="divSubLoginEmail2">
                                <asp:TextBox ID="txtEmailCadastro" runat="server" CssClass="txtDivCadastro"></asp:TextBox>
                            </div>
                            <div class="divSubLoginEmail3">
                                <asp:Label ID="txtEmailAvisoCadastro" runat="server" Text="" CssClass="lblDivAvisoLogin"></asp:Label>
                            </div>
                        </div>
                        <div class="divCadastroItem">
                            <div class="divSubLoginEmail1">
                                <asp:Label ID="lblSenhaCadastro" runat="server" Text="Senha" CssClass="lblDivCadastro"></asp:Label>
                            </div>
                            <div class="divSubLoginEmail2">
                                <asp:TextBox ID="txtSenhaCadastro" runat="server" CssClass="txtDivCadastro" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="divSubLoginEmail3">
                                <asp:Label ID="lblAvisoCadastro" runat="server" Text="" CssClass="lblDivAvisoLogin"></asp:Label>
                            </div>
                        </div>

                        <div class="divCadastroItem">
                            <div class="divSubLoginEmail1">
                                <asp:Label ID="lblConfirmarSenhaCadastro" runat="server" Text="Confirmar Senha" CssClass="lblDivCadastro"></asp:Label>
                            </div>
                            <div class="divSubLoginEmail2">
                                <asp:TextBox ID="txtConfirmarSenhaCadastro" runat="server" CssClass="txtDivCadastro" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="divSubLoginEmail3">
                                <asp:Label ID="lblAvisoConfirmarSenhaCadastro" runat="server" Text="" CssClass="lblDivAvisoLogin"></asp:Label>
                            </div>
                        </div>

                        <div class="divCadastroBtn">
                                <asp:Button ID="btnCadastro" runat="server" Text="Entrar" CssClass="btnDivCadastro" OnClick="btnCadastro_Click"/>                            
                        </div>
                    </div>

                </div>
                <div class="col-3 divFG">

                </div>
            </section>      

        <section class="container-fluid" id="divLog">
                <div class="col-3 divFG">

                </div>
                <div class="col-6 divFacaLogin">
                    <div class="divLogin">
                        <div class="divSubLoginSair">
                            <a class="aDivSubLoginSair" onclick="sair()">
                                <img src="Imagens/iconX.png" class="imgDivSubLoginSair" />
                            </a>
                        </div>

                        <div class="divSubLoginLogo">
                            <img src="Imagens/novoSblenders.png" class="imgDivSubLoginLogo" />
                        </div>

                        <div class="divSubLoginTitulo">
                            <h1 class="h1LoginTitulo">Faça seu Login</h1>
                        </div>

                        <div class="divEspacoLogin">

                        </div>

                        <div class="divLoginEmail">
                            <div class="divSubLoginEmail1">
                                <asp:Label ID="lblEmailLogin" runat="server" Text="E-mail" CssClass="lblDivLogin"></asp:Label>
                            </div>
                            <div class="divSubLoginEmail2">
                                <asp:TextBox ID="txtEmailLogin" runat="server" CssClass="txtDivLogin"></asp:TextBox>
                            </div>
                            <div class="divSubLoginEmail3">
                                <asp:Label ID="lblEmailAvisoLogin" runat="server" Text="" CssClass="lblDivAvisoLogin"></asp:Label>
                            </div>
                        </div>

                        <div class="divLoginSenha">
                            <div class="divSubLoginEmail1">
                                <asp:Label ID="lblSenhaLogin" runat="server" Text="Senha" CssClass="lblDivLogin"></asp:Label>
                            </div>
                            <div class="divSubLoginEmail2">
                                <asp:TextBox ID="txtSenhaLogin" runat="server" CssClass="txtDivLogin" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="divSubLoginEmail3">
                                <asp:Label ID="lblSenhaAvisoLogin" runat="server" Text="" CssClass="lblDivAvisoLogin"></asp:Label>
                            </div>
                        </div>
                        <div class="divLoginEntrar">
                            <div class="divBtnEspacoVazio"></div>
                            <div class="divBtnSubLogin1">
                                <a onclick="" class="aEsqueceuSenha">Esqueceu sua Senha?</a>
                            </div>
                            <div class="divBtnSubLogin2">
                                <asp:Button ID="btnLogin" runat="server" Text="Entrar" CssClass="btnLogin" OnClick="btnLogin_Click"/>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="col-3 divFG">

                </div>
            </section>      

        <nav id="carouselBanner" class="carousel slide carousel-fade" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active" id="itemCarro1" >
              <img class="d-block w-100 imgCarrouselBanner" src="Imagens/carroBurguer.jpeg" alt="Primeiro Slide"/>
            </div>
            <div class="carousel-item" id="itemCarro2">
              <img class="d-block w-100 imgCarrouselBanner" src="Imagens/bannerBurger.jpg" alt="Segundo Slide"/>
            </div>
            <div class="carousel-item" id="itemCarro3">
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
