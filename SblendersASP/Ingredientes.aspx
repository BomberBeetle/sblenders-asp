<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Ingredientes.aspx.cs" Inherits="TCC.Ingredientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Ingredientes.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


    <div class="divNomePagina">
        <div class="divTituloPagina">
            <h1> Escolha os Ingredientes </h1>
        </div>
    </div>

    <div class="divIngredientes">
        
        <!--<div class="divTextoIngredientes">
            <h1>Ingredientes</h1>
        </div>-->

        <div class="divSubIngredientes">
            <div class="divPaes">
                <h1> <b> Pães </b></h1>
            </div>

            <div class="divIngredientePaes">
                <div class="divImagemIngrediente">
                    <img src="Imagens/paoHamburguerSuperior.png" class="imgIngrediente" />
                </div>
                <div class="divDescricaoIngrediente">
                    <div class="divSubDescricaoIngrediente flex">
                        <asp:Label ID="Label2" runat="server" Text="Pão de Hamburguer Superior" CssClass="lblNomeIngrediente"></asp:Label>
                    </div>
                    <div class="divSubDescricaoIngrediente">
                        <div class="divBtnIngrediente flex">
                            <asp:Button ID="Button1" runat="server" Text="Mais Informações" CssClass="btnMaisInformacoesIngredientes"/>
                        </div>
                        <div class="divBtnIngrediente flex">
                            <asp:Button ID="Button2" runat="server" Text="Adicionar" CssClass="btnMaisInformacoesIngredientes" />
                        </div>                        
                        
                    </div>
                </div>


                <div class="divValorIngrediente">
                    <asp:Label ID="Label1" runat="server" Text="R$ 0,75 " CssClass="lblValorIngrediente"></asp:Label>
                </div>
            </div>

            <div class="divIngredientePaes">
                <div class="divImagemIngrediente">
                    <img src="Imagens/paoHamburguerSuperior.png" class="imgIngrediente" />
                </div>
                <div class="divDescricaoIngrediente">
                    <div class="divSubDescricaoIngrediente flex">
                        <asp:Label ID="Label3" runat="server" Text="Pão de Hamburguer Superior" CssClass="lblNomeIngrediente"></asp:Label>
                    </div>
                    <div class="divSubDescricaoIngrediente">
                        <div class="divBtnIngrediente flex">
                            <asp:Button ID="Button3" runat="server" Text="Mais Informações" CssClass="btnMaisInformacoesIngredientes"/>
                        </div>
                        <div class="divBtnIngrediente flex">
                            <asp:Button ID="Button4" runat="server" Text="Adicionar" CssClass="btnMaisInformacoesIngredientes" />
                        </div>                        
                        
                    </div>
                </div>


                <div class="divValorIngrediente">
                    <asp:Label ID="Label4" runat="server" Text="R$ 0,75 " CssClass="lblValorIngrediente"></asp:Label>
                </div>
            </div>


            <div class="divIngredientePaes">
                <div class="divImagemIngrediente">
                    <img src="Imagens/paoHamburguerSuperior.png" class="imgIngrediente" />
                </div>
                <div class="divDescricaoIngrediente">
                    <div class="divSubDescricaoIngrediente flex">
                        <asp:Label ID="Label5" runat="server" Text="Pão de Hamburguer Superior" CssClass="lblNomeIngrediente"></asp:Label>
                    </div>
                    <div class="divSubDescricaoIngrediente">
                        <div class="divBtnIngrediente flex">
                            <asp:Button ID="Button5" runat="server" Text="Mais Informações" CssClass="btnMaisInformacoesIngredientes"/>
                        </div>
                        <div class="divBtnIngrediente flex">
                            <asp:Button ID="Button6" runat="server" Text="Adicionar" CssClass="btnMaisInformacoesIngredientes" />
                        </div>                        
                        
                    </div>
                </div>


                <div class="divValorIngrediente">
                    <asp:Label ID="Label6" runat="server" Text="R$ 0,75 " CssClass="lblValorIngrediente"></asp:Label>
                </div>
            </div>

            <div class="divEspaco">

            </div>
            

            <div class="divCarnes">
                <h1> <b> Carnes </b></h1>
            </div>

            <div class="divEspaco">

            </div>
            <div class="divCarnes">
                <h1> <b> Verduras </b></h1>
            </div>

            <div class="divEspaco">

            </div>
            <div class="divCarnes">
                <h1> <b> Legumes </b></h1>
            </div>

            <div class="divEspaco">

            </div>
            <div class="divCarnes">
                <h1> <b> Molhos </b></h1>
            </div>

            <div class="divEspaco">

            </div>
            <div class="divCarnes">
                <h1> <b> Queijos </b></h1>
            </div>

            <div class="divEspaco">

            </div>
        </div>
    </div>

    <div class="divIngredientesCliente">
        <!--<div class="divTextoIngredientes">
            <h1>Lanche</h1>
        </div>-->
    </div>

</asp:Content>
