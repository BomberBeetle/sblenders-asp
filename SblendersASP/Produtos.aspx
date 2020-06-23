<%@ Page Title="" Language="C#" MasterPageFile="~/Mestre.Master" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="TCC.Produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/Produtos.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--<div class="divIndicadorPagina">
        <div class="divTriangulo">
            <div class="divSubTriangulo">

            </div>
            <div class="divSubParalelo">

            </div>
        </div>
        <div class="divParalelo">
            <div class="divSubTriangulo">

            </div>
            <div class="divSubParalelo">

            </div>
        </div>

        <div class="divParalelo2">
            <div class="divSubTriangulo">

            </div>
            <div class="divSubParalelo">

            </div>
        </div>

        <div class="divParalelo2">
            <div class="divSubTriangulo">

            </div>
            <div class="divSubParalelo">

            </div>
        </div>

        <div class="divParalelo2">
            <div class="divSubTriangulo">

            </div>
            <div class="divSubParalelo">

            </div>
        </div>

        <div class="divParalelo2">
            <div class="divSubTriangulo">

            </div>
            <div class="divSubParalelo">

            </div>
        </div>

        <div class="divParalelo2">
            <div class="divSubTriangulo">

            </div>
            <div class="divSubParalelo">

            </div>
        </div>
    </div>
    <div id="1">
        <div id="divlista">
            <div id="title">
                <h1>Lista de Produtos</h1>
            </div>
            <div id="lista">
                
            </div>
        </div>

    </div>-->

    <div class="divCorpoProdutos" onclick="TesteConexao()">

        <div class="divNomePagina">
                <div class="divTituloPagina">
                    <h1> Monte seu Pedido </h1>
                </div>
            </div>

        <div class="divAdicionarLanches">
            
            <div class="divBurguer" id="divBurguer1">
                <div class="divSubBurguer1">
                    <h1 class="h1Burguer"> Sblenders 1 </h1>
                    <asp:Label ID="lblBurguerDescricao" runat="server" Text="

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac feugiat massa, id sodales nibh. Donec vel orci nec dui rhoncus scelerisque. Nullam imperdiet eget dui a aliquam. Vestibulum a est ac lorem tincidunt sollicitudin. In ut orci eget tellus rutrum tempus. Ut cursus dui non risus fringilla, id mattis ligula interdum. Phasellus facilisis, eros interdum varius ultrices, urna mauris ultricies est, a viverra felis sem nec libero. In et libero consequat, ullamcorper est et, blandit ante. Quisque in lobortis ipsum. Curabitur efficitur, lectus scelerisque gravida vehicula, risus nisl tincidunt lacus, in elementum nunc erat id sapien. Aliquam posuere eleifend nisl, ac luctus purus vehicula eu. Phasellus quis commodo augue. Morbi eget mi molestie, egestas magna eu, tempus ligula. Duis malesuada, dui eu posuere volutpat, metus erat accumsan dui, nec dignissim eros turpis ac nulla.

Aliquam ornare congue lorem at facilisis. Nulla placerat urna porta, placerat odio eu, pulvinar libero. Phasellus sagittis justo odio, sed malesuada massa ornare et. Aenean condimentum felis tincidunt velit sagittis finibus. Curabitur feugiat volutpat sem. Mauris egestas tristique sapien, id tempus nisi. Fusce aliquet sem interdum urna rhoncus, ac hendrerit velit aliquet. Vestibulum finibus metus sit amet purus vestibulum, eget hendrerit lacus molestie. Proin egestas dolor in ex consectetur pellentesque. Nam nec nunc sem. Mauris accumsan consequat ligula vitae sagittis. Nulla mollis eleifend leo ut pellentesque. Donec sollicitudin ut magna ac luctus. In sodales quam et tempus luctus.

In tristique quis erat et tincidunt. Etiam et leo nec massa consectetur cursus quis non tortor. Proin finibus auctor leo quis placerat. Fusce blandit risus turpis, at rutrum quam porttitor at. Donec ante lacus, euismod eget erat vel, hendrerit vehicula turpis. Aliquam ut ex ligula. Morbi id tristique mi, sit amet consectetur tortor. Aenean a dui in diam interdum lacinia id sed ex. Ut at ante euismod, ornare nibh ut, tempor ex. Etiam semper erat a quam elementum, et pretium orci molestie. Praesent sagittis egestas leo, quis luctus odio lacinia in. Etiam sit amet risus tristique, dictum nisi ut, tempor nunc. Sed pellentesque enim neque, a rhoncus magna interdum at. Integer ut ipsum nec dui auctor porttitor sed sed neque. Fusce vestibulum, quam non sodales aliquam, mi ante bibendum ex, at pretium elit tortor et diam.

Suspendisse potenti. Donec a imperdiet leo, vel efficitur orci. Morbi tristique elit massa, aliquam faucibus nisl accumsan a. Duis lobortis mollis turpis. Morbi metus nisl, euismod vitae malesuada et, molestie ac sapien. Praesent nec mauris efficitur augue cursus vulputate. Vivamus at semper dolor. Nam nec interdum massa, quis blandit risus. Sed nulla dui, semper vitae pellentesque quis, varius nec orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed justo nisi, rutrum et massa nec, semper pretium turpis. Cras vehicula sit amet neque porta porttitor. Fusce ut porttitor urna, vel consequat tortor. Proin sed justo ac urna sollicitudin sodales. In sagittis quam in mauris accumsan gravida.

Donec tincidunt posuere porttitor. Nunc id neque id risus auctor aliquam non vitae massa. Aenean fringilla orci non dictum scelerisque. Quisque at urna vitae eros imperdiet tincidunt. Vivamus urna urna, rhoncus et tincidunt ut, volutpat eget ex. Mauris in varius nibh. Ut vel nulla non lorem varius scelerisque. Nunc orci magna, accumsan sit amet cursus vitae, congue id enim. " CssClass="lblBurguerDescricao"></asp:Label>
                </div>
                <div class="divSubBurguer2">
                    <img src="Imagens/burger7.png" class="imgDivBurguer"/>
                </div>
                <div class="divSubBurguer3">
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button1" runat="server" Text="Adicionar Ingredientes" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button2" runat="server" Text="Excluir Lanches" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer3">

                    </div>
                    <div class="divBtnBurguer4">
                        <asp:Label ID="Label1" runat="server" Text="Valor Unitário: R$87,75" CssClass="lblValorLanche"></asp:Label>
                    </div>
                    
                </div>
            </div>

            <div class="divBurguer" id="divBurguer2">
                <div class="divSubBurguer1">
                    <h1 class="h1Burguer"> Sblenders 1 </h1>
                    <asp:Label ID="Label2" runat="server" Text="

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac feugiat massa, id sodales nibh. Donec vel orci nec dui rhoncus scelerisque. Nullam imperdiet eget dui a aliquam. Vestibulum a est ac lorem tincidunt sollicitudin. In ut orci eget tellus rutrum tempus. Ut cursus dui non risus fringilla, id mattis ligula interdum. Phasellus facilisis, eros interdum varius ultrices, urna mauris ultricies est, a viverra felis sem nec libero. In et libero consequat, ullamcorper est et, blandit ante. Quisque in lobortis ipsum. Curabitur efficitur, lectus scelerisque gravida vehicula, risus nisl tincidunt lacus, in elementum nunc erat id sapien. Aliquam posuere eleifend nisl, ac luctus purus vehicula eu. Phasellus quis commodo augue. Morbi eget mi molestie, egestas magna eu, tempus ligula. Duis malesuada, dui eu posuere volutpat, metus erat accumsan dui, nec dignissim eros turpis ac nulla.

Aliquam ornare congue lorem at facilisis. Nulla placerat urna porta, placerat odio eu, pulvinar libero. Phasellus sagittis justo odio, sed malesuada massa ornare et. Aenean condimentum felis tincidunt velit sagittis finibus. Curabitur feugiat volutpat sem. Mauris egestas tristique sapien, id tempus nisi. Fusce aliquet sem interdum urna rhoncus, ac hendrerit velit aliquet. Vestibulum finibus metus sit amet purus vestibulum, eget hendrerit lacus molestie. Proin egestas dolor in ex consectetur pellentesque. Nam nec nunc sem. Mauris accumsan consequat ligula vitae sagittis. Nulla mollis eleifend leo ut pellentesque. Donec sollicitudin ut magna ac luctus. In sodales quam et tempus luctus.

In tristique quis erat et tincidunt. Etiam et leo nec massa consectetur cursus quis non tortor. Proin finibus auctor leo quis placerat. Fusce blandit risus turpis, at rutrum quam porttitor at. Donec ante lacus, euismod eget erat vel, hendrerit vehicula turpis. Aliquam ut ex ligula. Morbi id tristique mi, sit amet consectetur tortor. Aenean a dui in diam interdum lacinia id sed ex. Ut at ante euismod, ornare nibh ut, tempor ex. Etiam semper erat a quam elementum, et pretium orci molestie. Praesent sagittis egestas leo, quis luctus odio lacinia in. Etiam sit amet risus tristique, dictum nisi ut, tempor nunc. Sed pellentesque enim neque, a rhoncus magna interdum at. Integer ut ipsum nec dui auctor porttitor sed sed neque. Fusce vestibulum, quam non sodales aliquam, mi ante bibendum ex, at pretium elit tortor et diam.

Suspendisse potenti. Donec a imperdiet leo, vel efficitur orci. Morbi tristique elit massa, aliquam faucibus nisl accumsan a. Duis lobortis mollis turpis. Morbi metus nisl, euismod vitae malesuada et, molestie ac sapien. Praesent nec mauris efficitur augue cursus vulputate. Vivamus at semper dolor. Nam nec interdum massa, quis blandit risus. Sed nulla dui, semper vitae pellentesque quis, varius nec orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed justo nisi, rutrum et massa nec, semper pretium turpis. Cras vehicula sit amet neque porta porttitor. Fusce ut porttitor urna, vel consequat tortor. Proin sed justo ac urna sollicitudin sodales. In sagittis quam in mauris accumsan gravida.

Donec tincidunt posuere porttitor. Nunc id neque id risus auctor aliquam non vitae massa. Aenean fringilla orci non dictum scelerisque. Quisque at urna vitae eros imperdiet tincidunt. Vivamus urna urna, rhoncus et tincidunt ut, volutpat eget ex. Mauris in varius nibh. Ut vel nulla non lorem varius scelerisque. Nunc orci magna, accumsan sit amet cursus vitae, congue id enim. " CssClass="lblBurguerDescricao"></asp:Label>
                </div>
                <div class="divSubBurguer2">
                    <img src="Imagens/burger7.png" class="imgDivBurguer"/>
                </div>
                <div class="divSubBurguer3">
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button5" runat="server" Text="Adicionar Ingredientes" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button6" runat="server" Text="Excluir Lanches" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer3">

                    </div>
                    <div class="divBtnBurguer4">
                        <asp:Label ID="Label3" runat="server" Text="Valor Unitário: R$87,75" CssClass="lblValorLanche"></asp:Label>
                    </div>
                    
                </div>
            </div>

            <div class="divBurguer" id="divBurguer3">
                <div class="divSubBurguer1">
                    <h1 class="h1Burguer"> Sblenders 1 </h1>
                    <asp:Label ID="Label4" runat="server" Text="

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac feugiat massa, id sodales nibh. Donec vel orci nec dui rhoncus scelerisque. Nullam imperdiet eget dui a aliquam. Vestibulum a est ac lorem tincidunt sollicitudin. In ut orci eget tellus rutrum tempus. Ut cursus dui non risus fringilla, id mattis ligula interdum. Phasellus facilisis, eros interdum varius ultrices, urna mauris ultricies est, a viverra felis sem nec libero. In et libero consequat, ullamcorper est et, blandit ante. Quisque in lobortis ipsum. Curabitur efficitur, lectus scelerisque gravida vehicula, risus nisl tincidunt lacus, in elementum nunc erat id sapien. Aliquam posuere eleifend nisl, ac luctus purus vehicula eu. Phasellus quis commodo augue. Morbi eget mi molestie, egestas magna eu, tempus ligula. Duis malesuada, dui eu posuere volutpat, metus erat accumsan dui, nec dignissim eros turpis ac nulla.

Aliquam ornare congue lorem at facilisis. Nulla placerat urna porta, placerat odio eu, pulvinar libero. Phasellus sagittis justo odio, sed malesuada massa ornare et. Aenean condimentum felis tincidunt velit sagittis finibus. Curabitur feugiat volutpat sem. Mauris egestas tristique sapien, id tempus nisi. Fusce aliquet sem interdum urna rhoncus, ac hendrerit velit aliquet. Vestibulum finibus metus sit amet purus vestibulum, eget hendrerit lacus molestie. Proin egestas dolor in ex consectetur pellentesque. Nam nec nunc sem. Mauris accumsan consequat ligula vitae sagittis. Nulla mollis eleifend leo ut pellentesque. Donec sollicitudin ut magna ac luctus. In sodales quam et tempus luctus.

In tristique quis erat et tincidunt. Etiam et leo nec massa consectetur cursus quis non tortor. Proin finibus auctor leo quis placerat. Fusce blandit risus turpis, at rutrum quam porttitor at. Donec ante lacus, euismod eget erat vel, hendrerit vehicula turpis. Aliquam ut ex ligula. Morbi id tristique mi, sit amet consectetur tortor. Aenean a dui in diam interdum lacinia id sed ex. Ut at ante euismod, ornare nibh ut, tempor ex. Etiam semper erat a quam elementum, et pretium orci molestie. Praesent sagittis egestas leo, quis luctus odio lacinia in. Etiam sit amet risus tristique, dictum nisi ut, tempor nunc. Sed pellentesque enim neque, a rhoncus magna interdum at. Integer ut ipsum nec dui auctor porttitor sed sed neque. Fusce vestibulum, quam non sodales aliquam, mi ante bibendum ex, at pretium elit tortor et diam.

Suspendisse potenti. Donec a imperdiet leo, vel efficitur orci. Morbi tristique elit massa, aliquam faucibus nisl accumsan a. Duis lobortis mollis turpis. Morbi metus nisl, euismod vitae malesuada et, molestie ac sapien. Praesent nec mauris efficitur augue cursus vulputate. Vivamus at semper dolor. Nam nec interdum massa, quis blandit risus. Sed nulla dui, semper vitae pellentesque quis, varius nec orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed justo nisi, rutrum et massa nec, semper pretium turpis. Cras vehicula sit amet neque porta porttitor. Fusce ut porttitor urna, vel consequat tortor. Proin sed justo ac urna sollicitudin sodales. In sagittis quam in mauris accumsan gravida.

Donec tincidunt posuere porttitor. Nunc id neque id risus auctor aliquam non vitae massa. Aenean fringilla orci non dictum scelerisque. Quisque at urna vitae eros imperdiet tincidunt. Vivamus urna urna, rhoncus et tincidunt ut, volutpat eget ex. Mauris in varius nibh. Ut vel nulla non lorem varius scelerisque. Nunc orci magna, accumsan sit amet cursus vitae, congue id enim. " CssClass="lblBurguerDescricao"></asp:Label>
                </div>
                <div class="divSubBurguer2">
                    <img src="Imagens/burger7.png" class="imgDivBurguer"/>
                </div>
                <div class="divSubBurguer3">
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button7" runat="server" Text="Adicionar Ingredientes" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button8" runat="server" Text="Excluir Lanches" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer3">

                    </div>
                    <div class="divBtnBurguer4">
                        <asp:Label ID="Label5" runat="server" Text="Valor Unitário: R$87,75" CssClass="lblValorLanche"></asp:Label>
                    </div>
                    
                </div>
            </div>

            <div class="divBurguer" id="divBurguer4">
                <div class="divSubBurguer1">
                    <h1 class="h1Burguer"> Sblenders 1 </h1>
                    <asp:Label ID="Label6" runat="server" Text="

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac feugiat massa, id sodales nibh. Donec vel orci nec dui rhoncus scelerisque. Nullam imperdiet eget dui a aliquam. Vestibulum a est ac lorem tincidunt sollicitudin. In ut orci eget tellus rutrum tempus. Ut cursus dui non risus fringilla, id mattis ligula interdum. Phasellus facilisis, eros interdum varius ultrices, urna mauris ultricies est, a viverra felis sem nec libero. In et libero consequat, ullamcorper est et, blandit ante. Quisque in lobortis ipsum. Curabitur efficitur, lectus scelerisque gravida vehicula, risus nisl tincidunt lacus, in elementum nunc erat id sapien. Aliquam posuere eleifend nisl, ac luctus purus vehicula eu. Phasellus quis commodo augue. Morbi eget mi molestie, egestas magna eu, tempus ligula. Duis malesuada, dui eu posuere volutpat, metus erat accumsan dui, nec dignissim eros turpis ac nulla.

Aliquam ornare congue lorem at facilisis. Nulla placerat urna porta, placerat odio eu, pulvinar libero. Phasellus sagittis justo odio, sed malesuada massa ornare et. Aenean condimentum felis tincidunt velit sagittis finibus. Curabitur feugiat volutpat sem. Mauris egestas tristique sapien, id tempus nisi. Fusce aliquet sem interdum urna rhoncus, ac hendrerit velit aliquet. Vestibulum finibus metus sit amet purus vestibulum, eget hendrerit lacus molestie. Proin egestas dolor in ex consectetur pellentesque. Nam nec nunc sem. Mauris accumsan consequat ligula vitae sagittis. Nulla mollis eleifend leo ut pellentesque. Donec sollicitudin ut magna ac luctus. In sodales quam et tempus luctus.

In tristique quis erat et tincidunt. Etiam et leo nec massa consectetur cursus quis non tortor. Proin finibus auctor leo quis placerat. Fusce blandit risus turpis, at rutrum quam porttitor at. Donec ante lacus, euismod eget erat vel, hendrerit vehicula turpis. Aliquam ut ex ligula. Morbi id tristique mi, sit amet consectetur tortor. Aenean a dui in diam interdum lacinia id sed ex. Ut at ante euismod, ornare nibh ut, tempor ex. Etiam semper erat a quam elementum, et pretium orci molestie. Praesent sagittis egestas leo, quis luctus odio lacinia in. Etiam sit amet risus tristique, dictum nisi ut, tempor nunc. Sed pellentesque enim neque, a rhoncus magna interdum at. Integer ut ipsum nec dui auctor porttitor sed sed neque. Fusce vestibulum, quam non sodales aliquam, mi ante bibendum ex, at pretium elit tortor et diam.

Suspendisse potenti. Donec a imperdiet leo, vel efficitur orci. Morbi tristique elit massa, aliquam faucibus nisl accumsan a. Duis lobortis mollis turpis. Morbi metus nisl, euismod vitae malesuada et, molestie ac sapien. Praesent nec mauris efficitur augue cursus vulputate. Vivamus at semper dolor. Nam nec interdum massa, quis blandit risus. Sed nulla dui, semper vitae pellentesque quis, varius nec orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed justo nisi, rutrum et massa nec, semper pretium turpis. Cras vehicula sit amet neque porta porttitor. Fusce ut porttitor urna, vel consequat tortor. Proin sed justo ac urna sollicitudin sodales. In sagittis quam in mauris accumsan gravida.

Donec tincidunt posuere porttitor. Nunc id neque id risus auctor aliquam non vitae massa. Aenean fringilla orci non dictum scelerisque. Quisque at urna vitae eros imperdiet tincidunt. Vivamus urna urna, rhoncus et tincidunt ut, volutpat eget ex. Mauris in varius nibh. Ut vel nulla non lorem varius scelerisque. Nunc orci magna, accumsan sit amet cursus vitae, congue id enim. " CssClass="lblBurguerDescricao"></asp:Label>
                </div>
                <div class="divSubBurguer2">
                    <img src="Imagens/burger7.png" class="imgDivBurguer"/>
                </div>
                <div class="divSubBurguer3">
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button9" runat="server" Text="Adicionar Ingredientes" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button10" runat="server" Text="Excluir Lanches" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer3">

                    </div>
                    <div class="divBtnBurguer4">
                        <asp:Label ID="Label7" runat="server" Text="Valor Unitário: R$87,75" CssClass="lblValorLanche"></asp:Label>
                    </div>
                    
                </div>
            </div>

            <div class="divBurguer" id="divBurguer5">
                <div class="divSubBurguer1">
                    <h1 class="h1Burguer"> Sblenders 1 </h1>
                    <asp:Label ID="Label8" runat="server" Text="

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac feugiat massa, id sodales nibh. Donec vel orci nec dui rhoncus scelerisque. Nullam imperdiet eget dui a aliquam. Vestibulum a est ac lorem tincidunt sollicitudin. In ut orci eget tellus rutrum tempus. Ut cursus dui non risus fringilla, id mattis ligula interdum. Phasellus facilisis, eros interdum varius ultrices, urna mauris ultricies est, a viverra felis sem nec libero. In et libero consequat, ullamcorper est et, blandit ante. Quisque in lobortis ipsum. Curabitur efficitur, lectus scelerisque gravida vehicula, risus nisl tincidunt lacus, in elementum nunc erat id sapien. Aliquam posuere eleifend nisl, ac luctus purus vehicula eu. Phasellus quis commodo augue. Morbi eget mi molestie, egestas magna eu, tempus ligula. Duis malesuada, dui eu posuere volutpat, metus erat accumsan dui, nec dignissim eros turpis ac nulla.

Aliquam ornare congue lorem at facilisis. Nulla placerat urna porta, placerat odio eu, pulvinar libero. Phasellus sagittis justo odio, sed malesuada massa ornare et. Aenean condimentum felis tincidunt velit sagittis finibus. Curabitur feugiat volutpat sem. Mauris egestas tristique sapien, id tempus nisi. Fusce aliquet sem interdum urna rhoncus, ac hendrerit velit aliquet. Vestibulum finibus metus sit amet purus vestibulum, eget hendrerit lacus molestie. Proin egestas dolor in ex consectetur pellentesque. Nam nec nunc sem. Mauris accumsan consequat ligula vitae sagittis. Nulla mollis eleifend leo ut pellentesque. Donec sollicitudin ut magna ac luctus. In sodales quam et tempus luctus.

In tristique quis erat et tincidunt. Etiam et leo nec massa consectetur cursus quis non tortor. Proin finibus auctor leo quis placerat. Fusce blandit risus turpis, at rutrum quam porttitor at. Donec ante lacus, euismod eget erat vel, hendrerit vehicula turpis. Aliquam ut ex ligula. Morbi id tristique mi, sit amet consectetur tortor. Aenean a dui in diam interdum lacinia id sed ex. Ut at ante euismod, ornare nibh ut, tempor ex. Etiam semper erat a quam elementum, et pretium orci molestie. Praesent sagittis egestas leo, quis luctus odio lacinia in. Etiam sit amet risus tristique, dictum nisi ut, tempor nunc. Sed pellentesque enim neque, a rhoncus magna interdum at. Integer ut ipsum nec dui auctor porttitor sed sed neque. Fusce vestibulum, quam non sodales aliquam, mi ante bibendum ex, at pretium elit tortor et diam.

Suspendisse potenti. Donec a imperdiet leo, vel efficitur orci. Morbi tristique elit massa, aliquam faucibus nisl accumsan a. Duis lobortis mollis turpis. Morbi metus nisl, euismod vitae malesuada et, molestie ac sapien. Praesent nec mauris efficitur augue cursus vulputate. Vivamus at semper dolor. Nam nec interdum massa, quis blandit risus. Sed nulla dui, semper vitae pellentesque quis, varius nec orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed justo nisi, rutrum et massa nec, semper pretium turpis. Cras vehicula sit amet neque porta porttitor. Fusce ut porttitor urna, vel consequat tortor. Proin sed justo ac urna sollicitudin sodales. In sagittis quam in mauris accumsan gravida.

Donec tincidunt posuere porttitor. Nunc id neque id risus auctor aliquam non vitae massa. Aenean fringilla orci non dictum scelerisque. Quisque at urna vitae eros imperdiet tincidunt. Vivamus urna urna, rhoncus et tincidunt ut, volutpat eget ex. Mauris in varius nibh. Ut vel nulla non lorem varius scelerisque. Nunc orci magna, accumsan sit amet cursus vitae, congue id enim. " CssClass="lblBurguerDescricao"></asp:Label>
                </div>
                <div class="divSubBurguer2">
                    <img src="Imagens/burger7.png" class="imgDivBurguer"/>
                </div>
                <div class="divSubBurguer3">
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button11" runat="server" Text="Adicionar Ingredientes" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button12" runat="server" Text="Excluir Lanches" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer3">

                    </div>
                    <div class="divBtnBurguer4">
                        <asp:Label ID="Label9" runat="server" Text="Valor Unitário: R$87,75" CssClass="lblValorLanche"></asp:Label>
                    </div>
                    
                </div>
            </div>

            <div class="divBurguer" id="divBurguer6">
                <div class="divSubBurguer1">
                    <h1 class="h1Burguer"> Sblenders 1 </h1>
                    <asp:Label ID="Label10" runat="server" Text="

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac feugiat massa, id sodales nibh. Donec vel orci nec dui rhoncus scelerisque. Nullam imperdiet eget dui a aliquam. Vestibulum a est ac lorem tincidunt sollicitudin. In ut orci eget tellus rutrum tempus. Ut cursus dui non risus fringilla, id mattis ligula interdum. Phasellus facilisis, eros interdum varius ultrices, urna mauris ultricies est, a viverra felis sem nec libero. In et libero consequat, ullamcorper est et, blandit ante. Quisque in lobortis ipsum. Curabitur efficitur, lectus scelerisque gravida vehicula, risus nisl tincidunt lacus, in elementum nunc erat id sapien. Aliquam posuere eleifend nisl, ac luctus purus vehicula eu. Phasellus quis commodo augue. Morbi eget mi molestie, egestas magna eu, tempus ligula. Duis malesuada, dui eu posuere volutpat, metus erat accumsan dui, nec dignissim eros turpis ac nulla.

Aliquam ornare congue lorem at facilisis. Nulla placerat urna porta, placerat odio eu, pulvinar libero. Phasellus sagittis justo odio, sed malesuada massa ornare et. Aenean condimentum felis tincidunt velit sagittis finibus. Curabitur feugiat volutpat sem. Mauris egestas tristique sapien, id tempus nisi. Fusce aliquet sem interdum urna rhoncus, ac hendrerit velit aliquet. Vestibulum finibus metus sit amet purus vestibulum, eget hendrerit lacus molestie. Proin egestas dolor in ex consectetur pellentesque. Nam nec nunc sem. Mauris accumsan consequat ligula vitae sagittis. Nulla mollis eleifend leo ut pellentesque. Donec sollicitudin ut magna ac luctus. In sodales quam et tempus luctus.

In tristique quis erat et tincidunt. Etiam et leo nec massa consectetur cursus quis non tortor. Proin finibus auctor leo quis placerat. Fusce blandit risus turpis, at rutrum quam porttitor at. Donec ante lacus, euismod eget erat vel, hendrerit vehicula turpis. Aliquam ut ex ligula. Morbi id tristique mi, sit amet consectetur tortor. Aenean a dui in diam interdum lacinia id sed ex. Ut at ante euismod, ornare nibh ut, tempor ex. Etiam semper erat a quam elementum, et pretium orci molestie. Praesent sagittis egestas leo, quis luctus odio lacinia in. Etiam sit amet risus tristique, dictum nisi ut, tempor nunc. Sed pellentesque enim neque, a rhoncus magna interdum at. Integer ut ipsum nec dui auctor porttitor sed sed neque. Fusce vestibulum, quam non sodales aliquam, mi ante bibendum ex, at pretium elit tortor et diam.

Suspendisse potenti. Donec a imperdiet leo, vel efficitur orci. Morbi tristique elit massa, aliquam faucibus nisl accumsan a. Duis lobortis mollis turpis. Morbi metus nisl, euismod vitae malesuada et, molestie ac sapien. Praesent nec mauris efficitur augue cursus vulputate. Vivamus at semper dolor. Nam nec interdum massa, quis blandit risus. Sed nulla dui, semper vitae pellentesque quis, varius nec orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed justo nisi, rutrum et massa nec, semper pretium turpis. Cras vehicula sit amet neque porta porttitor. Fusce ut porttitor urna, vel consequat tortor. Proin sed justo ac urna sollicitudin sodales. In sagittis quam in mauris accumsan gravida.

Donec tincidunt posuere porttitor. Nunc id neque id risus auctor aliquam non vitae massa. Aenean fringilla orci non dictum scelerisque. Quisque at urna vitae eros imperdiet tincidunt. Vivamus urna urna, rhoncus et tincidunt ut, volutpat eget ex. Mauris in varius nibh. Ut vel nulla non lorem varius scelerisque. Nunc orci magna, accumsan sit amet cursus vitae, congue id enim. " CssClass="lblBurguerDescricao"></asp:Label>
                </div>
                <div class="divSubBurguer2">
                    <img src="Imagens/burger7.png" class="imgDivBurguer"/>
                </div>
                <div class="divSubBurguer3">
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button13" runat="server" Text="Adicionar Ingredientes" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button14" runat="server" Text="Excluir Lanches" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer3">

                    </div>
                    <div class="divBtnBurguer4">
                        <asp:Label ID="Label11" runat="server" Text="Valor Unitário: R$87,75" CssClass="lblValorLanche"></asp:Label>
                    </div>
                    
                </div>
            </div>

            <div class="divBurguer" id="divBurguer7">
                <div class="divSubBurguer1">
                    <h1 class="h1Burguer"> Sblenders 1 </h1>
                    <asp:Label ID="Label12" runat="server" Text="

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac feugiat massa, id sodales nibh. Donec vel orci nec dui rhoncus scelerisque. Nullam imperdiet eget dui a aliquam. Vestibulum a est ac lorem tincidunt sollicitudin. In ut orci eget tellus rutrum tempus. Ut cursus dui non risus fringilla, id mattis ligula interdum. Phasellus facilisis, eros interdum varius ultrices, urna mauris ultricies est, a viverra felis sem nec libero. In et libero consequat, ullamcorper est et, blandit ante. Quisque in lobortis ipsum. Curabitur efficitur, lectus scelerisque gravida vehicula, risus nisl tincidunt lacus, in elementum nunc erat id sapien. Aliquam posuere eleifend nisl, ac luctus purus vehicula eu. Phasellus quis commodo augue. Morbi eget mi molestie, egestas magna eu, tempus ligula. Duis malesuada, dui eu posuere volutpat, metus erat accumsan dui, nec dignissim eros turpis ac nulla.

Aliquam ornare congue lorem at facilisis. Nulla placerat urna porta, placerat odio eu, pulvinar libero. Phasellus sagittis justo odio, sed malesuada massa ornare et. Aenean condimentum felis tincidunt velit sagittis finibus. Curabitur feugiat volutpat sem. Mauris egestas tristique sapien, id tempus nisi. Fusce aliquet sem interdum urna rhoncus, ac hendrerit velit aliquet. Vestibulum finibus metus sit amet purus vestibulum, eget hendrerit lacus molestie. Proin egestas dolor in ex consectetur pellentesque. Nam nec nunc sem. Mauris accumsan consequat ligula vitae sagittis. Nulla mollis eleifend leo ut pellentesque. Donec sollicitudin ut magna ac luctus. In sodales quam et tempus luctus.

In tristique quis erat et tincidunt. Etiam et leo nec massa consectetur cursus quis non tortor. Proin finibus auctor leo quis placerat. Fusce blandit risus turpis, at rutrum quam porttitor at. Donec ante lacus, euismod eget erat vel, hendrerit vehicula turpis. Aliquam ut ex ligula. Morbi id tristique mi, sit amet consectetur tortor. Aenean a dui in diam interdum lacinia id sed ex. Ut at ante euismod, ornare nibh ut, tempor ex. Etiam semper erat a quam elementum, et pretium orci molestie. Praesent sagittis egestas leo, quis luctus odio lacinia in. Etiam sit amet risus tristique, dictum nisi ut, tempor nunc. Sed pellentesque enim neque, a rhoncus magna interdum at. Integer ut ipsum nec dui auctor porttitor sed sed neque. Fusce vestibulum, quam non sodales aliquam, mi ante bibendum ex, at pretium elit tortor et diam.

Suspendisse potenti. Donec a imperdiet leo, vel efficitur orci. Morbi tristique elit massa, aliquam faucibus nisl accumsan a. Duis lobortis mollis turpis. Morbi metus nisl, euismod vitae malesuada et, molestie ac sapien. Praesent nec mauris efficitur augue cursus vulputate. Vivamus at semper dolor. Nam nec interdum massa, quis blandit risus. Sed nulla dui, semper vitae pellentesque quis, varius nec orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed justo nisi, rutrum et massa nec, semper pretium turpis. Cras vehicula sit amet neque porta porttitor. Fusce ut porttitor urna, vel consequat tortor. Proin sed justo ac urna sollicitudin sodales. In sagittis quam in mauris accumsan gravida.

Donec tincidunt posuere porttitor. Nunc id neque id risus auctor aliquam non vitae massa. Aenean fringilla orci non dictum scelerisque. Quisque at urna vitae eros imperdiet tincidunt. Vivamus urna urna, rhoncus et tincidunt ut, volutpat eget ex. Mauris in varius nibh. Ut vel nulla non lorem varius scelerisque. Nunc orci magna, accumsan sit amet cursus vitae, congue id enim. " CssClass="lblBurguerDescricao"></asp:Label>
                </div>
                <div class="divSubBurguer2">
                    <img src="Imagens/burger7.png" class="imgDivBurguer"/>
                </div>
                <div class="divSubBurguer3">
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button15" runat="server" Text="Adicionar Ingredientes" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button16" runat="server" Text="Excluir Lanches" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer3">

                    </div>
                    <div class="divBtnBurguer4">
                        <asp:Label ID="Label13" runat="server" Text="Valor Unitário: R$87,75" CssClass="lblValorLanche"></asp:Label>
                    </div>
                    
                </div>
            </div>

            <div class="divBurguer" id="divBurguer8">
                <div class="divSubBurguer1">
                    <h1 class="h1Burguer"> Sblenders 1 </h1>
                    <asp:Label ID="Label14" runat="server" Text="

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac feugiat massa, id sodales nibh. Donec vel orci nec dui rhoncus scelerisque. Nullam imperdiet eget dui a aliquam. Vestibulum a est ac lorem tincidunt sollicitudin. In ut orci eget tellus rutrum tempus. Ut cursus dui non risus fringilla, id mattis ligula interdum. Phasellus facilisis, eros interdum varius ultrices, urna mauris ultricies est, a viverra felis sem nec libero. In et libero consequat, ullamcorper est et, blandit ante. Quisque in lobortis ipsum. Curabitur efficitur, lectus scelerisque gravida vehicula, risus nisl tincidunt lacus, in elementum nunc erat id sapien. Aliquam posuere eleifend nisl, ac luctus purus vehicula eu. Phasellus quis commodo augue. Morbi eget mi molestie, egestas magna eu, tempus ligula. Duis malesuada, dui eu posuere volutpat, metus erat accumsan dui, nec dignissim eros turpis ac nulla.

Aliquam ornare congue lorem at facilisis. Nulla placerat urna porta, placerat odio eu, pulvinar libero. Phasellus sagittis justo odio, sed malesuada massa ornare et. Aenean condimentum felis tincidunt velit sagittis finibus. Curabitur feugiat volutpat sem. Mauris egestas tristique sapien, id tempus nisi. Fusce aliquet sem interdum urna rhoncus, ac hendrerit velit aliquet. Vestibulum finibus metus sit amet purus vestibulum, eget hendrerit lacus molestie. Proin egestas dolor in ex consectetur pellentesque. Nam nec nunc sem. Mauris accumsan consequat ligula vitae sagittis. Nulla mollis eleifend leo ut pellentesque. Donec sollicitudin ut magna ac luctus. In sodales quam et tempus luctus.

In tristique quis erat et tincidunt. Etiam et leo nec massa consectetur cursus quis non tortor. Proin finibus auctor leo quis placerat. Fusce blandit risus turpis, at rutrum quam porttitor at. Donec ante lacus, euismod eget erat vel, hendrerit vehicula turpis. Aliquam ut ex ligula. Morbi id tristique mi, sit amet consectetur tortor. Aenean a dui in diam interdum lacinia id sed ex. Ut at ante euismod, ornare nibh ut, tempor ex. Etiam semper erat a quam elementum, et pretium orci molestie. Praesent sagittis egestas leo, quis luctus odio lacinia in. Etiam sit amet risus tristique, dictum nisi ut, tempor nunc. Sed pellentesque enim neque, a rhoncus magna interdum at. Integer ut ipsum nec dui auctor porttitor sed sed neque. Fusce vestibulum, quam non sodales aliquam, mi ante bibendum ex, at pretium elit tortor et diam.

Suspendisse potenti. Donec a imperdiet leo, vel efficitur orci. Morbi tristique elit massa, aliquam faucibus nisl accumsan a. Duis lobortis mollis turpis. Morbi metus nisl, euismod vitae malesuada et, molestie ac sapien. Praesent nec mauris efficitur augue cursus vulputate. Vivamus at semper dolor. Nam nec interdum massa, quis blandit risus. Sed nulla dui, semper vitae pellentesque quis, varius nec orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed justo nisi, rutrum et massa nec, semper pretium turpis. Cras vehicula sit amet neque porta porttitor. Fusce ut porttitor urna, vel consequat tortor. Proin sed justo ac urna sollicitudin sodales. In sagittis quam in mauris accumsan gravida.

Donec tincidunt posuere porttitor. Nunc id neque id risus auctor aliquam non vitae massa. Aenean fringilla orci non dictum scelerisque. Quisque at urna vitae eros imperdiet tincidunt. Vivamus urna urna, rhoncus et tincidunt ut, volutpat eget ex. Mauris in varius nibh. Ut vel nulla non lorem varius scelerisque. Nunc orci magna, accumsan sit amet cursus vitae, congue id enim. " CssClass="lblBurguerDescricao"></asp:Label>
                </div>
                <div class="divSubBurguer2">
                    <img src="Imagens/burger7.png" class="imgDivBurguer"/>
                </div>
                <div class="divSubBurguer3">
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button17" runat="server" Text="Adicionar Ingredientes" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button18" runat="server" Text="Excluir Lanches" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer3">

                    </div>
                    <div class="divBtnBurguer4">
                        <asp:Label ID="Label15" runat="server" Text="Valor Unitário: R$87,75" CssClass="lblValorLanche"></asp:Label>
                    </div>
                    
                </div>
            </div>

            <div class="divBurguer" id="divBurguer9">
                <div class="divSubBurguer1">
                    <h1 class="h1Burguer"> Sblenders 1 </h1>
                    <asp:Label ID="Label16" runat="server" Text="

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac feugiat massa, id sodales nibh. Donec vel orci nec dui rhoncus scelerisque. Nullam imperdiet eget dui a aliquam. Vestibulum a est ac lorem tincidunt sollicitudin. In ut orci eget tellus rutrum tempus. Ut cursus dui non risus fringilla, id mattis ligula interdum. Phasellus facilisis, eros interdum varius ultrices, urna mauris ultricies est, a viverra felis sem nec libero. In et libero consequat, ullamcorper est et, blandit ante. Quisque in lobortis ipsum. Curabitur efficitur, lectus scelerisque gravida vehicula, risus nisl tincidunt lacus, in elementum nunc erat id sapien. Aliquam posuere eleifend nisl, ac luctus purus vehicula eu. Phasellus quis commodo augue. Morbi eget mi molestie, egestas magna eu, tempus ligula. Duis malesuada, dui eu posuere volutpat, metus erat accumsan dui, nec dignissim eros turpis ac nulla.

Aliquam ornare congue lorem at facilisis. Nulla placerat urna porta, placerat odio eu, pulvinar libero. Phasellus sagittis justo odio, sed malesuada massa ornare et. Aenean condimentum felis tincidunt velit sagittis finibus. Curabitur feugiat volutpat sem. Mauris egestas tristique sapien, id tempus nisi. Fusce aliquet sem interdum urna rhoncus, ac hendrerit velit aliquet. Vestibulum finibus metus sit amet purus vestibulum, eget hendrerit lacus molestie. Proin egestas dolor in ex consectetur pellentesque. Nam nec nunc sem. Mauris accumsan consequat ligula vitae sagittis. Nulla mollis eleifend leo ut pellentesque. Donec sollicitudin ut magna ac luctus. In sodales quam et tempus luctus.

In tristique quis erat et tincidunt. Etiam et leo nec massa consectetur cursus quis non tortor. Proin finibus auctor leo quis placerat. Fusce blandit risus turpis, at rutrum quam porttitor at. Donec ante lacus, euismod eget erat vel, hendrerit vehicula turpis. Aliquam ut ex ligula. Morbi id tristique mi, sit amet consectetur tortor. Aenean a dui in diam interdum lacinia id sed ex. Ut at ante euismod, ornare nibh ut, tempor ex. Etiam semper erat a quam elementum, et pretium orci molestie. Praesent sagittis egestas leo, quis luctus odio lacinia in. Etiam sit amet risus tristique, dictum nisi ut, tempor nunc. Sed pellentesque enim neque, a rhoncus magna interdum at. Integer ut ipsum nec dui auctor porttitor sed sed neque. Fusce vestibulum, quam non sodales aliquam, mi ante bibendum ex, at pretium elit tortor et diam.

Suspendisse potenti. Donec a imperdiet leo, vel efficitur orci. Morbi tristique elit massa, aliquam faucibus nisl accumsan a. Duis lobortis mollis turpis. Morbi metus nisl, euismod vitae malesuada et, molestie ac sapien. Praesent nec mauris efficitur augue cursus vulputate. Vivamus at semper dolor. Nam nec interdum massa, quis blandit risus. Sed nulla dui, semper vitae pellentesque quis, varius nec orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed justo nisi, rutrum et massa nec, semper pretium turpis. Cras vehicula sit amet neque porta porttitor. Fusce ut porttitor urna, vel consequat tortor. Proin sed justo ac urna sollicitudin sodales. In sagittis quam in mauris accumsan gravida.

Donec tincidunt posuere porttitor. Nunc id neque id risus auctor aliquam non vitae massa. Aenean fringilla orci non dictum scelerisque. Quisque at urna vitae eros imperdiet tincidunt. Vivamus urna urna, rhoncus et tincidunt ut, volutpat eget ex. Mauris in varius nibh. Ut vel nulla non lorem varius scelerisque. Nunc orci magna, accumsan sit amet cursus vitae, congue id enim. " CssClass="lblBurguerDescricao"></asp:Label>
                </div>
                <div class="divSubBurguer2">
                    <img src="Imagens/burger7.png" class="imgDivBurguer"/>
                </div>
                <div class="divSubBurguer3">
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button19" runat="server" Text="Adicionar Ingredientes" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer1">
                        <asp:Button ID="Button20" runat="server" Text="Excluir Lanches" CssClass="btnAdicionarIngredientes"/>
                    </div>
                    <div class="divBtnBurguer3">

                    </div>
                    <div class="divBtnBurguer4">
                        <asp:Label ID="Label17" runat="server" Text="Valor Unitário: R$87,75" CssClass="lblValorLanche"></asp:Label>
                    </div>
                    
                </div>
            </div>

            <div class="divBtnOpcoesPagLanches">
                <div class="divSubBtnOpcoesPagLanches1">
                    <asp:Button ID="Button3" runat="server" Text="Adicionar Lanche" CssClass="btnAdicionarLancheProximo" OnClientClick="AdicionarLanche()"/>
                </div>
                <div class="divSubBtnOpcoesPagLanches1">
                    <asp:Button ID="Button4" runat="server" Text="Adicionar Complementos" CssClass="btnAdicionarLancheProximo"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
