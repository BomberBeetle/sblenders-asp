﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="ConfirmacaoPedido.aspx.cs" Inherits="TCC.ConfirmacaoPedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/ConfirmacaoPedido.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="geral">
        <div class="obrigado">
            Muito Obrigado pela preferência. Seu pedido está sendo preparado e logo chegará até você!
        </div>
        <div class="buttons">
            <button class="btnJorge" id="Button1" runat="server" onserverclick="btnVoltar_ServerClick">
                <div class="divTextoBtnVoltar">
                    <img src="Imagens/seta2.png" />
                    <p>Voltar aos produtos</p>
                </div>
            </button>
            <button class="btnJorge" id="btnAvancar" runat="server" onserverclick="btnArea_ServerClick">
                <div class="divTextoBtnAvancar">
                    <p>Ir à área do cliente</p>
                    <img src="Imagens/usuario.png" />
                </div>
            </button>
        </div>
    </div>
</asp:Content>
