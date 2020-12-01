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
        divLog.style.opacity = 0;
        divLog.style.display = "flex";
        $("#divLog").animate({ opacity: 1 }, 0.1e3)
        divEsqSenha.style.display = "none";
        visibilidadeCad = false;
        visiblidadeEsqSenha = false;
        visibilidadeLogin = true;
    } else if (visibilidadeLogin == true) {
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
        divCad.style.opacity = 0;
        divEsqSenha.style.display = "none";
        divCad.style.display = "flex";
        $("#divCad").animate({ opacity: 1 }, 0.1e3)
        visibilidadeLogin = false;
        visiblidadeEsqSenha = false;
        visibilidadeCad = true;
    } else if (visibilidadeCad == true) {
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
        divEsqSenha.style.opacity = 0;
        divEsqSenha.style.display = "flex";
        $("#divEsqSenha").animate({ opacity: 1 }, 0.1e3)
        visibilidadeLogin = false;
        visibilidadeCad = false;
        visiblidadeEsqSenha = true;
    } else if (visiblidadeEsqSenha == true) {
        divCad.style.display = "none";
        divLog.style.display = "none";
        divEsqSenha.style.display = "none";
        visiblidadeEsqSenha = false;
    }
    event.preventDefault();
}

function sidenavLogin() {
    var divLog = document.getElementById("divLog");
    var divCad = document.getElementById("divCad");
    var divEsqSenha = document.getElementById("divEsqSenha");
    if (visibilidadeLogin == false) {
        divCad.style.display = "none";
        divLog.style.opacity = 0;
        divLog.style.display = "flex";
        $("#divLog").animate({ opacity: 1 }, 0.1e3)
        divEsqSenha.style.display = "none";
        visibilidadeCad = false;
        visiblidadeEsqSenha = false;
        visibilidadeLogin = true;
    } else if (visibilidadeLogin == true) {
        divLog.style.display = "none";
        divEsqSenha.style.display = "none";
        visibilidadeLogin = false;
    }
}

function sidenavCadastro() {
    var divLog = document.getElementById("divLog");
    var divCad = document.getElementById("divCad");
    var divEsqSenha = document.getElementById("divEsqSenha");
    if (visibilidadeCad == false) {
        divLog.style.display = "none";
        divCad.style.opacity = 0;
        divEsqSenha.style.display = "none";
        divCad.style.display = "flex";
        $("#divCad").animate({ opacity: 1 }, 0.1e3)
        visibilidadeLogin = false;
        visiblidadeEsqSenha = false;
        visibilidadeCad = true;
    } else if (visibilidadeCad == true) {
        divCad.style.display = "none";
        divEsqSenha.style.display = "none";
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
        textoLogin.style.color = "#FFF";
    } else if (itemCarro2.className === "carousel-item active") {
        textoLogin.style.color = "#FFF";
    } else if (itemCarro3.className === "carousel-item active") {
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

        divAcompanhamento.style.height = divAcom + "px";
        divAcompanhamento.style.transitionDuration = "2s";
        setTimeout(function() { divAcompanhamento.style.overflow = "visible"; }, 2000);
        btnAcompanhamento.style.transform = "rotate(180deg)";
        btnAcompanhamento.style.transitionDuration = "1s";
        acompanhamentoAberto = true;
    } else if (acompanhamentoAberto === true) {
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
        divAcompanhamento.style.height = divBeb + "px";
        divAcompanhamento.style.transitionDuration = "2s";
        setTimeout(function() { divAcompanhamento.style.overflow = "visible"; }, 2000);
        btnAcompanhamento.style.transform = "rotate(180deg)";
        btnAcompanhamento.style.transitionDuration = "1s";
        bebidaAberto = true;
    } else if (bebidaAberto === true) {
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
        divAcompanhamento.style.height = divSob + "px";
        divAcompanhamento.style.transitionDuration = "2s";
        setTimeout(function() { divAcompanhamento.style.overflow = "visible"; }, 2000);
        btnAcompanhamento.style.transform = "rotate(180deg)";
        btnAcompanhamento.style.transitionDuration = "1s";
        sobremesaAberto = true;
    } else if (sobremesaAberto === true) {
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
        divAcompanhamento.style.height = divMol + "px";
        divAcompanhamento.style.transitionDuration = "2s";
        setTimeout(function() { divAcompanhamento.style.overflow = "visible"; }, 2000);
        btnAcompanhamento.style.transform = "rotate(180deg)";
        btnAcompanhamento.style.transitionDuration = "1s";
        molhoAberto = true;
    } else if (molhoAberto === true) {
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
    } else if (value === "paes") {
        paes.style.display = "flex";
        carnes.style.display = "none";
        verduras.style.display = "none";
        legumes.style.display = "none";
        queijos.style.display = "none";
        molhos.style.display = "none";
    } else if (value === "verduras") {
        paes.style.display = "none";
        carnes.style.display = "none";
        verduras.style.display = "flex";
        legumes.style.display = "none";
        queijos.style.display = "none";
        molhos.style.display = "none";
    } else if (value === "legumes") {
        paes.style.display = "none";
        carnes.style.display = "none";
        verduras.style.display = "none";
        legumes.style.display = "flex";
        queijos.style.display = "none";
        molhos.style.display = "none";
    } else if (value === "queijos") {
        paes.style.display = "none";
        carnes.style.display = "none";
        verduras.style.display = "none";
        legumes.style.display = "none";
        queijos.style.display = "flex";
        molhos.style.display = "none";
    } else if (value === "molhos") {
        paes.style.display = "none";
        carnes.style.display = "none";
        verduras.style.display = "none";
        legumes.style.display = "none";
        queijos.style.display = "none";
        molhos.style.display = "flex";
    }
}

$(document).ready(function() {

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
        c.addEventListener("click", function(e) {
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
    a.addEventListener("click", function(e) {
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

/*window.onresize = function() {
    var elements = document.getElementById("ContentPlaceHolder1_divProds").getElementsByClassName('divProduto');
    var count = elements.length;
    var windowW = window.innerWidth;
    var windowH = window.innerHeight;
    if (windowH <= 1080 && windowW <= 1920) {
        if (windowH <= 720 && windowW <= 1280) {
            if (windowH <= 720 && windowW <= 1280) {
                var divHeight = 1200 * Math.trunc(count / 2) + 50 * Math.trunc(count / 2);
                document.getElementById("ContentPlaceHolder1_divProds").style.height = divHeight + "px";
            }
            var divHeight = 900 * Math.trunc(count / 3) + 100 * Math.trunc(count / 3);
            document.getElementById("ContentPlaceHolder1_divProds").style.height = divHeight + "px";
        }
        var divHeight2 = 2000 * Math.trunc(count / 3) + 100 * Math.trunc(2 * count / 3);
        var divHeight = 1500 * Math.trunc(count / 3) + 100 * Math.trunc(2 * count / 3);
        document.getElementById("ContentPlaceHolder1_divProds").style.height = divHeight + "px";
        document.getElementById("divAcompanhamento").style.height = divHeight2 + "px";
    }
}*/

var divSob = 0;
var divAcom = 0;
var divBeb = 0;
var divMol = 0;

function tamanhoDivProdutos() {
    var elements = document.getElementById("ContentPlaceHolder1_divProds").getElementsByClassName('divProduto');
    var count = elements.length;
    var elements2 = document.getElementById("ContentPlaceHolder1_divProds2").getElementsByClassName('divProduto');
    var count2 = elements2.length;
    var elements3 = document.getElementById("ContentPlaceHolder1_divProds3").getElementsByClassName('divProduto');
    var count3 = elements3.length;
    var elements4 = document.getElementById("ContentPlaceHolder1_divProds4").getElementsByClassName('divProduto');
    var count4 = elements4.length;
    var windowW = window.innerWidth;
    var windowH = window.innerHeight;
    if (windowH <= 1080 && windowW <= 1920) {
        var cFilho = count;
        if ((count % 3) == 2) {
            cFilho = count + 1;
        } else if ((count % 3) == 1) {
            cFilho = count + 2;
        }
        var divHeight = 600 * Math.trunc(cFilho / 3) + 50 * Math.trunc(2 * cFilho / 3);
        var divHeightC = 700 * Math.trunc(cFilho / 3) + 50 * Math.trunc(2 * cFilho / 3);
        document.getElementById("ContentPlaceHolder1_divProds").style.height = divHeight + "px";
        divAcom = divHeightC;

        var cFilho2 = count2;
        if ((count2 % 3) == 2) {
            cFilho2 = count2 + 1;
        } else if ((count2 % 3) == 1) {
            cFilho2 = count2 + 2;
        }
        var divHeight2 = 600 * Math.trunc(cFilho2 / 3) + 50 * Math.trunc(2 * cFilho2 / 3);
        var divHeightC2 = 700 * Math.trunc(cFilho2 / 3) + 50 * Math.trunc(2 * cFilho2 / 3);
        document.getElementById("ContentPlaceHolder1_divProds2").style.height = divHeight2 + "px";
        divBeb = divHeightC2;

        var cFilho3 = count3;
        if ((count3 % 3) == 2) {
            cFilho3 = count3 + 1;
        } else if ((count3 % 3) == 1) {
            cFilho3 = count3 + 2;
        }
        var divHeight3 = 600 * Math.trunc(cFilho3 / 3) + 50 * Math.trunc(2 * cFilho3 / 3);
        var divHeightC3 = 700 * Math.trunc(cFilho3 / 3) + 50 * Math.trunc(2 * cFilho3 / 3);
        document.getElementById("ContentPlaceHolder1_divProds3").style.height = divHeight3 + "px";
        divSob = divHeightC3;

        var cFilho4 = count4;
        if ((count4 % 3) == 2) {
            cFilho4 = count4 + 1;
        } else if ((count4 % 3) == 1) {
            cFilho4 = count4 + 2;
        }
        var divHeight4 = 600 * Math.trunc(cFilho4 / 3) + 50 * Math.trunc(2 * cFilho4 / 3);
        var divHeightC4 = 700 * Math.trunc(cFilho4 / 3) + 50 * Math.trunc(2 * cFilho4 / 3);
        document.getElementById("ContentPlaceHolder1_divProds4").style.height = divHeight4 + "px";
        divMol = divHeightC4;
        if (windowH <= 720 && windowW <= 1280) {

            var divHeight = 1200 * Math.trunc(count / 2) + 50 * Math.trunc(count / 2);
            var divHeightC = 1700 * Math.trunc(count / 2) + 50 * Math.trunc(count / 2);
            document.getElementById("ContentPlaceHolder1_divProds").style.height = divHeight + "px";
            divAcom = divHeightC;

            var divHeight2 = 1200 * Math.trunc(count2 / 2) + 50 * Math.trunc(count2 / 2);
            var divHeightC2 = 1700 * Math.trunc(count2 / 2) + 50 * Math.trunc(count2 / 2);
            document.getElementById("ContentPlaceHolder1_divProds2").style.height = divHeight2 + "px";
            divBeb = divHeightC2;

            var divHeight3 = 1200 * Math.trunc(count3 / 2) + 50 * Math.trunc(count3 / 2);
            var divHeightC3 = 1700 * Math.trunc(count3 / 2) + 50 * Math.trunc(count3 / 2);
            document.getElementById("ContentPlaceHolder1_divProds3").style.height = divHeight3 + "px";
            divSob = divHeightC3;

            var divHeight4 = 1200 * Math.trunc(count4 / 2) + 50 * Math.trunc(count4 / 2);
            var divHeightC4 = 1700 * Math.trunc(count4 / 2) + 50 * Math.trunc(count4 / 2);
            document.getElementById("ContentPlaceHolder1_divProds4").style.height = divHeight4 + "px";
            divMol = divHeightC4;
        }
    }
}

window.onresize = tamanhoDivProdutos;

function tamDivIngredientes() {
    var elements = document.getElementById("ContentPlaceHolder1_divPaes").getElementsByClassName('divProduto');
    var count = elements.length;
    var elements2 = document.getElementById("ContentPlaceHolder1_divCarnes").getElementsByClassName('divProduto');
    var count2 = elements2.length;
    var elements3 = document.getElementById("ContentPlaceHolder1_divVerduras").getElementsByClassName('divProduto');
    var count3 = elements3.length;
    var elements4 = document.getElementById("ContentPlaceHolder1_divLegumes").getElementsByClassName('divProduto');
    var count4 = elements4.length;
    var elements5 = document.getElementById("ContentPlaceHolder1_divQueijos").getElementsByClassName('divProduto');
    var count5 = elements5.length;
    var elements6 = document.getElementById("ContentPlaceHolder1_divMolhos").getElementsByClassName('divProduto');
    var count6 = elements6.length;
    var windowW = window.innerWidth;
    var windowH = window.innerHeight;
    if (windowH <= 1080 && windowW <= 1920) {
        if ((count % 2) == 1) {
            count = count + 1;
        }
        var divHeight = 600 * Math.trunc(count / 2) + 70 * Math.trunc(count / 2);
        document.getElementById("ContentPlaceHolder1_divPaes").style.height = divHeight + "px";

        if ((count2 % 2) == 1) {
            count2 = count2 + 1;
        }
        var divHeight2 = 600 * Math.trunc(count2 / 2) + 70 * Math.trunc(count2 / 2);
        document.getElementById("ContentPlaceHolder1_divCarnes").style.height = divHeight2 + "px";

        if ((count3 % 2) == 1) {
            count3 = count3 + 1;
        }
        var divHeight3 = 600 * Math.trunc(count3 / 2) + 70 * Math.trunc(count3 / 2);
        document.getElementById("ContentPlaceHolder1_divVerduras").style.height = divHeight3 + "px";

        if ((count4 % 2) == 1) {
            count4 = count4 + 1;
        }
        var divHeight4 = 600 * Math.trunc(count4 / 2) + 70 * Math.trunc(count4 / 2);
        document.getElementById("ContentPlaceHolder1_divLegumes").style.height = divHeight4 + "px";

        if ((count5 % 2) == 1) {
            count5 = count5 + 1;
        }
        var divHeight5 = 600 * Math.trunc(count5 / 2) + 70 * Math.trunc(count5 / 2);
        document.getElementById("ContentPlaceHolder1_divQueijos").style.height = divHeight5 + "px";

        if ((count6 % 2) == 1) {
            count6 = count6 + 1;
        }
        var divHeight6 = 600 * Math.trunc(count6 / 2) + 70 * Math.trunc(count6 / 2);
        document.getElementById("ContentPlaceHolder1_divMolhos").style.height = divHeight6 + "px";
        if (windowH <= 720 && windowW <= 1280) {
            var divHeight = 300 * Math.trunc(count) + 25 * Math.trunc(count);
            document.getElementById("ContentPlaceHolder1_divPaes").style.height = divHeight + "px";

            var divHeight2 = 300 * Math.trunc(count2) + 25 * Math.trunc(count2);
            document.getElementById("ContentPlaceHolder1_divCarnes").style.height = divHeight2 + "px";

            var divHeight3 = 300 * Math.trunc(count3) + 25 * Math.trunc(count3);
            document.getElementById("ContentPlaceHolder1_divVerduras").style.height = divHeight3 + "px";

            var divHeight4 = 300 * Math.trunc(count4) + 25 * Math.trunc(count4);
            document.getElementById("ContentPlaceHolder1_divLegumes").style.height = divHeight4 + "px";

            var divHeight5 = 300 * Math.trunc(count5) + 25 * Math.trunc(count5);
            document.getElementById("ContentPlaceHolder1_divQueijos").style.height = divHeight5 + "px";

            var divHeight6 = 300 * Math.trunc(count6) + 25 * Math.trunc(count6);
            document.getElementById("ContentPlaceHolder1_divMolhos").style.height = divHeight6 + "px";
        }
    }
}

window.onresize = tamDivIngredientes;

var visibilidadeInst = false;

function fecharInstrucoes() {
    var divInst = document.getElementById("secProd1");
    if (visibilidadeInst == true) {
        divInst.style.display = "none";
        visibilidadeInst = false;
    }
    event.preventDefault();
}

function exibirInstrucoes() {
    var divInst = document.getElementById("secProd1");
    if (visibilidadeInst == false) {
        divInst.style.display = "flex";
        visibilidadeInst = true;
    } else if (visibilidadeInst == true) {
        divInst.style.display = "none";
        visibilidadeInst = false;
    }
    event.preventDefault();
}

var visibilidadeNutri = false;

function fecharInfoNutri() {
    var divNutri = document.getElementById("secProd1");
    if (visibilidadeNutri == true) {
        divNutri.style.display = "none";
        visibilidadeNutri = false;
        document.getElementById("divDescricaoProdutoCorpo1").innerHTML = "";
    }
    event.preventDefault();
}

function exibirInfoNutri(o) {
    var i = o;
    var rest = i.substring(1, i.length);
    var element = document.getElementById("secProd1");
    document.getElementById("divDescricaoProdutoCorpo1").innerHTML = "";
    url = "https://localhost:44323/api/Produtos/" + rest;
    fetch(url, { cors: "anonymous" }).then((res) => {
        res.json().then((dados) => {
            var d = dados.infoNutr;
            var dCount = d.length - 1;
            while (dCount >= 0) {
                let divDes = document.createElement("div");
                divDes.className = "divInfos";
                let span1 = '<span class="lblDescNutri">';
                let spanT = d[dCount].descricao;
                let span2 = '</span>';
                let span3 = '<span class="lblDescValor">';
                let spanV = d[dCount].val;
                divDes.innerHTML = span1 + spanT + span2 + span3 + spanV + span2;
                document.getElementById("divDescricaoProdutoCorpo1").appendChild(divDes);
                dCount--;
            }
        }).catch((err) => {
            //alert("Erro: " + err);
        })
    });
    if (visibilidadeNutri == false) {
        element.style.display = "flex";
        visibilidadeNutri = true;
    }
    event.preventDefault();
}

/*function iniciar() {
    var s = document.getElementsByClassName('ASS');
    var i;
    for (i = 0; i < x.length; i++) {
        s[i].onclick = exibirInfoNutri;
    } 
    s.forEach((e) => e.onclick = exibirInfoNutri);
}*/

function somar(o) {
    var i = o;
    var res = i.substring(11, i.length);
    var text = document.getElementById("txtQuantidade" + res);
    var hidden = document.getElementById("hTxt" + res);
    var quant = parseInt(text.value);
    text.value = quant + 1;
    hidden.value = quant + 1;
    event.preventDefault();
}

function subtrair(o) {
    var i = o;
    var res = i.substring(11, i.length);
    var text = document.getElementById("txtQuantidade" + res);
    var hidden = document.getElementById("hTxt" + res);
    var quant = parseInt(text.value);
    var e = quant - 1;
    if (e <= 1) {
        text.value = 1;
        hidden.value = 1;
    } else {
        text.value = e;
        hidden.value = e;
    }
    event.preventDefault();
}

function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}

function openNavIngredientes() {
    document.getElementById("Smallboy").style.width = "90%";
}

function closeNavIngredientes() {
    document.getElementById("Smallboy").style.width = "0";
}