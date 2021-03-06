﻿<%@ Page Title="Fale Conosco" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TCC.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Contact.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divTituloPagina">
        <h1>Fale Conosco </h1>


    </div>
    <div class="divContent">
        <div class="divContentRow">
            <div class="divContentCol">
                <p>Alguma dúvida? Dissatisfeito com nossos produtos? Tem alguma reclamação? Escreva para nós abaixo e entraremos em contato!</p>
                <p>Caso prefira, também temos outros meios de contato:</p>
                <div>
                    <img src="Imagens/zap.png" style="width: 20px; height: 20px;">
                    +55 11 4738-8467 
                </div>
                <div>
                    <img src="Imagens/mail.png" style="width: 20px; height: 20px;">
                    sblenders.fast.food@gmail.com 
                </div>
                <p style="">Sua mensagem:</p>
                <textarea id="conteudo" name="tutorial" rows="5" cols="40" maxlength="750"></textarea>
                <p style="">Seu Email:</p>
                <textarea id="email" name="tutorial" rows="1" cols="40" maxlength="50"></textarea>
                <div class="divEnviar">
                    <button class="enviar" id="enviar">Enviar</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>