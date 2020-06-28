$('#carouselBanner').carousel({
    interval: 1000
})

$('#carouselIndex2').carousel({
    interval: -10
})

var visibilidadeLogin = false;
var visibilidadeCad = false;

function Login() {
    var divLog = document.getElementById("divLog");
    var divCad = document.getElementById("divCad");
    if (visibilidadeLogin == false) {
        divCad.style.display = "none";
        divLog.style.display = "block";
        visibilidadeCad = false;
        visibilidadeLogin = true;
    }
    else if (visibilidadeLogin == true) {
        divLog.style.display = "none";
        visibilidadeLogin = false;
    }
    
}

function Cadastro() {
    var divLog = document.getElementById("divLog");
    var divCad = document.getElementById("divCad");
    if (visibilidadeCad == false) {
        divLog.style.display = "none";
        divCad.style.display = "block";
        visibilidadeLogin = false;
        visibilidadeCad = true;
    }
    else if (visibilidadeCad == true) {
        divCad.style.display = "none";
        visibilidadeCad = false;
    }
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

function expandirAcompanhamentos(){
    var divAcompanhamento = document.getElementById("divAcompanhamento");
    var btnAcompanhamento = document.getElementById("btnExpandirAcompanhamento");
    if (acompanhamentoAberto === false) {
        divAcompanhamento.style.overflow = "visible";
        divAcompanhamento.style.height = "1300px";
        btnAcompanhamento.style.backgroundImage = "url(CSS/ImagensCSS/setaCima.png)";
        acompanhamentoAberto = true;
    }
    else if (acompanhamentoAberto === true) {
        divAcompanhamento.style.overflow = "hidden";
        divAcompanhamento.style.height = "700px";
        btnAcompanhamento.style.backgroundImage = "url(CSS/ImagensCSS/setaBaixo.png)";
        acompanhamentoAberto = false;
    }
    event.preventDefault();
}

function expandirBebidas() {
    var divAcompanhamento = document.getElementById("divBebida");
    var btnAcompanhamento = document.getElementById("btnExpandirBebida");
    if (bebidaAberto === false) {
        divAcompanhamento.style.overflow = "visible";
        divAcompanhamento.style.height = "1300px";
        btnAcompanhamento.style.backgroundImage = "url(CSS/ImagensCSS/setaCima.png)";
        bebidaAberto = true;
    }
    else if (bebidaAberto === true) {
        divAcompanhamento.style.overflow = "hidden";
        divAcompanhamento.style.height = "700px";
        btnAcompanhamento.style.backgroundImage = "url(CSS/ImagensCSS/setaBaixo.png)";
        bebidaAberto = false;
    }
    event.preventDefault();
}

function expandirSobremesas() {
    var divAcompanhamento = document.getElementById("divSobremesa");
    var btnAcompanhamento = document.getElementById("btnExpandirSobremesa");
    if (sobremesaAberto === false) {
        divAcompanhamento.style.overflow = "visible";
        divAcompanhamento.style.height = "1300px";
        btnAcompanhamento.style.backgroundImage = "url(CSS/ImagensCSS/setaCima.png)";
        sobremesaAberto = true;
    }
    else if (sobremesaAberto === true) {
        divAcompanhamento.style.overflow = "hidden";
        divAcompanhamento.style.height = "700px";
        btnAcompanhamento.style.backgroundImage = "url(CSS/ImagensCSS/setaBaixo.png)";
        sobremesaAberto = false;
    }
    event.preventDefault();
}

function expandirMolhos() {
    var divAcompanhamento = document.getElementById("divMolho");
    var btnAcompanhamento = document.getElementById("btnExpandirMolho");
    if (molhoAberto === false) {
        divAcompanhamento.style.overflow = "visible";
        divAcompanhamento.style.height = "1300px";
        btnAcompanhamento.style.backgroundImage = "url(CSS/ImagensCSS/setaCima.png)";
        molhoAberto = true;
    }
    else if (molhoAberto === true) {
        divAcompanhamento.style.overflow = "hidden";
        divAcompanhamento.style.height = "700px";
        btnAcompanhamento.style.backgroundImage = "url(CSS/ImagensCSS/setaBaixo.png)";
        molhoAberto = false;
    }
    event.preventDefault();
}

function popupProduto() {
    //varWindow = window.open("popup.html", "popup");
    window.document.getElementById("divAcompanhamento");
}