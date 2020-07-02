var myRequest = new XMLHttpRequest();

myRequest.open("get", "https://localhost:44324/AgenteToken/online1/teste", true);

function TesteConexao() {
    if (myRequest.open) {
        alert("Batata");
    }
    try {
        myRequest.send(null);
        alert("Beleza");
    }
    catch(e){
        alert("Erro");
    }
}

btnLogin.onclick = () => {
    fetch(`https://localhost:44323/api/AgenteToken/${encodeURIComponent(txtEmailLogin.texto)}/${encodeURIComponent(txtSenhaLogin.texto)}`,
        { method: "GET" }).then((res) => {
            if (res.ok) {
                var obj = res.json();
                window.localStorage.setItem("id", obj.id);
                window.localStorage.setItem("token", obj.token)
                
            }
            else {
                if (res.json().error === "AUTH_ERROR") {
                    alert("login ou senha incorretos")
                }
                else { alert("algo deu errado") }
            }
        })
        .catch(() => { })
}

function efetuarLogin() {
    alert("iojidf");
    fetch(`https://localhost:44323/api/AgenteToken/${encodeURIComponent(txtEmailLogin.texto)}/${encodeURIComponent(txtSenhaLogin.texto)}`,
        { method: "GET" }).then((res) => {
            alert("iljkjl");
            if (res.ok) {
                var obj = res.json();
                window.localStorage.setItem("id", obj.id);
                window.localStorage.setItem("token", obj.token)
                alert("egesg");
            }
            else {
                if (res.json().error === "AUTH_ERROR") {
                    alert("login ou senha incorretos")
                }
                else { alert("algo deu errado") }
            }
        }).catch(() => { })
}