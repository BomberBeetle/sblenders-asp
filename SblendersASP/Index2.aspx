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
<body  onload="repetidor()"> <!--onpagehide/onmouseover="indexDinamico()"-->
    <form id="form1" runat="server">  
        
    <div id="divCorpoIndex" onmouseover="tocarMusica()"> 
        <nav class="container-fluid" id="divCabecalho">
            <div class="col-2 CabEsq">
                <audio controls="controls" id="audio1" style="visibility:hidden; height:0px; width:0px;" onload="tocarMusica()" onended="fecharMusica()">
                    <source src="Audio/teste.mp3" type="audio/mp3"/>
                </audio>
                <a href="Index.aspx" >
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
                    <div class="divLogIn">
                        <div class="divSubTitLoginSair">
                            <a class="x" onclick="sairCad()">
                                <img src="Imagens/iconX.png" class="imgDivSubTitLoginSair"/>
                            </a>
                        </div>
                        <div class="divTitLogin">
                            <div class="divSubTitLogin1">
                                <img src="Imagens/novoSblenders.png" class="imgLogoLogin"/>
                            </div>
                            
                            <div class="divSubTitLogin2">
                                <h1 class="h1Login">Faça seu Cadastro</h1>
                            </div>
                                                       
                        </div>
                        <div class="divNomeCadastro">
                            <div class="divSubNomeCadastro1">
                                <asp:Label ID="lblNomeCadastro" runat="server" Text="Nome" CssClass="lblLogin"></asp:Label>
                            </div>
                            <div class="divSubNomeCadastro2">
                                <asp:TextBox ID="txtNomeCadastro" runat="server" CssClass="txtCadastro"></asp:TextBox>
                            </div>
                            <div class="divSubNomeCadastro3">
                                <asp:Label ID="lblNomeAvisoCadastro" runat="server" Text="" CssClass="lblAvisoCadastro"></asp:Label>
                            </div>
                        </div>
                        <div class="divEmailCadastro">
                            <div class="divSubNomeCadastro1">
                                <asp:Label ID="lblEmailCadastro" runat="server" Text="E-mail" CssClass="lblLogin"></asp:Label>
                            </div>
                            <div class="divSubNomeCadastro2">
                                <asp:TextBox ID="txtEmailCadastro" runat="server" CssClass="txtCadastro"></asp:TextBox>
                            </div>
                            <div class="divSubNomeCadastro3">
                                <asp:Label ID="txtEmailAvisoCadastro" runat="server" Text="" CssClass="lblAvisoCadastro"></asp:Label>
                            </div>
                        </div>
                        <div class="divEmailCadastro">
                            <div class="divSubNomeCadastro1">
                                <asp:Label ID="Label1" runat="server" Text="Senha" CssClass="lblLogin"></asp:Label>
                            </div>
                            <div class="divSubNomeCadastro2">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtCadastro"></asp:TextBox>
                            </div>
                            <div class="divSubNomeCadastro3">
                                <asp:Label ID="Label2" runat="server" Text="" CssClass="lblAvisoCadastro"></asp:Label>
                            </div>
                        </div>

                        <div class="divEmailCadastro">
                            <div class="divSubNomeCadastro1">
                                <asp:Label ID="Label3" runat="server" Text="Confirmar Senha" CssClass="lblLogin"></asp:Label>
                            </div>
                            <div class="divSubNomeCadastro2">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="txtCadastro"></asp:TextBox>
                            </div>
                            <div class="divSubNomeCadastro3">
                                <asp:Label ID="Label4" runat="server" Text="" CssClass="lblAvisoCadastro"></asp:Label>
                            </div>
                        </div>

                        <div class="divBtnCadastro">
                            <!--<div class="divSubBtnLoginVazio"></div>
                            <div class="divSubBtnLogin1">
                                <a onclick="" class="aEsqueceuSenha">Esqueceu sua Senha?</a>
                            </div>-->
                                <asp:Button ID="btnCadastro" runat="server" Text="Entrar" CssClass="btnCadastro"/>

                            
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
                    <div class="divLogIn">
                        <div class="divSubTitLoginSair">
                            <a class="x" onclick="sair()">
                                <img src="Imagens/iconX.png" class="imgDivSubTitLoginSair"/>
                            </a>
                        </div>
                        <div class="divTitLogin">
                            <div class="divSubTitLogin1">
                                <img src="Imagens/novoSblenders.png" class="imgLogoLogin"/>
                            </div>
                            
                            <div class="divSubTitLogin2">
                                <h1 class="h1Login">Faça seu Login</h1>
                            </div>
                                                       
                        </div>
                        <div class="divEmailLogin">
                            <div class="divSubEmailLogin1">
                                <asp:Label ID="lblEmailLogin" runat="server" Text="E-mail" CssClass="lblLogin"></asp:Label>
                            </div>
                            <div class="divSubEmailLogin2">
                                <asp:TextBox ID="txtEmailLogin" runat="server" CssClass="txtLogin"></asp:TextBox>
                            </div>
                            <div class="divSubEmailLogin3">
                                <asp:Label ID="lblEmailAvisoLogin" runat="server" Text="LGOI" CssClass="lblAvisoLogin"></asp:Label>
                            </div>
                        </div>
                        <div class="divSenhaLogin">
                            <div class="divSubEmailLogin1">
                                <asp:Label ID="lblSenhaLogin" runat="server" Text="Senha" CssClass="lblLogin"></asp:Label>
                            </div>
                            <div class="divSubEmailLogin2">
                                <asp:TextBox ID="txtSenhaLogin" runat="server" CssClass="txtLogin" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="divSubEmailLogin3">
                                <asp:Label ID="lblSenhaAvisoLogin" runat="server" Text="HSHFFF" CssClass="lblAvisoLogin"></asp:Label>
                            </div>
                        </div>
                        <div class="divBtnLogin">
                            <div class="divSubBtnLoginVazio"></div>
                            <div class="divSubBtnLogin1">
                                <a onclick="" class="aEsqueceuSenha">Esqueceu sua Senha?</a>
                            </div>
                            <div class="divSubBtnLogin2">
                                <asp:Button ID="btnLogin" runat="server" Text="Entrar" CssClass="btnLogin"/>
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
