<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="RedefinePass.aspx.cs" Inherits="TCC.RedefinePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/AdicaoCarrinho.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtConfirmarSenha" runat="server"></asp:TextBox>
    <asp:Label ID="lblAvisoSenha" runat="server" Text=""></asp:Label>
    <asp:Button ID="btnRedefinir" runat="server" Text="Redefinir Senha" OnClick="btnRedefinir_Click" />
</asp:Content>
