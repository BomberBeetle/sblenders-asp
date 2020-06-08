<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="MapsSblenders.aspx.cs" Inherits="TCC.MapsSblenders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid divCorpoMaps">
        <div class="col-4 divTitMapa">
            <div class="divTitMapaChild">
                <h1> Onde Estamos</h1>
                <b>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at feugiat sapien. Sed nec ultrices leo. Proin mattis efficitur nibh placerat mattis. In hac habitasse platea dictumst. Sed augue eros, blandit vel convallis sed, mattis at lorem. Nunc lobortis eu justo vitae dapibus. Ut eget consequat ante, et placerat quam. Mauris ipsum orci, bibendum a neque quis, vestibulum sollicitudin eros. Suspendisse id suscipit magna. Aliquam nec laoreet libero.

Proin eleifend arcu lacus, quis sollicitudin nibh egestas at. Sed in pellentesque tellus. Pellentesque fringilla eros non purus ultrices, sit amet feugiat sapien tempor. Nulla varius imperdiet rhoncus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cras at augue maximus, tempus nisi sed, vestibulum nisi. Quisque tortor lectus, scelerisque nec porta non, elementum at enim. Proin eros magna, egestas eu risus at, finibus molestie erat. Aliquam mauris libero, malesuada id venenatis ut, luctus at erat. Nam eget lacus malesuada, laoreet enim vel, hendrerit orci. Donec efficitur lorem ut maximus efficitur. Proin scelerisque eu ex eu malesuada. Aenean et ante aliquam, condimentum arcu eu, mollis nunc.

Donec mi ligula, blandit tristique nisl eu, mollis facilisis neque. Nunc nec sem efficitur, accumsan orci eget, dictum urna. Sed ut ligula sed ante venenatis consectetur ac ut libero. Morbi risus turpis, elementum faucibus libero sit amet, gravida molestie neque. Cras faucibus mauris dapibus arcu auctor, et blandit sem feugiat. Aliquam vel blandit eros. Nulla dignissim libero et libero consequat, sed fermentum nulla mattis. In egestas, felis eu luctus egestas, lacus magna congue purus, vitae venenatis tortor purus venenatis enim. Donec sapien lorem, scelerisque id elit sed, aliquet convallis est. Cras ultrices mi at mi placerat tristique. Donec sed turpis ante. Aliquam erat volutpat. Cras arcu arcu, fringilla eget nisi at, maximus consectetur magna. Sed luctus diam eget accumsan iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam ac consequat turpis, sit amet lacinia tortor.

Ut maximus urna congue nulla ultricies, non cursus diam porta. Morbi at ultrices justo, non ornare quam. Curabitur sed metus ac tellus pharetra fringilla. Aliquam id sagittis nunc. Vestibulum interdum metus id ipsum dignissim maximus. Ut et dapibus ante, eget euismod diam. Aenean elementum, mauris sed elementum bibendum, lorem lectus dictum erat, eu euismod tortor felis non erat.

Fusce convallis varius auctor. Ut eleifend lorem nisi, viverra commodo tortor scelerisque et. Praesent lacinia quam et dui euismod, quis bibendum augue bibendum. Ut vitae justo sed magna aliquet iaculis. Proin scelerisque magna at luctus iaculis. Sed suscipit tristique lectus posuere rutrum. Phasellus leo mi, vestibulum a tincidunt nec, lobortis eget magna. Proin quis auctor lectus. Aliquam ultricies at ex congue dapibus. </b>
            </div>          
        </div>
        <div class="col-8 divMapsSblenders" id ="mapa">
            <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCUSsVX-TY3GHNO9JLsDuI-fA56xJVwb9E"></script>
                <script type ="text/javascript">
                    styles:[{
                          "featureType": "poi",
                          "stylers": [{
                            "visibility": "off"
                          }]
                    }]
                    styles:[{
                      "featureType": "transit.station.bus",
                      "stylers": [{
                        "visibility": "off"
                      }]
                }]
                function InicializaMapa() {
                    var latlng = new google.maps.LatLng(-23.5489, -46.6388);
                    var opcoes = {
                        zoom: 12,
                        center: latlng,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                    };
                    var map = new google.maps.Map(document.getElementById("mapa"), opcoes);

                    var locations = [
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
                    ];
 
                    for (i = 0; i < locations.length; i++) {  
                      marker = new google.maps.Marker({
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                        title: locations[i][0],
                        map: map,
                        icon: 'Imagens/novoSblendersIcon.png',
                      });
                    }
                    }

                    window.onload = InicializaMapa;

                    

                    
                </script>
                <!--<h2 class="h2 h2Maps">Usando Google Maps </h2>
                <div ></div>-->
        </div>
    </div>
</asp:Content>
