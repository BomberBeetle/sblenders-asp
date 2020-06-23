var myRequest = new XMLHttpRequest();

myRequest.open("get", "https://localhost:44324", true);

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