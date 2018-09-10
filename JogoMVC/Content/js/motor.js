var ordem = [];
var ranking = [];
jogada = 0;
sequencia = 0;
confere = 0;
level=1;
podeApertar = false;

function iniciar(){
    podeApertar = false;
    sequencia = 0;
    adicionarCor();
    executarSequencia();
    //document.getElementById('btn').innerHTML = 'Jogue';
    document.getElementById('status').innerHTML = '...';
    document.getElementById('btn').style.visibility = 'hidden';
}

function apertou(nrCor){
    if (podeApertar){
        if (nrCor == 2){
            dispararAzul();
        } else if (nrCor == 3){
            dispararAmarelo();
        } else if (nrCor == 1){
            dispararVerde();
        } else if (nrCor == 4){
            dispararVermelho();
        }
        if (ordem[confere] == nrCor){
            //acertou
            confere = confere+1;
            if (confere == ordem.length){
                confere = 0;
                //document.getElementById('btn').style.visibility = 'visible';
                //document.getElementById('btn').innerHTML = 'Continue';
                play();
                document.getElementById('status').innerHTML = 'Acertou !';
                setTimeout(iniciar,1400);
                document.getElementById('lvl').innerHTML='Level '+level;
                level = level+1;
            }			
        } else {
            //errououououuuu -Liga voz do Fausto Silvaa
            //document.getElementById('status').innerHTML = 'Errou!';
            if(jogada<=4){
                document.getElementById("status").innerHTML = "Baixa memória: entre 1 e 4!";
            } if(jogada >=5 && jogada <=8){
                document.getElementById("status").innerHTML = "Memória média: entre 5 e 8!";
            } if (jogada >= 9 && jogada <= 12){
                document.getElementById("status").innerHTML = "Memória alta: entre 9 e 12!";
            } if (jogada > 12){
                document.getElementById("status").innerHTML = "Memória ultra: maior que 13!";
            }

            play2();
            ranking[ranking.length] = level-1;
            ranking.sort(sortNumber);
            ranking.reverse();
            //ranking.rsort();
            if (ranking.length > 0){
                document.getElementById('text1').innerHTML = ranking[0]; 
            }
            if (ranking.length > 1){
                document.getElementById('text2').innerHTML = ranking[1]; 
            }
            if (ranking.length > 2){
                document.getElementById('text3').innerHTML = ranking[2]; 
            }
            error();           
        }
    }
        
}

function error() {
    podeApertar = false;
    document.getElementById('btn').style.visibility = 'visible';
    ordem = [];
    jogada = 0;
    sequencia = 0;
    confere = 0;
    level = 1;
    
}
function play2(){
    document.getElementById('audio2').play();
}

function executarSequencia(){
    if (sequencia < ordem.length){
        if (ordem[sequencia] == 1){
            dispararVerde();
        }
        if (ordem[sequencia] == 2){
            dispararAzul();
        }
        if (ordem[sequencia] == 3){
            dispararAmarelo();
        }
        if (ordem[sequencia] == 4){
            dispararVermelho();
        }
        sequencia = sequencia+1;
    } else {
        if (sequencia == 0){
            podeApertar = false;	
        } else {
            podeApertar = true;
            document.getElementById('status').innerHTML = 'Sua Vez!';
        }
    }
}
function adicionarCor(){
    ordem[jogada] = numeroAleatorio();
    console.log(ordem);
    jogada = jogada+1;
}
function numeroAleatorio(){
    return  Math.floor(Math.random() * 4) + 1;
}
function dispararAzul() {
    document.getElementById('azul').style.background=' #08d6ff';
    document.getElementById('do').play();
    document.getElementById("azul").style.boxShadow = "0px 0px 50px #2fdcff";
    setTimeout(voltarAzul, 500);
}
function voltarAzul() {
    document.getElementById('azul').style.background='blue'; 
    document.getElementById("azul").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep,300);
}
function dispararAmarelo() {
    document.getElementById('amarelo').style.background=' #f8fe68 ';
    document.getElementById('fa').play();
    document.getElementById("amarelo").style.boxShadow = "0px 0px 50px 	#f8fe68";
    setTimeout(voltarAmarelo, 500);
}
function voltarAmarelo() {
    document.getElementById('amarelo').style.background=' #ffdc00';
    document.getElementById("amarelo").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep,300);
}
function dispararVerde() {
    document.getElementById('verde').style.background='#27ff23';
    document.getElementById('la').play();
    document.getElementById("verde").style.boxShadow = "0px 0px 50px #27ff23";
    setTimeout(voltarVerde, 500);
}
function voltarVerde() {
    document.getElementById('verde').style.background='green';
    document.getElementById("verde").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep,300);
}
function dispararVermelho() {
    document.getElementById('vermelho').style.background='#ff676b';
    document.getElementById('mi').play();
    document.getElementById("vermelho").style.boxShadow = "0px 0px 50px #ff676b ";
    setTimeout(voltarVermelho, 500);
} 
function voltarVermelho() {
    document.getElementById('vermelho').style.background='red';
    document.getElementById("vermelho").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep,300);	
}

function sleep() {
executarSequencia();
}

function play(){
    au = document.getElementById('audio');
    au.play();
}
function sortNumber(a,b) {
    return a - b;
}
