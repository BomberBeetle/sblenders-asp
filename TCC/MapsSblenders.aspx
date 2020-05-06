<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="MapsSblenders.aspx.cs" Inherits="TCC.MapsSblenders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid divCorpoMaps">
        <div class="col-4 divTitMapa">
            <div class="divTitMapaChild">
                <h1> Onde Estamos</h1>
            </div>          
        </div>
        <div class="col-8 divMapsSblenders" id ="mapa">
            <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
                <script type ="text/javascript">
                function InicializaMapa() {
                    var latlng = new google.maps.LatLng(-15.682543, -47.978874);
                    var opcoes = {
                        zoom: 8,
                        center: latlng,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                    };
                    var mapa = new google.maps.Map(document.getElementById("mapa"), opcoes);
                }
                window.onload = InicializaMapa;
                </script>
                <!--<h2 class="h2 h2Maps">Usando Google Maps </h2>
                <div ></div>-->
        </div>
    </div>
</asp:Content>
