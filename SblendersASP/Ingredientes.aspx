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
        
        <div class="divTextoIngredientes">
            <h1>Ingredientes</h1>
        </div>

        <div class="divSubIngredientes">
            <div class="divPaes">
                <h1> <b> Pães </b></h1>
            </div>
            <div class="divIngredientePaes">
                <div class="divImagemIngrediente">

                </div>
                <div class="divDescricaoIngrediente">

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
        <div class="divTextoIngredientes">
            <h1>Lanche</h1>
        </div>
    </div>

</asp:Content>
