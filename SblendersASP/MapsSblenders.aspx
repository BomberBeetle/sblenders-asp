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
                <!--<div class="divSubTitMapChild2">
                    <asp:TextBox ID="txtPesquisarMapa" runat="server" CssClass="txtPesquisarMapa"></asp:TextBox>
                    <asp:Button ID="btnPesquisarMapa" runat="server" Text="" CssClass="btnPesquisarMapa"/>
                </div>-->
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
                    <asp:Label ID="lblEndereco16" runat="server" CssClass="lblEndereco" Text="16 - Av. Guilherme Cotching, 729 - Vila Maria, São Paulo - SP, 02113-011" OnClick="localMapa16()"></asp:Label>
                </div>
            </div>          
        </div>
        <div class="col-8 divMapsSblenders" id ="mapa" onload="InicializaMapa()">
            <script type="text/javascript" src=""></script><!--http://maps.googleapis.com/maps/api/js?key=AIzaSyCUSsVX-TY3GHNO9JLsDuI-fA56xJVwb9E-->
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

                    window.onload = InicializaMapa;

                    

                    
                </script>

        </div>
    </div>
</asp:Content>
