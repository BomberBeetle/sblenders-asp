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

    if (itemCarro1.classList.contains('carousel-item active')) {
        alert("jhjkhfkjahs");
    }
    else if (itemCarro2.getElementsByClassName("carousel-item active")) {

    }
    else if (itemCarro3.getElementsByClassName("carousel-item active")) {

    }
}