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
        textoLogin.style.color = "#FFF";
    }
    else if (itemCarro2.className === "carousel-item active") {
        textoLogin.style.color = "#FFF";
    }
    else if (itemCarro3.className === "carousel-item active") {
        textoLogin.style.color = "#FFF";
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
        setTimeout(function () { divAcompanhamento.style.overflow = "visible"; }, 2000);
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
        setTimeout(function () { divAcompanhamento.style.overflow = "visible"; }, 2000);
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
        setTimeout(function () { divAcompanhamento.style.overflow = "visible"; }, 2000);
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

var x, i, j, l, ll, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("divIngredientesCategoria");
l = x.length;
for (i = 0; i < l; i++) {
    selElmnt = x[i].getElementsByTagName("select")[0];
    ll = selElmnt.length;
    /*for each element, create a new DIV that will act as the selected item:*/
    a = document.createElement("DIV");
    a.setAttribute("class", "select-selected");
    a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
    x[i].appendChild(a);
    /*for each element, create a new DIV that will contain the option list:*/
    b = document.createElement("DIV");
    b.setAttribute("class", "select-items select-hide");
    for (j = 1; j < ll; j++) {
        /*for each option in the original select element,
        create a new DIV that will act as an option item:*/
        c = document.createElement("DIV");
        c.innerHTML = selElmnt.options[j].innerHTML;
        c.addEventListener("click", function (e) {
            /*when an item is clicked, update the original select box,
            and the selected item:*/
            var y, i, k, s, h, sl, yl;
            s = this.parentNode.parentNode.getElementsByTagName("select")[0];
            sl = s.length;
            h = this.parentNode.previousSibling;
            for (i = 0; i < sl; i++) {
                if (s.options[i].innerHTML == this.innerHTML) {
                    s.selectedIndex = i;
                    h.innerHTML = this.innerHTML;
                    y = this.parentNode.getElementsByClassName("same-as-selected");
                    yl = y.length;
                    for (k = 0; k < yl; k++) {
                        y[k].removeAttribute("class");
                    }
                    this.setAttribute("class", "same-as-selected");
                    break;
                }
            }
            h.click();
        });
        b.appendChild(c);
    }
    x[i].appendChild(b);
    a.addEventListener("click", function (e) {
        /*when the select box is clicked, close any other select boxes,
        and open/close the current select box:*/
        e.stopPropagation();
        closeAllSelect(this);
        this.nextSibling.classList.toggle("select-hide");
        this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
    /*a function that will close all select boxes in the document,
    except the current select box:*/
    var x, y, i, xl, yl, arrNo = [];
    x = document.getElementsByClassName("select-items");
    y = document.getElementsByClassName("select-selected");
    xl = x.length;
    yl = y.length;
    for (i = 0; i < yl; i++) {
        if (elmnt == y[i]) {
            arrNo.push(i)
        } else {
            y[i].classList.remove("select-arrow-active");
        }
    }
    for (i = 0; i < xl; i++) {
        if (arrNo.indexOf(i)) {
            x[i].classList.add("select-hide");
        }
    }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);

/*window.onresize = function () {
    var elements = document.getElementById("divProds").querySelectorAll('divProduto');
    var count = elements.length;
    var windowW = window.innerWidth;
    var windowH = window.innerHeight;    
    if (windowH <= 1080 && windowW <= 1920) {
        if (windowH <= 720 && windowW <= 1280) {
            if (windowH <= 720 && windowW <= 1280) {               
                var divHeight = 1200 * Math.trunc(count / 2) + 50 * Math.trunc(count / 2);
                document.getElementById("divProds").style.height = divHeight;
            }
            var divHeight = 900 * Math.trunc(count / 3) + 100 * Math.trunc(count / 3);
            document.getElementById("divProds").style.height = divHeight;
        }
        var divHeight = 600 * Math.trunc(count / 3) + 100 * Math.trunc(2 * count / 3);
        document.getElementById("divProds").style.height = divHeight;
    }
    /*for (var i = 0; i < elements.length; i++) {
        elements[i].style.width = window.innerWidth + "px";
        elements[i].style.height = window.innerHeight + "px";        
    }*//*
}*/

visibilidadeNutri = false;
function fecharInfoNutri() {
    var divNutri = document.querySelectorAll('sectionProd');
    if (visibilidadeNutri == true) {
        divNutri.style.display = "none";
        visibilidadeNutri = false;
    }
    event.preventDefault();
}

/*function exibirInfoNutri() {
    var i = this.id;
    var res = i.substring(1, i.length - 1);
    var element = document.getElementById("secProd1");
    url = "https://localhost:44323/api/Produtos/" + res;
    fetch(url, { cors: "anonymous" }).then((res) => {
        res.json().then((dados) => {
            var d = dados[0].infoNutr;
            var dCount = d.length - 1;
            while (dCount >= 0) {
                let HTMLLabelElement lblDes = new HTMLLabelElement();
                lblDes.value = d[dCount].descricao;
                lblDes.className = "lblDescNutri";
                let HTMLLabelElement lblVal = new HTMLLabelElement();
                lblVal.value = d[dCount].val;
                lblVal.className = "lblDescValor";                
                dCount--;
            }
        }).catch((err) => {
            alert("Erro: " + err);
        })
    });    
    element.style.display = "flex";
    visibilidadeNutri = true;
    event.preventDefault();
}*/

/*function iniciar() {
    var s = document.getElementsByClassName('ASS');
    var i;
    for (i = 0; i < x.length; i++) {
        s[i].onclick = exibirInfoNutri;
    } 
    s.forEach((e) => e.onclick = exibirInfoNutri);
}*/

function somar(e) {
    var i = e;
    var res = i.substring(11, i.length - 11);
    console.log(i);
    console.log(res);
    //var element = document.getElementById("divMostrarIngredientes");
    var text = document.getElementById("txtQuantidade" + res);
    var quant = text.value;
    text.value = quant++;
    event.preventDefault();
}

function subtrair(e) {
    var i = e;
    var res = i.substring(11, i.length - 11);
    console.log(i);
    console.log(res);
    //var element = document.getElementById("divMostrarIngredientes");
    var text = document.getElementById("txtQuantidade" + res);
    var quant = text.value;
    var e = quant--;
    if (e <= 1) {
        text.value = 1;
    }
    else {
        text.value = e;
    }
    event.preventDefault();
}
