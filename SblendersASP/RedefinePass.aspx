<%@ Page Title="Redefinir senha" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="RedefinePass.aspx.cs" Inherits="TCC.RedefinePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/RedefinePass.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="geral">
        
        <asp:TextBox ID="txtSenha" runat="server" CssClass="campo" TextMode="Password" placeholder="Nova senha" Text=""></asp:TextBox>
        <asp:TextBox ID="txtConfirmarSenha" runat="server" CssClass="campo" TextMode="Password" placeholder="Confirme a Senha" Text=""></asp:TextBox>
        <asp:Label ID="lblAvisoSenha" runat="server" Text="" CssClass="aviso"></asp:Label>
        <asp:Button ID="btnRedefinir" runat="server" Text="Redefinir Senha" OnClick="btnRedefinir_Click"  CssClass="botao"/>
    </div>
</asp:Content>
