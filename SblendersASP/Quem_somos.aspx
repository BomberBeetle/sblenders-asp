<%@ Page Title="Quem Somos" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Quem_somos.aspx.cs" Inherits="TCC.Quem_somos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Quem_somos.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divTituloPagina">
        <h1>Quem somos</h1>
    </div>
    <div class="divContent">
        <div class="divContentRow">
            <div class="divContentCol">
                <h1 class="titulo">Conheça um pouco sobre nós </h1>
                <div class="logo">
                    <img src="Imagens/sblendersBlack.png" class="imgSblebs" />
                    <p class="sallya">Nosso antigo logo...</p>
                </div>
                <p class="somos">
                    SBLENDERS originalmente começou como um restaurante local de São Paulo, em 2010, com um simples propósito: fazer tudo á moda do cliente. Os lanches seriam feitos com os ingredientes escolhidos pelo cliente, mas diferente de outros restaurantes que apresentam lanches com um propósito parecido, não haveria um padrão de como o cliente deve montar seu lanche, tendo liberdade total sobre o mesmo.
                </p>
                <p class="somos">
                    5 anos depois, em 2015, abrimos mais duas filiais, ainda em São Paulo. Nossos lanches se popularizaram rapidamente, com ingredientes frescos, de alta qualidade, e um atendimento ao cliente impecável.
                </p>
                <div class="logo">
                    <img src="Imagens/NovoSblendersLogo.png" class="imgSblebs" />
                    <p class="sallya">O novo logo do SBLENDERS!</p>
                </div>
                <p class="somos">
                    Agora em 2020, continuamos a manter nossa qualidade, porém estamos em uma escala maior: já foram abertos mais de 20 restaurantes no Brasil inteiro. Agora, entramos em uma nova fronteira: o delivery. O que parece normal para outros restaurantes, seria uma grande empreitada para nós: a quantidade de personalização dos lanches dificultara a efetuação dos pedidos por telefone, mas agora, na era da internet, connseguimos um sistema não só de entregas mas também de controle totalmente informatizado, possibilitando a entrega de nossos lanches especiais para todos.
                </p>
            </div>
        </div>
    </div>
</asp:Content>
