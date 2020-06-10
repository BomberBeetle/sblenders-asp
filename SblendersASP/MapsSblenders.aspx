<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="MapsSblenders.aspx.cs" Inherits="TCC.MapsSblenders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid divCorpoMaps">
        <div class="col-4 divTitMapa">
            <div class="divTitMapaChild">
                <div class="divSubTitMapChild1">
                    <h1> Onde Estamos</h1>
                </div>
                <div class="divSubTitMapChild2">
                    <asp:TextBox ID="txtPesquisarMapa" runat="server" CssClass="txtPesquisarMapa"></asp:TextBox>
                    <asp:Button ID="btnPesquisarMapa" runat="server" Text="" CssClass="btnPesquisarMapa"/>
                </div>
                <div class="divSubTitMapChild3">
                    <asp:Label ID="lblEndereco1" runat="server" CssClass="lblEndereco" Text="1 - R. Alvinópolis, 178 - Vila Beatriz, São Paulo - SP, 03644-070" OnClick="localMapa1()"></asp:Label>
                    <asp:Label ID="lblEndereco2" runat="server" CssClass="lblEndereco" Text="2 - Av. Olavo Fontoura, 1078 - Santana São Paulo - SP 02012-021 " OnClick="localMapa2()"></asp:Label>
                    <asp:Label ID="lblEndereco3" runat="server" CssClass="lblEndereco" Text="3 - R. Miquelino Gabriel Fraga, 51 - Vila Noca, São Paulo - SP, 04072-030" OnClick="localMapa3()"></asp:Label>
                    <asp:Label ID="lblEndereco4" runat="server" CssClass="lblEndereco" Text="4 - R. Ipanema, 618-652 - Mooca, São Paulo - SP, 03164-200" OnClick="localMapa4()"></asp:Label >
                    <asp:Label ID="lblEndereco5" runat="server" CssClass="lblEndereco" Text="5 - Avenida Tiradentes, Bom Retiro, São Paulo - SP, 01124-060" OnClick="localMapa5()"></asp:Label>
                    <asp:Label ID="lblEndereco6" runat="server" CssClass="lblEndereco" Text="6 - Av. José Pinheiro Borges, s/n - 102 - Itaquera, São Paulo - SP, 08220-900" OnClick="localMapa6()"></asp:Label>
                    <asp:Label ID="lblEndereco7" runat="server" CssClass="lblEndereco" Text="7 - R. Engenheiro Camilo Olivetti, Guarulhos - SP, 07034-911" OnClick="localMapa7()"></asp:Label>
                    <asp:Label ID="lblEndereco8" runat="server" CssClass="lblEndereco" Text="8 - R. Mal. Maurício Cardoso, Paraíso, São Paulo - SP" OnClick="localMapa8()"></asp:Label>
                    <asp:Label ID="lblEndereco9" runat="server" CssClass="lblEndereco" Text="9 - Av. Carlos Caldeira Filho, Cidade Auxiliadora, São Paulo - SP, 05798-300" OnClick="localMapa9()"></asp:Label>
                    <asp:Label ID="lblEndereco10" runat="server" CssClass="lblEndereco" Text="10 - Av. Adolfo Pinheiro, 301 - Santo Amaro, São Paulo - SP, 04733-100" OnClick="localMapa10()"></asp:Label>
                    <asp:Label ID="lblEndereco11" runat="server" CssClass="lblEndereco" Text="11 - Av. Vital Brasil, City Butantã - Butantã, São Paulo - SP" OnClick="localMapa11()"></asp:Label>
                    <asp:Label ID="lblEndereco12" runat="server" CssClass="lblEndereco" Text="12 - R. Paulo de Faria, 212-364 - Vila Gustavo, São Paulo - SP" OnClick="localMapa12()"></asp:Label>
                    <asp:Label ID="lblEndereco13" runat="server" CssClass="lblEndereco" Text="13 - Rua Ettore Lantieri, 102 - Sacomã, São Paulo - SP, 04249-095" OnClick="localMapa13()"></asp:Label>
                    <asp:Label ID="lblEndereco14" runat="server" CssClass="lblEndereco" Text="14 - Av. Paulista, Jardins, São Paulo - SP" OnClick="localMapa14()"></asp:Label>
                    <asp:Label ID="lblEndereco15" runat="server" CssClass="lblEndereco" Text="15 - Rua Vergueiro - Liberdade, São Paulo - SP, 01323-090" OnClick="localMapa15()"></asp:Label>              
                </div>
            </div>          
        </div>
        <div class="col-8 divMapsSblenders" id ="mapa" onload="InicializaMapa()">
            <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCUSsVX-TY3GHNO9JLsDuI-fA56xJVwb9E"></script>
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

                     


                    var map = new google.maps.Map(document.getElementById("mapa"), opcoes);
                    map.mapTypes.set('styled_map', styledMapType);
                    map.setMapTypeId('styled_map');

                    var marker1 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.533446, -46.542555),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker2 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.51094057, -46.63993478),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker3 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.62200102, -46.6548425),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker4 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.54674172, -46.60619795),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker5 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.530822, -46.632565),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker6 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.540086, -46.471189),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker7 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.488445, -46.548990),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker8 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.580961, -46.656938),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker9 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.659340, -46.768888),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker10 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.650001, -46.704369),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker11 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.571713, -46.708885),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker12 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.479693, -46.601862),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker13 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.603058, -46.604008),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker14 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.563546, -46.655087),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    var marker15 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.568796, -46.639941),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    //var endereco1 = document.getElementById('lblEndereco1');

                    /*function MudarCor() {
                        alert("jdhfjkdsh");
                        document.getElementById('lblEndereco1').style.color = "#FFF";
                    }*/

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

                function InicializaMapa() {

                    /*var locations = [
                      ['First Shoppe', -23.51094057, -46.63993478],
                      ['Second Shoppe', -23.62200102, -46.6548425],
                      ['Third Shoppe', -23.54674172, -46.60619795],
                      ['Fourth Shoppe', -23.530822, -46.632565],
                      ['Fifth Shoppe', -23.540086, -46.471189],
                      ['Sixth Shoppe', -23.488445, -46.548990],
                      ['Seventh Shoppe', -23.580961, -46.656938],
                      ['dshsdh', -23.659340, -46.768888],
                      ['dshsdh', -23.650001, -46.704369],
                      ['dshsdh', -23.571713, -46.708885],
                      ['dshsdh', -23.479693, -46.601862],
                      ['dshsdh', -23.603058, -46.604008],
                      ['dshsdh',-23.563546, -46.655087],
                      ['dshsdh',-23.568796, -46.639941],
                    ];*/

                    var infowindow = new google.maps.InfoWindow(), marker;

                    

                    marker1.addListener('click', function () {
                        //endereco1.style.color = '#DD5599';
                        map.setZoom(16);
                        map.setCenter(marker1.getPosition());
                    });

                    google.maps.event.addListener(marker1, 'click', (function(marker1, i) {
                        return function() {
                            infowindow.setContent("");
                            infowindow.open(map, marker1);
                        }
                    })(marker1))

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
                    });

                   

                    marker3.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker3.getPosition());
                    });

                    

                    marker4.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker4.getPosition());
                    });

                    

                    marker5.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker5.getPosition());
                    });

                    

                    marker6.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker6.getPosition());
                    });

                    

                    marker7.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker7.getPosition());
                    });

                    

                    marker8.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker8.getPosition());
                    });

                    

                    marker9.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker9.getPosition());
                    });

                    

                    marker10.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker10.getPosition());
                    });

                    

                    marker11.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker11.getPosition());
                    });

                    

                    marker12.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker12.getPosition());
                    });

                    

                    marker13.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker13.getPosition());
                    });

                    

                    marker14.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker14.getPosition());
                    });

                    

                    marker15.addListener('click', function() {
                        map.setZoom(16);
                        map.setCenter(marker15.getPosition());
                    });
 
                    /*for (i = 0; i < locations.length; i++) {  
                      marker = new google.maps.Marker({
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                        title: locations[i][0],
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                      });
                    }*/
                    }

                    window.onload = InicializaMapa;

                    

                    
                </script>
                <!--<h2 class="h2 h2Maps">Usando Google Maps </h2>
                <div ></div>-->
        </div>
    </div>
</asp:Content>
