<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="AreaCliente.aspx.cs" Inherits="TCC.AreaCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/AreaCliente.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divBodyAreaCliente" runat="server" id="divBodyAreaCliente">
        <asp:TextBox ID="TextBox1" runat="server" Text=""></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Text=""></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Text=""></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Alterar Dados" OnClick="alterarDados"/>
        <asp:Button ID="Button2" runat="server" Text="Alterar Senha" />
    </div>
</asp:Content>
