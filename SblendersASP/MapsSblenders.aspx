<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="MapsSblenders.aspx.cs" Inherits="TCC.MapsSblenders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid divCorpoMaps">
        <div class="col-4 divTitMapa">
            <div class="divTitMapaChild">
                <h1> Onde Estamos</h1>
                <b>
                    Marker1 = R. Alvinópolis, 178 - Vila Beatriz, São Paulo - SP, 03644-070
                    Marker2 = Av. Olavo Fontoura, 1078 - Santana São Paulo - SP 02012-021 
                    Marker3 = R. Miquelino Gabriel Fraga, 51 - Vila Noca, São Paulo - SP, 04072-030
                    Marker4 = R. Ipanema, 618-652 - Mooca, São Paulo - SP, 03164-200
                    Marker5 = Avenida Tiradentes, Bom Retiro, São Paulo - SP, 01124-060
                    Marker6 = Av. José Pinheiro Borges, s/n - 102 - Itaquera, São Paulo - SP, 08220-900
                    Marker7 = R. Engenheiro Camilo Olivetti, Guarulhos - SP, 07034-911
                    Marker8 = R. Mal. Maurício Cardoso, Paraíso, São Paulo - SP
                    Marker9 = Av. Carlos Caldeira Filho, Cidade Auxiliadora, São Paulo - SP, 05798-300
                    Marker10 = Av. Adolfo Pinheiro, 301 - Santo Amaro, São Paulo - SP, 04733-100
                    Marker11 = Av. Vital Brasil, City Butantã - Butantã, São Paulo - SP
                    Marker12 = R. Paulo de Faria, 212-364 - Vila Gustavo, São Paulo - SP
                    Marker13 = Rua Ettore Lantieri, 102 - Sacomã, São Paulo - SP, 04249-095
                    Marker14 = Av. Paulista, Jardins, São Paulo - SP
                    Marker15 = Rua Vergueiro - Liberdade, São Paulo - SP, 01323-090

                </b>
            </div>          
        </div>
        <div class="col-8 divMapsSblenders" id ="mapa">
            <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCUSsVX-TY3GHNO9JLsDuI-fA56xJVwb9E"></script>
                <script type ="text/javascript">

                function InicializaMapa() {
                    var latlng = new google.maps.LatLng(-23.5489, -46.6388);
                    var opcoes = {
                        zoom: 12,
                        center: latlng,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
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

                    var marker1 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.533446, -46.542555),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker1.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker2 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.51094057, -46.63993478),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker2.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker3 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.62200102, -46.6548425),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker3.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker4 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.54674172, -46.60619795),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker4.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker5 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.530822, -46.632565),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker5.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker6 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.540086, -46.471189),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker6.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker7 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.488445, -46.548990),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker7.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker8 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.580961, -46.656938),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker8.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker9 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.659340, -46.768888),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker9.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker10 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.650001, -46.704369),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker10.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker11 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.571713, -46.708885),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker11.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker12 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.479693, -46.601862),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker12.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker13 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.603058, -46.604008),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker13.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker14 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.563546, -46.655087),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker14.addListener('click', function() {
                         alert("pegou click no marcador");
                    });

                    var marker15 = new google.maps.Marker({
                        position: new google.maps.LatLng(-23.568796, -46.639941),
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                    })

                    marker15.addListener('click', function() {
                         alert("pegou click no marcador");
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
