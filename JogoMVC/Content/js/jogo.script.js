var ordem = [];
var ranking = [];
jogada = 0;
sequencia = 0;
confere = 0;
level = 1;
podeApertar = false;

function iniciar() {
    podeApertar = false;
    sequencia = 0;
    adicionarCor();
    executarSequencia();
    //document.getElementById('btn').innerHTML = 'Jogue';
    document.getElementById('status').innerHTML = '...';
    document.getElementById('btn').style.visibility = 'hidden';
}

function apertou(nrCor) {
    if (podeApertar) {
        if (nrCor == 2) {
            DisparaQuadrado2();
        } else if (nrCor == 3) {
            DisparaQuadrado3();
        } else if (nrCor == 1) {
            DisparaQuadrado1();
        } else if (nrCor == 4) {
            DisparaQuadrado4();
        }
        if (ordem[confere] == nrCor) {
            //acertou
            confere = confere + 1;
            if (confere == ordem.length) {
                confere = 0;
                //document.getElementById('btn').style.visibility = 'visible';
                //document.getElementById('btn').innerHTML = 'Continue';
                play();
                document.getElementById('status').innerHTML = 'Acertou !';
                setTimeout(iniciar, 1400);
                document.getElementById('lvl').innerHTML = 'Level ' + level;
                level = level + 1;
            }
        } else {
            //errououououuuu -Liga voz do Fausto Silvaa
            //document.getElementById('status').innerHTML = 'Errou!';
            if (jogada <= 4) {
                document.getElementById("status").innerHTML = "Baixa memória: entre 1 e 4!";
            } if (jogada >= 5 && jogada <= 8) {
                document.getElementById("status").innerHTML = "Memória média: entre 5 e 8!";
            } if (jogada >= 9 && jogada <= 12) {
                document.getElementById("status").innerHTML = "Memória alta: entre 9 e 12!";
            } if (jogada > 12) {
                document.getElementById("status").innerHTML = "Memória ultra: maior que 13!";
            }

            play2();
            ranking[ranking.length] = level - 1;
            ranking.sort(sortNumber);
            ranking.reverse();
            //ranking.rsort();
            if (ranking.length > 0) {
                document.getElementById('text1').innerHTML = ranking[0];
            }
            if (ranking.length > 1) {
                document.getElementById('text2').innerHTML = ranking[1];
            }
            if (ranking.length > 2) {
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
function play2() {
    document.getElementById('audio2').play();
}

function executarSequencia() {
    if (sequencia < ordem.length) {
        if (ordem[sequencia] == 1) {
            DisparaQuadrado1();
        }
        if (ordem[sequencia] == 2) {
            DisparaQuadrado2();
        }
        if (ordem[sequencia] == 3) {
            DisparaQuadrado3();
        }
        if (ordem[sequencia] == 4) {
            DisparaQuadrado4();
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
    return Math.floor(Math.random() * 4) + 1;
}
//Dispara cores
function DisparaQuadrado1() {
    document.getElementById('quadrado1').style.background = '#08d6ff';
    document.getElementById('do').play();
    document.getElementById("quadrado1").style.boxShadow = "0px 0px 50px #2fdcff";
    setTimeout(VoltaQuadrado1, 500);
}
function DisparaQuadrado2() {
    document.getElementById('quadrado2').style.background = '#08d6ff';
    document.getElementById('do').play();
    document.getElementById("quadrado2").style.boxShadow = "0px 0px 50px #2fdcff";
    setTimeout(VoltaQuadrado2, 500);
}
function DisparaQuadrado3() {
    document.getElementById('quadrado3').style.background = '#08d6ff';
    document.getElementById('do').play();
    document.getElementById("quadrado3").style.boxShadow = "0px 0px 50px #2fdcff";
    setTimeout(VoltaQuadrado3, 500);
}
function DisparaQuadrado4() {
    document.getElementById('quadrado4').style.background = '#08d6ff';
    document.getElementById('do').play();
    document.getElementById("quadrado4").style.boxShadow = "0px 0px 50px #2fdcff";
    setTimeout(VoltaQuadrado4, 500);
}
function DisparaQuadrado5() {
    document.getElementById('quadrado5').style.background = '#08d6ff';
    document.getElementById('do').play();
    document.getElementById("quadrado5").style.boxShadow = "0px 0px 50px #2fdcff";
    setTimeout(VoltaQuadrado5, 500);
}
function DisparaQuadrado6() {
    document.getElementById('quadrado6').style.background = '#08d6ff';
    document.getElementById('do').play();
    document.getElementById("quadrado6").style.boxShadow = "0px 0px 50px #2fdcff";
    setTimeout(VoltaQuadrado6, 500);
}
function DisparaQuadrado7() {
    document.getElementById('quadrado7').style.background = '#08d6ff';
    document.getElementById('do').play();
    document.getElementById("quadrado7").style.boxShadow = "0px 0px 50px #2fdcff";
    setTimeout(VoltaQuadrado7, 500);
}
function DisparaQuadrado8() {
    document.getElementById('quadrado8').style.background = '#08d6ff';
    document.getElementById('do').play();
    document.getElementById("quadrado8").style.boxShadow = "0px 0px 50px #2fdcff";
    setTimeout(VoltaQuadrado8, 500);
}
function DisparaQuadrado9() {
    document.getElementById('quadrado9').style.background = '#08d6ff';
    document.getElementById('do').play();
    document.getElementById("quadrado9").style.boxShadow = "0px 0px 50px #2fdcff";
    setTimeout(VoltaQuadrado9, 500);
}
//Dispara cores
//Volta cores
function VoltaQuadrado1() {
    document.getElementById('quadrado1').style.background = '#ffdc00';
    document.getElementById("quadrado1").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado2() {
    document.getElementById('quadrado2').style.background = '#ffdc00';
    document.getElementById("quadrado2").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado3() {
    document.getElementById('quadrado3').style.background = '#ffdc00';
    document.getElementById("quadrado3").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado4() {
    document.getElementById('quadrado4').style.background = '#ffdc00';
    document.getElementById("quadrado4").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado5() {
    document.getElementById('quadrado5').style.background = '#ffdc00';
    document.getElementById("quadrado5").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado6() {
    document.getElementById('quadrado6').style.background = '#ffdc00';
    document.getElementById("quadrado6").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado7() {
    document.getElementById('quadrado7').style.background = '#ffdc00';
    document.getElementById("quadrado7").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado8() {
    document.getElementById('quadrado8').style.background = '#ffdc00';
    document.getElementById("quadrado8").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep, 300);
}
function VoltaQuadrado9() {
    document.getElementById('quadrado9').style.background = '#ffdc00';
    document.getElementById("quadrado9").style.boxShadow = "0 0 0px #999999";
    //executarSequencia();
    setTimeout(sleep, 300);
}
//Volta cores
function sleep() {
    executarSequencia();
}

function play() {
    au = document.getElementById('audio');
    au.play();
}
function sortNumber(a, b) {
    return a - b;
}
