<%@ Page Title="Local de Entrega" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="LocalEntrega.aspx.cs" Inherits="TCC.LocalEntrega" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/LocalEntrega.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divTituloPagina">
        <h1>Finalizar Pedido </h1>
    </div>
    <div class="divCorpoEntrega">
        <div class="geral">
            <div class="geral2">
                <div class="divEnderecoEntrega">
                    <div class="divSubEndereco">
                        <div class="divLblEntrega">
                            <asp:Label ID="Label1" runat="server" Text="Endereço de Entrega:" CssClass="lblEnderecoMaps"></asp:Label>
                        </div>
                        <div class="divTxtEntrega">
                            <asp:TextBox ID="txtEndMaps" runat="server" ClientIDMode="Static" CssClass="txtEnderecoMaps"></asp:TextBox>
                        </div>
                        <div class="divLblAvisoEntrega">
                            <asp:Label ID="lblOculto" runat="server" Text="" CssClass="hidden" ClientIDMode="Static"></asp:Label>
                        </div>
                        <div class="divBtnEntrega">
                            <button id="btnCalcularRota" type="button" class="btnEnderecoMaps" onclick="tracarRota()">Calcular Rota</button>
                            <asp:Button ID="hiddenFuncButton" runat="server" OnClick="Button1_Click" ClientIDMode="Static" CssClass="hidden" />
                            <!--<asp:Label ID="lblCustoFrete" runat="server" Text="Custo do Frete:" CssClass="lblCustoFrete"></asp:Label>-->
                            <asp:HiddenField ID="hiddenOk" runat="server" Value="bt" ClientIDMode="Static" />
                            <asp:HiddenField ID="hiddenRID" Value="" runat="server" ClientIDMode="Static" />
                        </div>

                    </div>

                    <div class="divInstrucoes">
                        <div class="divSubInstrucoes1">
                            <p>Instruções do Pedido (Opcional)</p>
                        </div>
                        <div class="divSubInstrucoes2">
                            <asp:TextBox ID="txtInstrucoes" runat="server" MaxLength="200" CssClass="txtInstrucoes" TextMode="MultiLine" Wrap="True"></asp:TextBox>
                        </div>

                    </div>
                </div>

                <div class="divMapsEntrega">
                    <div class="divMapsE" id="mapa" onload="InicializaMapa()">

                        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCUSsVX-TY3GHNO9JLsDuI-fA56xJVwb9E"></script>
                        <!---->
                        <script type="text/javascript">                    

                            var latlng = new google.maps.LatLng(-23.5489, -46.6388);
                            var opcoes = {
                                zoom: 12,
                                center: latlng,
                                mapTypeId: google.maps.MapTypeId.ROADMAP,
                                mapTypeControl: false,
                                streetViewControl: false,
                                scaleControl: true,
                            };
                            var styledMapType = new google.maps.StyledMapType([
                                {
                                    featureType: 'administrative',
                                    elementType: 'geometry',
                                    stylers: [
                                        {
                                            visibility: 'off'
                                        }
                                    ]
                                },
                                {
                                    featureType: 'poi',
                                    stylers: [
                                        {
                                            visibility: 'off'
                                        }
                                    ]
                                },
                                {
                                    featureType: 'road',
                                    elementType: 'labels.icon',
                                    stylers: [
                                        {
                                            visibility: 'off'
                                        }
                                    ]
                                },
                                {
                                    featureType: 'transit',
                                    stylers: [
                                        {
                                            visibility: 'off'
                                        }
                                    ]
                                }
                            ]
                            )

                            geocoder = new google.maps.Geocoder();
                            var directionsDisplay = new google.maps.DirectionsRenderer;
                            var directionsService = new google.maps.DirectionsService;
                            //var service = new google.maps.DistanceMatrixService();
                            var map = new google.maps.Map(document.getElementById("mapa"), opcoes);
                            map.mapTypes.set('styled_map', styledMapType);
                            map.setMapTypeId('styled_map');
                            directionsDisplay.setMap(map);

                            /*
                            var conteudo1 = '<div id="divInfobox1">'
        
                            var infowindow1 = new google.maps.InfoWindow({
                                content: conteudo1
                            });*/


                            function InicializaMapa() {

                                url = "https://localhost:44323/api/Restaurante/";
                                fetch(url, { cors: "anonymous" }).then((res) => {
                                    res.json().then((dados) => {
                                        var cont = dados.length - 1;
                                        while (cont >= 0) {
                                            let markerT = new google.maps.Marker({
                                                position: new google.maps.LatLng(dados[cont].restauranteLat, dados[cont].restauranteLong),
                                                map: map,
                                                icon: 'Imagens/novoSblendersIcon.png',
                                            })

                                            markerT.addListener('click', function () {
                                                map.setZoom(16);
                                                map.setCenter(markerT.getPosition());
                                                infowindow1.open(map, markerT);
                                            });
                                            cont--;
                                        }
                                    }).catch((err) => {
                                        //alert("Erro: " + err);
                                    })
                                });

                                map.addListener('center_changed', function () {
                                    window.setTimeout(function () {
                                        map.panTo(marker.getPosition());
                                    }, 3000);
                                });

                            }

                            var lat = '';
                            var lng = '';
                            var lat2 = '';
                            var lng2 = '';
                            var rid = '';
                            var distancia = '';
                            var tempo = '';
                            var url = "";
                            async function tracarRota() {
                                var address = document.getElementById("txtEndMaps").value;

                                geocoder.geocode({ 'address': address }, function (results, status) {

                                    if (status == google.maps.GeocoderStatus.OK) {
                                        lat = results[0].geometry.location.lat();
                                        lng = results[0].geometry.location.lng();
                                        url = "https://localhost:44323/api/Restaurante/" + lat + "/" + lng + "/5000";
                                        fetch(url, { cors: "anonymous" }).then((res) => {
                                            res.json().then((dados) => {
                                                if (dados.length < 1) {
                                                    alert("Nenhum restaurante em 5km de distância")
                                                    tracarRotaCallbackFinished(false);
                                                    return;
                                                }
                                                lat2 = dados[0].restauranteLat;
                                                lng2 = dados[0].restauranteLong;
                                                rid = dados[0].restauranteID;
                                                directionsService.route({
                                                    origin: { lat: lat2, lng: lng2 },
                                                    destination: { lat: lat, lng: lng },
                                                    travelMode: google.maps.DirectionsTravelMode.DRIVING

                                                }, function (response, status) {

                                                    if (status == google.maps.DirectionsStatus.OK) {
                                                        distancia = response.routes[0].legs[0].distance.value;
                                                        tempo = response.routes[0].legs[0].duration.text;
                                                        directionsDisplay.setOptions({ preserveViewport: true });
                                                        directionsDisplay.setDirections(response);
                                                        //alert(distancia);
                                                        //alert(tempo);
                                                        tracarRotaCallbackFinished(true);
                                                    }
                                                    else {
                                                        //alert('Directions request failed due to ' + status);
                                                        tracarRotaCallbackFinished(false);
                                                    }
                                                });
                                            })
                                        }).catch((err) => {
                                            //alert("Não foi possivel obter localização: " + err);
                                            tracarRotaCallbackFinished(false);
                                        })



                                    }
                                    else {
                                        //alert("Não foi possivel obter localização: BATATA " + status);
                                        tracarRotaCallbackFinished(false);
                                    }

                                });

                                return true;
                            }

                            async function tracarRotaReverso() {
                                var address = document.getElementById("txtEndMaps").value;

                                geocoder.geocode({ 'address': address }, function (results, status) {

                                    if (status == google.maps.GeocoderStatus.OK) {
                                        lat = results[0].geometry.location.lat();
                                        lng = results[0].geometry.location.lng();
                                        url = "https://localhost:44323/api/Restaurante/" + lat + "/" + lng + "/5000";
                                        fetch(url, { cors: "anonymous" }).then((res) => {
                                            res.json().then((dados) => {
                                                if (dados.length < 1) {
                                                    return;
                                                }
                                                lat2 = dados[0].restauranteLat;
                                                lng2 = dados[0].restauranteLong;
                                                directionsService.route({
                                                    origin: { lat: lat2, lng: lng2 },
                                                    destination: { lat: lat, lng: lng },
                                                    travelMode: google.maps.DirectionsTravelMode.DRIVING

                                                }, function (response, status) {

                                                    if (status == google.maps.DirectionsStatus.OK) {
                                                        distancia = response.routes[0].legs[0].distance.value;
                                                        tempo = response.routes[0].legs[0].duration.text;
                                                        directionsDisplay.setOptions({ preserveViewport: true });
                                                        directionsDisplay.setDirections(response);
                                                    }
                                                    else {

                                                    }
                                                });
                                            })
                                        }).catch((err) => {

                                        })

                                    }
                                    else {

                                    }
                                });
                                return true;
                            }

                            function tracarRotaCallbackFinished(ok) {
                                document.getElementById("hiddenOk").value = ok;
                                document.getElementById("hiddenRID").value = rid;
                                document.getElementById('hiddenFuncButton').click();
                            }
                            //document.getElementById("btnCalcularRota").onclick = tracarRota;
                            window.onload = InicializaMapa;

                        </script>
                    </div>
                </div>
            </div>

            <div class="divBtnFinalizar">
                <button class="btnFinalizarPedido" id="btnFinalizarPedido" runat="server" onserverclick="FinalizarPedido">
                    <div class="divTextoBtnFinalizar">
                        <p>Finalizar Pedido</p>
                        <img src="Imagens/seta2.png" />
                    </div>
                </button>
            </div>
        </div>
    </div>
</asp:Content>
