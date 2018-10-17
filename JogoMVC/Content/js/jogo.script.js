$( document ).ready(function() {
    $('#pause').prop("disabled", true);
    $('#reiniciar').prop("disabled", true);    
    $("#facebook").hide();
});
var ordem = [];
var ranking = [];
var request;
var Partida = 0;
var CodPar = 0;
var level = 0;
jogada = 0;
sequencia = 0;
confere = 0;
pontuacao = 0;
podeApertar = false;
estapausado = false;
reiniciei = false;

function iniciar() {
    setbuttons(0);   
    podeApertar = false;
    $('#Status').text('...');
    
    if(estapausado == false && reiniciei == false){
        PartidaGPF('G');
        sequencia = 0;
        adicionarCor();
    }else{
        if(reiniciei == true){
            reiniciei = false;
            sequencia = 0;
            adicionarCor();
        }else{        
            sequencia = 0;
            estapausado = false;
        }
    }
    executarSequencia();
    $('#status').text('...');
    $('#btn').hide();
    $("#facebook").hide();
}
function PartidaGPF(tipOpe){
    if (request) {
        request.abort();
    }
    var serializedData = "&UsuCod="+$("#CodUsu").text()+"&ParPon="+pontuacao+"&CodPar="+CodPar+"&TipOpe="+tipOpe;
    request = $.ajax({
        url: "Controller/PartidaController.php",
        type: "post",
        data: serializedData
    });
    request.done(function (response, textStatus, jqXHR){
        var response = $.parseJSON(response);
        if (!response.success) { //Se deu alguma mensagem de erro
            if (response.erros) {
                $('#divMensagem').append('<div class="alert alert-danger" role="alert">' + response.erros+ '</div>')
                .fadeIn(1000).html();
            }
        }
        else {
            console.log(response);
            for (i in response.Partida) {
                CodPar = response.Partida.PartidaP;
            }
        }
    });

    // Callback para ser chamado em caso de falha
    request.fail(function (jqXHR, textStatus, errorThrown){
        $('#divMensagem').append('<div class="alert alert-danger" role="alert">Erro ao buscar os dados</div>')
            .fadeIn(1000).html();
    });  
}

//var serializedData = "&UsuCod="+$("#CodUsu").text()+"&ParPon="+Partida;



function apertou(nrCor) {
    if (podeApertar == true && estapausado == false) {
        if (nrCor == 2) {
            DisparaQuadrado2();
        } else if (nrCor == 3) {
            DisparaQuadrado3();
        } else if (nrCor == 1) {
            DisparaQuadrado1();
        } else if (nrCor == 4) {
            DisparaQuadrado4();
        } else if (nrCor == 5) {
            DisparaQuadrado5();
        } else if (nrCor == 6) {
            DisparaQuadrado6();
        } else if (nrCor == 7) {
            DisparaQuadrado7();
        } else if (nrCor == 8) {
            DisparaQuadrado8();
        } else if (nrCor == 9) {
            DisparaQuadrado9();
        }
        if (ordem[confere] == nrCor) {
            //acertou
            confere = confere + 1;
            if (confere == ordem.length) {
                confere = 0;
                play();
                setTimeout(iniciar, 1400);
                if(nrCor%2 == 0){
                    pontuacao = pontuacao + 50;
                }else{
                    pontuacao = pontuacao + 55;
                } 
                level++;               
                $('#lvl').text(pontuacao);
                $('#level').text('Nível: '+level);
            }
        } else {
            PartidaGPF('PF');
            play2();
            error('F');
        }
    }

}

function pausar(){
    PartidaGPF('PF');
    podeApertar = false;
    estapausado = true;
    setbuttons(2);
    $("#facebook").show();
    $('#status').text('Clique em iniciar para voltar a jogar!');
}

function reiniciar(){
    error();
    reiniciei = true;
    PartidaGPF('R');
    iniciar(); 
    $('#status').text('...'); 
      
}

function error() {
    podeApertar = false;
    ordem = [];
    jogada = 0;
    sequencia = 0;
    confere = 0;
    pontuacao = 0;
    level = 0;
    $('#lvl').text(pontuacao);
    $('#level').text('Nível: '+level);
    $('#status').text('Perdeu, inicie novamente!');
    
    setbuttons(1);
    $("#facebook").show();
}
function play2() {
    document.getElementById('audio2').play();
}

function setbuttons(tipset){
    if(tipset == 1){
        $('#iniciar').prop("disabled", false);
        $('#pause').prop("disabled", true);
        $('#reiniciar').prop("disabled", true); 
    }else if(tipset == 2){
        $('#iniciar').prop("disabled", false);
        $('#pause').prop("disabled", true);
        $('#reiniciar').prop("disabled", false); 
    }else{
        $('#iniciar').prop("disabled", true);
        $('#pause').prop("disabled", false);
        $('#reiniciar').prop("disabled", false); 
    }
}

function executarSequencia() {
    if (sequencia < ordem.length) {
        if (ordem[sequencia] == 1 && estapausado == false) {
            DisparaQuadrado1();
        }
        if (ordem[sequencia] == 2 && estapausado == false) {
            DisparaQuadrado2();
        }
        if (ordem[sequencia] == 3 && estapausado == false) {
            DisparaQuadrado3();
        }
        if (ordem[sequencia] == 4 && estapausado == false) {
            DisparaQuadrado4();
        }
        if (ordem[sequencia] == 5 && estapausado == false) {
            DisparaQuadrado5();
        }
        if (ordem[sequencia] == 6 && estapausado == false) {
            DisparaQuadrado6();
        }
        if (ordem[sequencia] == 7 && estapausado == false) {
            DisparaQuadrado7();
        }
        if (ordem[sequencia] == 8 && estapausado == false) {
            DisparaQuadrado8();
        }
        if (ordem[sequencia] == 9 && estapausado == false) {
            DisparaQuadrado9();
        }
        sequencia = sequencia + 1;
    } else {
        if (sequencia == 0) {
            podeApertar = false;
        } else {
            podeApertar = true;
            document.getElementById('status').innerHTML = 'Sua Vez!';
        }
    }
}
function adicionarCor() {
    ordem[jogada] = numeroAleatorio();
    console.log(ordem);
    jogada = jogada + 1;
}
function numeroAleatorio() {
    return Math.floor(Math.random() * 9) + 1;
}
//Dispara cores
function DisparaQuadrado1() {
    $("#quadrado1").css("background-color","#f8ffaa");
    document.getElementById('do').play();
    $("#quadrado1").css("boxShadow","0px 0px 50px #ffffff");
    setTimeout(VoltaQuadrado1, 300);
}
function DisparaQuadrado2() {
    $("#quadrado2").css("background-color","#cc5eff");
    document.getElementById('do').play();
    $("#quadrado2").css("boxShadow","0px 0px 50px #ffffff");
    setTimeout(VoltaQuadrado2, 300);
}
function DisparaQuadrado3() {
    $("#quadrado3").css("background-color","#907fff");
    document.getElementById('do').play();
    $("#quadrado3").css("boxShadow","0px 0px 50px #ffffff");
    setTimeout(VoltaQuadrado3, 300);
}
function DisparaQuadrado4() {
    $("#quadrado4").css("background-color","#61f9ba");
    document.getElementById('do').play();
    $("#quadrado4").css("boxShadow","0px 0px 50px #ffffff");
    setTimeout(VoltaQuadrado4, 300);
}
function DisparaQuadrado5() {
    $("#quadrado5").css("background-color","#ff6868");
    document.getElementById('do').play();
    $("#quadrado5").css("boxShadow","0px 0px 50px #ffffff");
    setTimeout(VoltaQuadrado5, 300);
}
function DisparaQuadrado6() {
    $("#quadrado6").css("background-color","#fffa7f");
    document.getElementById('do').play();
    $("#quadrado6").css("boxShadow","0px 0px 50px #ffffff");
    setTimeout(VoltaQuadrado6, 300);
}
function DisparaQuadrado7() {
    $("#quadrado7").css("background-color","#ef8453");
    document.getElementById('do').play();
    $("#quadrado7").css("boxShadow","0px 0px 50px #ffffff");
    setTimeout(VoltaQuadrado7, 300);
}
function DisparaQuadrado8() {
    $("#quadrado8").css("background-color","#82d0f2");
    document.getElementById('do').play();
    $("#quadrado8").css("boxShadow","0px 0px 50px #ffffff");
    setTimeout(VoltaQuadrado8, 300);
}
function DisparaQuadrado9() {
    $("#quadrado9").css("background-color","#83db69");
    document.getElementById('do').play();
    $("#quadrado9").css("boxShadow","0px 0px 50px #ffffff");
    setTimeout(VoltaQuadrado9, 300);
}
//Dispara cores
//Volta cores
function VoltaQuadrado1() {
    $("#quadrado1").css("background-color","#e1ea7c");
    $("#quadrado1").css("boxShadow","0px 0px 0px #999999");
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado2() {
    $("#quadrado2").css("background-color","#ab02f9");
    $("#quadrado2").css("boxShadow","0px 0px 0px #999999");
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado3() {
    $("#quadrado3").css("background-color","#2200ff");
    $("#quadrado3").css("boxShadow","0px 0px 0px #999999");
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado4() {
    $("#quadrado4").css("background-color","#12ea90");
    $("#quadrado4").css("boxShadow","0px 0px 0px #999999");
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado5() {
    $("#quadrado5").css("background-color","#ff0000");
    $("#quadrado5").css("boxShadow","0px 0px 0px #999999");
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado6() {
    $("#quadrado6").css("background-color","#eae204");
    $("#quadrado6").css("boxShadow","0px 0px 0px #999999");
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado7() {
    $("#quadrado7").css("background-color","#ea4c04");
    $("#quadrado7").css("boxShadow","0px 0px 0px #999999");
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado8() {
    $("#quadrado8").css("background-color","#04a5ea");
    $("#quadrado8").css("boxShadow","0px 0px 0px #999999");
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado9() {
    $("#quadrado9").css("background-color","#30a50d");
    $("#quadrado9").css("boxShadow","0px 0px 0px #999999");
    //executarSequencia();
    setTimeout(sleep, 300);
}
//Volta cores
function sleep() {
    executarSequencia();
}

function play() {
    au = $('#audio')[0];
    au.play();
}