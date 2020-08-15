$('#carouselBanner').carousel({
    interval: 1000
})

$('#carouselIndex2').carousel({
    interval: -10
})

var visibilidadeLogin = false;
var visibilidadeCad = false;
var visiblidadeEsqSenha = false;

function Login() {
    var divLog = document.getElementById("divLog");
    var divCad = document.getElementById("divCad");
    var divEsqSenha = document.getElementById("divEsqSenha");
    if (visibilidadeLogin == false) {
        divCad.style.display = "none";
        divLog.style.display = "block";
        divEsqSenha.style.display = "none";
        visibilidadeCad = false;
        visiblidadeEsqSenha = false;
        visibilidadeLogin = true;
    }
    else if (visibilidadeLogin == true) {
        divLog.style.display = "none";
        divEsqSenha.style.display = "none";
        visibilidadeLogin = false;
    }
    
}

function Cadastro() {
    var divLog = document.getElementById("divLog");
    var divCad = document.getElementById("divCad");
    var divEsqSenha = document.getElementById("divEsqSenha");
    if (visibilidadeCad == false) {
        divLog.style.display = "none";
        divEsqSenha.style.display = "none";
        divCad.style.display = "block";
        visibilidadeLogin = false;
        visiblidadeEsqSenha = false;
        visibilidadeCad = true;
    }
    else if (visibilidadeCad == true) {
        divCad.style.display = "none";
        divEsqSenha.style.display = "none";
        visibilidadeCad = false;
    }
}

function esqueceuSenha() {
    var divLog = document.getElementById("divLog");
    var divCad = document.getElementById("divCad");
    var divEsqSenha = document.getElementById("divEsqSenha");
    if (visiblidadeEsqSenha == false) {
        divLog.style.display = "none";
        divCad.style.display = "none";
        divEsqSenha.style.display = "block";
        visibilidadeLogin = false;
        visibilidadeCad = false;
        visiblidadeEsqSenha = true;
    }
    else if (visiblidadeEsqSenha == true) {
        divCad.style.display = "none";
        divLog.style.display = "none";
        divEsqSenha.style.display = "none";
        visiblidadeEsqSenha = false;
    }
    event.preventDefault();
}

function sair() {
    var se = document.getElementById("divLog");
    visibilidadeLogin = false;
    se.style.display = "none";
}

function sairCad() {
    var se = document.getElementById("divCad");
    visibilidadeCad = false;
    se.style.display = "none";
}

function indexDinamico() {
    var itemCarro1 = document.getElementById("itemCarro1");
    var itemCarro2 = document.getElementById("itemCarro2");
    var itemCarro3 = document.getElementById("itemCarro3");
    var quemSomos = document.getElementById("quemSomos");
    var faleConosco = document.getElementById("faleConosco");
    var maisInformacoes = document.getElementById("maisInformacoes");
    var textoLogin = document.getElementById("textoLogin");
    var textoCadastro = document.getElementById("textoCadastro");

    if (itemCarro1.className === "carousel-item active") {
        quemSomos.style.color = "#FFF";
    }
    else if (itemCarro2.className === "carousel-item active") {
        quemSomos.style.color = "#635532";
    }
    else if (itemCarro3.className === "carousel-item active") {
        quemSomos.style.color = "#260DEF";
    }
}
function repetidor() {
    setInterval(indexDinamico, 100);
}

acompanhamentoAberto = false;
bebidaAberto = false;
sobremesaAberto = false;
molhoAberto = false;

function expandirAcompanhamentos() {
    var divAcompanhamento = document.getElementById("divAcompanhamento");
    var btnAcompanhamento = document.getElementById("btnExpandirAcompanhamento");
    if (acompanhamentoAberto === false) {
        
        divAcompanhamento.style.height = "1300px";
        divAcompanhamento.style.transitionDuration = "2s";
        setTimeout(function () { divAcompanhamento.style.overflow = "visible"; },2000);
        btnAcompanhamento.style.transform = "rotate(180deg)";
        btnAcompanhamento.style.transitionDuration = "1s";
        acompanhamentoAberto = true;
    }
    else if (acompanhamentoAberto === true) {
        divAcompanhamento.style.overflow = "hidden";
        divAcompanhamento.style.height = "700px";
        divAcompanhamento.style.transitionDuration = "2s";
        btnAcompanhamento.style.transform = "none";
        btnAcompanhamento.style.transitionDuration = "1s";
        acompanhamentoAberto = false;
    }
    event.preventDefault();
}

function expandirBebidas() {
    var divAcompanhamento = document.getElementById("divBebida");
    var btnAcompanhamento = document.getElementById("btnExpandirBebida");
    if (bebidaAberto === false) {
        divAcompanhamento.style.height = "1300px";
        divAcompanhamento.style.transitionDuration = "2s";
        setTimeout(function () { divAcompanhamento.style.overflow = "visible"; }, 2000);
        btnAcompanhamento.style.transform = "rotate(180deg)";
        btnAcompanhamento.style.transitionDuration = "1s";
        bebidaAberto = true;
    }
    else if (bebidaAberto === true) {
        divAcompanhamento.style.overflow = "hidden";
        divAcompanhamento.style.height = "700px";
        divAcompanhamento.style.transitionDuration = "2s";
        btnAcompanhamento.style.transform = "none";
        btnAcompanhamento.style.transitionDuration = "1s";
        bebidaAberto = false;
    }
    event.preventDefault();
}

function expandirSobremesas() {
    var divAcompanhamento = document.getElementById("divSobremesa");
    var btnAcompanhamento = document.getElementById("btnExpandirSobremesa");
    if (sobremesaAberto === false) {
        divAcompanhamento.style.height = "1300px";
        divAcompanhamento.style.transitionDuration = "2s";
        setTimeout(function () { divAcompanhamento.style.overflow = "visible";  }, 2000);
        btnAcompanhamento.style.transform = "rotate(180deg)";
        btnAcompanhamento.style.transitionDuration = "1s";
        sobremesaAberto = true;
    }
    else if (sobremesaAberto === true) {
        divAcompanhamento.style.overflow = "hidden";
        divAcompanhamento.style.height = "700px";
        divAcompanhamento.style.transitionDuration = "2s";
        btnAcompanhamento.style.transform = "none";
        btnAcompanhamento.style.transitionDuration = "1s";
        sobremesaAberto = false;
    }
    event.preventDefault();
}

function expandirMolhos() {
    var divAcompanhamento = document.getElementById("divMolho");
    var btnAcompanhamento = document.getElementById("btnExpandirMolho");
    if (molhoAberto === false) {
        divAcompanhamento.style.height = "1300px";
        divAcompanhamento.style.transitionDuration = "2s";
        setTimeout(function () { divAcompanhamento.style.overflow = "visible";}, 2000);
        btnAcompanhamento.style.transform = "rotate(180deg)";
        btnAcompanhamento.style.transitionDuration = "1s";
        molhoAberto = true;
    }
    else if (molhoAberto === true) {
        divAcompanhamento.style.overflow = "hidden";
        divAcompanhamento.style.height = "700px";
        divAcompanhamento.style.transitionDuration = "2s";
        btnAcompanhamento.style.transform = "none";
        btnAcompanhamento.style.transitionDuration = "1s";
        molhoAberto = false;
    }
    event.preventDefault();
}

function popupProduto() {
    //varWindow = window.open("popup.html", "popup");
    //window.document.getElementById("divAcompanhamento");
    document.getElementById("secProd1").style.display = "block";
}

/*var paesAtivado = true;
var carnesAtivado = false;
var verdurasAtivado = false;
var legumesAtivado = false;
var queijosAtivado = false;
var molhosAtivado = false;*/

function mostrarCategoriaSelecao() {
    var value = document.getElementById("select1").value;
    //alert(value);
    //var selectCategoria = document.getElementById("select1");
    //var value = selectCategoria.options[selectCategoria.selectedIndex].value;
    var paes = document.getElementById("ContentPlaceHolder1_divPaes");
    var carnes = document.getElementById("ContentPlaceHolder1_divCarnes");
    var verduras = document.getElementById("ContentPlaceHolder1_divVerduras");
    var legumes = document.getElementById("ContentPlaceHolder1_divLegumes");
    var queijos = document.getElementById("ContentPlaceHolder1_divQueijos");
    var molhos = document.getElementById("ContentPlaceHolder1_divMolhos");
    if (value === "carnes") {
        paes.style.display = "none";
        carnes.style.display = "flex";
        verduras.style.display = "none";
        legumes.style.display = "none";
        queijos.style.display = "none";
        molhos.style.display = "none";
    }
    else if (value === "paes") {
        paes.style.display = "flex";
        carnes.style.display = "none";
        verduras.style.display = "none";
        legumes.style.display = "none";
        queijos.style.display = "none";
        molhos.style.display = "none";
    }
    else if (value === "verduras") {
        paes.style.display = "none";
        carnes.style.display = "none";
        verduras.style.display = "flex";
        legumes.style.display = "none";
        queijos.style.display = "none";
        molhos.style.display = "none";
    }
    else if (value === "legumes") {
        paes.style.display = "none";
        carnes.style.display = "none";
        verduras.style.display = "none";
        legumes.style.display = "flex";
        queijos.style.display = "none";
        molhos.style.display = "none";
    }
    else if (value === "queijos") {
        paes.style.display = "none";
        carnes.style.display = "none";
        verduras.style.display = "none";
        legumes.style.display = "none";
        queijos.style.display = "flex";
        molhos.style.display = "none";
    }
    else if (value === "molhos") {
        paes.style.display = "none";
        carnes.style.display = "none";
        verduras.style.display = "none";
        legumes.style.display = "none";
        queijos.style.display = "none";
        molhos.style.display = "flex";
    }
}

$(document).ready(function () {

   /* $("#divAcompanhamento").click(function () {
        $("#divPro").clone().appendTo("#divProds");
    });*/

});
