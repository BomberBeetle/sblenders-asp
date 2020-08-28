<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="LocalEntrega.aspx.cs" Inherits="TCC.LocalEntrega" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/LocalEntrega.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divCorpoEntrega">
        <div class="divNomeEntrega">
            <div class="divTituloEntrega">
                    <h1> Local de Entrega </h1>
                </div>
        </div>

        <div class="divEnderecoEntrega">
            <div class="divSubEndereco">
                <asp:Label ID="Label1" runat="server" Text="Endereço de Entrega:" CssClass="lblEnderecoMaps"></asp:Label>
                <asp:TextBox ID="txtEndMaps" runat="server" ClientIDMode="Static" CssClass="txtEnderecoMaps"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="" CssClass="lblAvisoEnderecoMaps"></asp:Label>
                <asp:Button ID="btnCalcularRota" runat="server" Text="Calcular Frete" CssClass="btnEnderecoMaps" ClientIDMode="Static" OnClientClick="tracarRota()" OnClick="Button1_Click"/>
                <asp:Label ID="lblCustoFrete" runat="server" Text="Custo do Frete:" CssClass="lblCustoFrete"></asp:Label>
            </div>
            
        </div>
        <div class="divMapsEntrega">
            <div class="divMapsE" id ="mapa" onload="InicializaMapa()">

                <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCUSsVX-TY3GHNO9JLsDuI-fA56xJVwb9E"></script><!---->
                <script type ="text/javascript">                    

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

                    var marker1 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.533446, -46.542555),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo1 = '<div id="divInfobox1">'

                    var infowindow1 = new google.maps.InfoWindow({
                        content: conteudo1
                    });

                    var marker2 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.51094057, -46.63993478),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo2 = '<div id="divInfobox2">'

                    var infowindow2 = new google.maps.InfoWindow({
                        content: conteudo2
                    });

                    var marker3 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.62200102, -46.6548425),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo3 = '<div id="divInfobox3">'

                    var infowindow3 = new google.maps.InfoWindow({
                        content: conteudo3
                    });

                    var marker4 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.54674172, -46.60619795),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo4 = '<div id="divInfobox4">'

                    var infowindow4 = new google.maps.InfoWindow({
                        content: conteudo4
                    });

                    var marker5 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.530822, -46.632565),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo5 = '<div id="divInfobox5">'

                    var infowindow5 = new google.maps.InfoWindow({
                        content: conteudo5
                    });

                    var marker6 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.540086, -46.471189),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo6 = '<div id="divInfobox6">'

                    var infowindow6 = new google.maps.InfoWindow({
                        content: conteudo6
                    });

                    var marker7 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.488445, -46.548990),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo7 = '<div id="divInfobox7">'

                    var infowindow7 = new google.maps.InfoWindow({
                        content: conteudo7
                    });

                    var marker8 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.580961, -46.656938),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo8 = '<div id="divInfobox8">'

                    var infowindow8 = new google.maps.InfoWindow({
                        content: conteudo8
                    });

                    var marker9 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.659340, -46.768888),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo9 = '<div id="divInfobox9">'

                    var infowindow9 = new google.maps.InfoWindow({
                        content: conteudo9
                    });

                    var marker10 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.650001, -46.704369),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo10 = '<div id="divInfobox10">'

                    var infowindow10 = new google.maps.InfoWindow({
                        content: conteudo10
                    });

                    var marker11 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.571713, -46.708885),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo11 = '<div id="divInfobox11">'

                    var infowindow11 = new google.maps.InfoWindow({
                        content: conteudo11
                    });

                    var marker12 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.479693, -46.601862),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo12 = '<div id="divInfobox12">'

                    var infowindow12 = new google.maps.InfoWindow({
                        content: conteudo12
                    });

                    var marker13 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.603058, -46.604008),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo13 = '<div id="divInfobox13">'

                    var infowindow13 = new google.maps.InfoWindow({
                        content: conteudo13
                    });

                    var marker14 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.563546, -46.655087),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo14 = '<div id="divInfobox14">'

                    var infowindow14 = new google.maps.InfoWindow({
                        content: conteudo14
                    });

                    var marker15 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.568796, -46.639941),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo15 = '<div id="divInfobox15">'

                    var infowindow15 = new google.maps.InfoWindow({
                        content: conteudo15
                    });

                    var marker16 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.522107, -46.592830),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var conteudo16 = '<div id="divInfobox16">'

                    var infowindow16 = new google.maps.InfoWindow({
                        content: conteudo16
                    });


                function localMapa1() {
                    map.setZoom(16);
                    map.setCenter(marker1.getPosition());
                }

                function localMapa2() {
                    map.setZoom(16);
                    map.setCenter(marker2.getPosition());
                }

                function localMapa3() {
                    map.setZoom(16);
                    map.setCenter(marker3.getPosition());
                }

                function localMapa4() {
                    map.setZoom(16);
                    map.setCenter(marker4.getPosition());
                }

                function localMapa5() {
                    map.setZoom(16);
                    map.setCenter(marker5.getPosition());
                }

                function localMapa6() {
                    map.setZoom(16);
                    map.setCenter(marker6.getPosition());
                }

                function localMapa7() {
                    map.setZoom(16);
                    map.setCenter(marker7.getPosition());
                }

                function localMapa8() {
                    map.setZoom(16);
                    map.setCenter(marker8.getPosition());
                }

                function localMapa9() {
                    map.setZoom(16);
                    map.setCenter(marker9.getPosition());
                }

                function localMapa10() {
                    map.setZoom(16);
                    map.setCenter(marker10.getPosition());
                }

                function localMapa11() {
                    map.setZoom(16);
                    map.setCenter(marker11.getPosition());
                }

                function localMapa12() {
                    map.setZoom(16);
                    map.setCenter(marker12.getPosition());
                }

                function localMapa13() {
                    map.setZoom(16);
                    map.setCenter(marker13.getPosition());
                }

                function localMapa14() {
                    map.setZoom(16);
                    map.setCenter(marker14.getPosition());
                }

                function localMapa15() {
                    map.setZoom(16);
                    map.setCenter(marker15.getPosition());
                }

                function localMapa16() {
                    map.setZoom(16);
                    map.setCenter(marker16.getPosition());
                }

                function InicializaMapa() {
                   
                    marker1.addListener('click', function () {
                        //endereco1.style.color = '#DD5599';
                        map.setZoom(16);
                        map.setCenter(marker1.getPosition());
                        infowindow1.open(map, marker1);
                    });

                    /*google.maps.event.addListener(marker1, 'click', (function(marker1, i) {
                        return function() {
                            infowindow.setContent("");
                            infowindow.open(map, marker1);
                        }
                    })(marker1))*/

                    map.addListener('center_changed', function() {
                      // 3 seconds after the center of the map has changed, pan back to the
                      // marker.
                      window.setTimeout(function() {
                        map.panTo(marker.getPosition());
                      }, 3000);
                    });

                    marker2.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker2.getPosition());
                        infowindow2.open(map, marker2);
                    });
                   
                    marker3.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker3.getPosition());
                        infowindow3.open(map, marker3);
                    });
                    
                    marker4.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker4.getPosition());
                        infowindow4.open(map, marker4);
                    });
                    
                    marker5.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker5.getPosition());
                        infowindow5.open(map, marker5);
                    });
                    
                    marker6.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker6.getPosition());
                        infowindow6.open(map, marker6);
                    });
                    
                    marker7.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker7.getPosition());
                        infowindow7.open(map, marker7);
                    });
                    
                    marker8.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker8.getPosition());
                        infowindow8.open(map, marker8);
                    });
                    
                    marker9.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker9.getPosition());
                        infowindow9.open(map, marker9);
                    });
                    
                    marker10.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker10.getPosition());
                        infowindow10.open(map, marker10);
                    });
                  
                    marker11.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker11.getPosition());
                        infowindow11.open(map, marker11);
                    });

                    marker12.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker12.getPosition());
                        infowindow12.open(map, marker12);
                    });

                    marker13.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker13.getPosition());
                        infowindow13.open(map, marker13);
                    });       

                    marker14.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker14.getPosition());
                        infowindow14.open(map, marker14);
                    });

                    marker15.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker15.getPosition());
                        infowindow15.open(map, marker15);
                    });

                    marker16.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker16.getPosition());
                        infowindow16.open(map, marker16);
                    });

                }

                var lat = '';
                var lng = '';  
                var lat2 = '';
                var lng2 = ''; 
                var distancia = '';
                var tempo = '';                    

                function tracarRota() {                    
                    var address = document.getElementById("txtEndMaps").value;
                    var validate = false;

                    geocoder.geocode({ 'address': address }, function (results, status) {

                        if (status == google.maps.GeocoderStatus.OK) {

                            lat = results[0].geometry.location.lat();
                            lng = results[0].geometry.location.lng();

                            var url = "https://localhost:44323/api/Restaurante/" + lat + "/" + lng + "/5000";                       
                            fetch(url , {cors:"anonymous"}).then((res) => {
                                res.json().then((dados) => {
                                    lat2 = dados[0].restauranteLat;
                                    lng2 = dados[0].restauranteLong;
                                    console.log(dados);
                                })
                            }).catch((err) => {
                                alert("Não foi possivel obter localização: " + err);
                                validate = false;
                            })

                            directionsService.route({
                                origin: {lat: lat2, lng: lng2},  
                                destination: {lat: lat, lng: lng},  
                                travelMode: google.maps.DirectionsTravelMode.DRIVING
       
                            },function(response, status) {
          
                              if (status == google.maps.DirectionsStatus.OK) {
                                  distancia = response.routes[0].legs[0].distance.value;
                                  tempo = response.routes[0].legs[0].duration.text;
                                  directionsDisplay.setOptions({ preserveViewport: true });
                                  directionsDisplay.setDirections(response);
                                  alert(distancia);
                                  alert(tempo);
                                  validate = true;
                              }
                              else {
                                  alert('Directions request failed due to ' + status);
                                  validate = false;
                              }
                            });

                              /*service.getDistanceMatrix(
                              {
                                  //Origem
                                  origins: marker10.position,
                                  //Destino
                                  destinations: {lat: lat, lng: lng},
                                  //Modo (DRIVING | WALKING | BICYCLING)
                                  travelMode: google.maps.TravelMode.DRIVING,
                                  //Sistema de medida (METRIC | IMPERIAL)
                                  unitSystem: google.maps.UnitSystem.METRIC
                                  //Vai chamar o callback
                              }, function (response, status) {
                                    //Verificar o Status
                                  if (status == google.maps.DistanceMatrixStatus.OK) {
                                      distancia = response.rows[0].elements[0].distance.value();
                                      tempo = response.rows[0].elements[0].duration.value();
                                      document.getElementById("lblCustoFrete").value = "Custo do Frete:" + distancia + " " + tempo;
                                  }
                                        
                                    else {
                                        alert('Directions request failed due to ' + status);
                                    }
                                });*/
                           
                        }
                        else {
                            alert("Não foi possivel obter localização: " + status);
                            validate = false;
                        }
                        
                    });

                    <%=ok%> = validate;
                    event.preventDefault();
                    return validate;
                }    
                   
                    window.onload = InicializaMapa;
                                        
                </script>
            </div>
        </div>
    </div>
</asp:Content>
