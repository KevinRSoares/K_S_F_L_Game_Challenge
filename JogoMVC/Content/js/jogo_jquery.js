$( document ).ready(function() {
    var ordem = [];
    var ranking = [];
    jogada = 0;
    sequencia = 0;
    confere = 0;
    level = 50;
    podeApertar = false;

    $("#btn").click(function(){
        podeApertar = false;
        sequencia = 0;
        adicionarCor();
        executarSequencia();
        //document.getElementById('btn').innerHTML = 'Jogue';
        $("#status").text("....");
        $(this).prop("disabled",true);
    });
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
                    //document.getElementById('btn').style.visibility = 'visible';
                    //document.getElementById('btn').innerHTML = 'Continue';
                    play();
                    document.getElementById('status').innerHTML = 'Acertou !';
                    setTimeout(iniciar, 1400);
                    document.getElementById('lvl').innerHTML = level;
                    if(nrCor%2 == 0){
                        level = level + 50;
                    }else{
                        level = level + 55;
                    }                
                }
            } else {
                //errououououuuu -Liga voz do Fausto Silvaa
                //document.getElementById('status').innerHTML = 'Errou!';
                // if (jogada <= 4) {
                //     document.getElementById("status").innerHTML = "Baixa memória: entre 1 e 4!";
                // } if (jogada >= 5 && jogada <= 8) {
                //     document.getElementById("status").innerHTML = "Memória média: entre 5 e 8!";
                // } if (jogada >= 9 && jogada <= 12) {
                //     document.getElementById("status").innerHTML = "Memória alta: entre 9 e 12!";
                // } if (jogada > 12) {
                //     document.getElementById("status").innerHTML = "Memória ultra: maior que 13!";
                // }
    
                play2();
                // ranking[ranking.length] = level - 1;
                // ranking.sort(sortNumber);
                // ranking.reverse();
                //ranking.rsort();
                // if (ranking.length > 0) {
                //     document.getElementById('text1').innerHTML = ranking[0];
                // }
                // if (ranking.length > 1) {
                //     document.getElementById('text2').innerHTML = ranking[1];
                // }
                // if (ranking.length > 2) {
                //     document.getElementById('text3').innerHTML = ranking[2];
                // }
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
        level = 0;
    
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
            if (ordem[sequencia] == 5) {
                DisparaQuadrado5();
            }
            if (ordem[sequencia] == 6) {
                DisparaQuadrado6();
            }
            if (ordem[sequencia] == 7) {
                DisparaQuadrado7();
            }
            if (ordem[sequencia] == 8) {
                DisparaQuadrado8();
            }
            if (ordem[sequencia] == 9) {
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
        setTimeout(VoltaQuadrado1, 400);
    }
    function DisparaQuadrado2() {
        $("#quadrado2").css("background-color","#cc5eff");
        document.getElementById('do').play();
        $("#quadrado2").css("boxShadow","0px 0px 50px #ffffff");
        setTimeout(VoltaQuadrado2, 400);
    }
    function DisparaQuadrado3() {
        $("#quadrado3").css("background-color","#907fff");
        document.getElementById('do').play();
        $("#quadrado3").css("boxShadow","0px 0px 50px #ffffff");
        setTimeout(VoltaQuadrado3, 400);
    }
    function DisparaQuadrado4() {
        $("#quadrado4").css("background-color","#61f9ba");
        document.getElementById('do').play();
        $("#quadrado4").css("boxShadow","0px 0px 50px #ffffff");
        setTimeout(VoltaQuadrado4, 400);
    }
    function DisparaQuadrado5() {
        $("#quadrado5").css("background-color","#ff6868");
        document.getElementById('do').play();
        $("#quadrado5").css("boxShadow","0px 0px 50px #ffffff");
        setTimeout(VoltaQuadrado5, 400);
    }
    function DisparaQuadrado6() {
        $("#quadrado6").css("background-color","#fffa7f");
        document.getElementById('do').play();
        $("#quadrado6").css("boxShadow","0px 0px 50px #ffffff");
        setTimeout(VoltaQuadrado6, 400);
    }
    function DisparaQuadrado7() {
        $("#quadrado7").css("background-color","#ef8453");
        document.getElementById('do').play();
        $("#quadrado7").css("boxShadow","0px 0px 50px #ffffff");
        setTimeout(VoltaQuadrado7, 400);
    }
    function DisparaQuadrado8() {
        $("#quadrado8").css("background-color","#82d0f2");
        document.getElementById('do').play();
        $("#quadrado8").css("boxShadow","0px 0px 50px #ffffff");
        setTimeout(VoltaQuadrado8, 400);
    }
    function DisparaQuadrado9() {
        $("#quadrado9").css("background-color","#83db69");
        document.getElementById('do').play();
        $("#quadrado9").css("boxShadow","0px 0px 50px #ffffff");
        setTimeout(VoltaQuadrado9, 400);
    }
    //Dispara cores
    //Volta cores
    function VoltaQuadrado1() {
        $("#quadrado1").css("background-color","#f8ffaa");
        $("#quadrado1").css("boxShadow","0px 0px 0px #999999");
        //executarSequencia();
        setTimeout(sleep, 300);
    }
    function VoltaQuadrado2() {
        $("#quadrado2").css("background-color","#cc5eff");
        $("#quadrado2").css("boxShadow","0px 0px 0px #999999");
        //executarSequencia();
        setTimeout(sleep, 300);
    }
    function VoltaQuadrado3() {
        $("#quadrado3").css("background-color","#907fff");
        $("#quadrado3").css("boxShadow","0px 0px 0px #999999");
        //executarSequencia();
        setTimeout(sleep, 300);
    }
    function VoltaQuadrado4() {
        $("#quadrado4").css("background-color","#61f9ba");
        $("#quadrado4").css("boxShadow","0px 0px 0px #999999");
        //executarSequencia();
        setTimeout(sleep, 300);
    }
    function VoltaQuadrado5() {
        $("#quadrado5").css("background-color","#ff6868");
        $("#quadrado5").css("boxShadow","0px 0px 0px #999999");
        //executarSequencia();
        setTimeout(sleep, 300);
    }
    function VoltaQuadrado6() {
        $("#quadrado6").css("background-color","#fffa7f");
        $("#quadrado6").css("boxShadow","0px 0px 0px #999999");
        //executarSequencia();
        setTimeout(sleep, 300);
    }
    function VoltaQuadrado7() {
        $("#quadrado7").css("background-color","#ef8453");
        $("#quadrado7").css("boxShadow","0px 0px 0px #999999");
        //executarSequencia();
        setTimeout(sleep, 300);
    }
    function VoltaQuadrado8() {
        $("#quadrado8").css("background-color","#82d0f2");
        $("#quadrado8").css("boxShadow","0px 0px 0px #999999");
        //executarSequencia();
        setTimeout(sleep, 300);
    }
    function VoltaQuadrado9() {
        $("#quadrado9").css("background-color","#83db69");
        $("#quadrado9").css("boxShadow","0px 0px 0px #999999");
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
    
});