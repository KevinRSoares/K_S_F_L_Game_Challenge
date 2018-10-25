var meuDragao;
var cabeca;
var corpo;
var placar;
var mapa = [];
var arvores = [];
var obstaculos = [];
var pecaMapa = 38;
var obstaculoTA = 30;
var obstaculoTL = 25;
var TamanhoTelaL = 646;
var TamanhoTelaA = TamanhoTelaL-pecaMapa;
var DragaoA = 32;
var DragaoL = 38;
var dragPassoF = "dist/img/drag - F";
var dragPassoB = "dist/img/drag - B";
var dragPassoL = "dist/img/drag - L";
var dragPassoR = "dist/img/drag - R";
var paco = 1;
var numeroLinhas = TamanhoTelaL/pecaMapa;

function startGame(){
	meuJogo.start();
	meuDragao = new component(DragaoL,DragaoA, "dist/img/drag - F1.png", 40, 5,"image");
	cabeca = new component(12,15, "transparent", 53, 9,"color");
	corpo = new component(14,15, "transparent", 52, 20,"color");
	geraMapa();
}

function geraMapa()
{
	//Gera Mapa
	var k = 0;
	for(i = 0;i < numeroLinhas;i++)
	{
		for(j = 0; j < numeroLinhas;j++)
		{
			mapa[k] = new component(pecaMapa, pecaMapa, "dist/img/quadrado.png", (pecaMapa*j), (pecaMapa*i),"image");		
			k++;
		}
	}
	//Gera Mapa
	limits("dist/img/arvore.png","image",1);//monta array de arvores
	limits("transparent","color",0);//monta array de obstaculos
}

function limits(backg,tipoBack,array){
	var k = 0;
	var condicao = "(k == 0) || (k >= 2 && k <= 16)	|| (k == 17) || (k == 29) || (k == 33)	|| (k >= 34 && k <= 44) || (k == 46) || (k == 48) || (k == 50)	|| (k == 51) || (k == 63) || (k == 65) || (k == 67)	|| (k == 68) || (k >= 70 && k <= 72) || (k >= 74 && k <= 80) || (k == 82) || (k == 84)	|| (k == 85) || (k == 97) || (k == 99) || (k == 101)	|| (k == 102) || (k >= 104 && k <= 112) || (k == 114) || (k == 116) || (k == 118)	|| (k == 119) || (k == 121) || (k == 131) || (k == 133) || (k == 135)	|| (k == 136) || (k == 138) || (k >= 140 && k <= 148) || (k == 150) || (k == 152)	|| (k == 153) || (k == 155) || (k == 167) || (k == 169)	|| (k == 170) || (k >= 172 && k <= 174) || (k >= 176 && k <= 184) || (k == 186)	|| (k == 187) || (k == 189) || (k == 191) || (k == 197) || (k == 203)	|| (k == 204) || (k == 206) || (k >= 208 && k <= 218) || (k == 220)	|| (k == 221) || (k == 223) || (k == 225) || (k == 229) || (k == 233) || (k == 237)	|| (k == 238) || (k == 242) || (k == 244) || (k == 248) || (k == 252) || (k == 254)	|| (k >= 255 && k <= 259) || (k >= 261 && k <= 271)";
	for(i = 0;i < numeroLinhas;i++)
	{
		for(j = 0; j < numeroLinhas;j++)
		{
			if(array == 1)
				if(eval(condicao))
				{
					arvores[k] = new component(pecaMapa, pecaMapa, backg, (pecaMapa*j), (pecaMapa*i),tipoBack);		
				}else{
					arvores[k] = new component(0, 0, backg, 0, 0,tipoBack);	
				}
			else{
				if(eval(condicao))
				{
					obstaculos[k] = new component(obstaculoTL, obstaculoTA, backg, (pecaMapa*j+8), (pecaMapa*i+5),tipoBack);		
				}else if(k == 1){
					obstaculos[k] = new component(pecaMapa, 1, backg, (pecaMapa*j), (pecaMapa*i),tipoBack);	
				}else if(k == 260){
					obstaculos[k] = new component(pecaMapa, pecaMapa, backg, (pecaMapa*j), (pecaMapa*i),tipoBack);	
				}else
				{
					obstaculos[k] = new component(0, 0, backg, 0, 0,tipoBack);	
				}				
			}			
			k++;
		}
	}
}

var meuJogo = {
	canvas : document.createElement("canvas"),
	start : function() {
		this.canvas.width = TamanhoTelaL;
		this.canvas.height = TamanhoTelaA;
		this.context = this.canvas.getContext("2d");
		document.body.insertBefore(this.canvas, document.body.childNodes[0]);
		this.frameNo = 0;   
		this.interval = setInterval(updateGameArea, 30);
		window.addEventListener('keydown', function (e) {
			meuJogo.keys = (meuJogo.keys || []);
			meuJogo.keys[e.keyCode] = (e.type == "keydown");
		})
		window.addEventListener('keyup', function (e) {
			meuJogo.keys[e.keyCode] = (e.type == "keydown");
		})
	}, 
	clear : function(){
		this.context.clearRect(0, 0, this.canvas.width, this.canvas.height);
	}
}

function component(width, height, color, x, y,type) {
	this.gamearea = meuJogo;
	this.type = type;
	if (type == "image") {
		this.image = new Image();
		this.image.src = color;
	}	
	this.width = width;
	this.height = height;
	this.speedX = 0;
	this.speedY = 0;    
	this.x = x;
	this.y = y;    
	this.update = function() {
		ctx = meuJogo.context;
		if (type == "image") {
			ctx.drawImage(this.image, this.x, this.y, this.width, this.height);
		}else if (this.type == "text") {
			ctx.font = this.width + " " + this.height;
			ctx.fillStyle = color;
			ctx.fillText(this.text, this.x, this.y);
		}else {
			ctx.fillStyle = color;
			ctx.fillRect(this.x, this.y, this.width, this.height);
		}
	}
	this.newPos = function() {
		this.x += this.speedX;
		this.y += this.speedY;        
	}
	this.crashWith = function(otherobj) {
        var myleft = this.x;
        var myright = this.x + (this.width);
        var mytop = this.y;
        var mybottom = this.y + (this.height);
        var otherleft = otherobj.x;
        var otherright = otherobj.x + (otherobj.width);
        var othertop = otherobj.y;
        var otherbottom = otherobj.y + (otherobj.height);
        var crash = true;
        if ((mybottom < othertop) ||
               (mytop > otherbottom) ||
               (myright < otherleft) ||
               (myleft > otherright)) {
           crash = false;
        }
        return crash;
    }	
}



function updateGameArea() {
	meuJogo.clear();
	desenhar();
	meuDragao.speedX = 0;
	meuDragao.speedY = 0;
	cabeca.speedX = 0;
	cabeca.speedY = 0;
	corpo.speedX = 0;
	corpo.speedY = 0;
	meuJogo.frameNo += 1;
	//movimentação para esquerda   
	if (meuJogo.keys && meuJogo.keys[37]) 
	{
		
		meuDragao.speedX = -2; 
		cabeca.speedX = -2; 
		corpo.speedX = -2;
		animeDrag(dragPassoL);
	}
	//movimentação para direita
	if (meuJogo.keys && meuJogo.keys[39]) 
	{   
		meuDragao.speedX = 2; 
		cabeca.speedX = 2; 
		corpo.speedX = 2;		
		animeDrag(dragPassoR);
	}
	//movimentação para baixo
	if (meuJogo.keys && meuJogo.keys[38]) 
	{
		meuDragao.speedY = -2; 
		cabeca.speedY = -2; 
		corpo.speedY = -2;			
		animeDrag(dragPassoB);
	}

	//movimentação para cima
	if (meuJogo.keys && meuJogo.keys[40]) 
	{
		meuDragao.speedY = 2; 
		cabeca.speedY = 2; 
		corpo.speedY = 2;						
		animeDrag(dragPassoF);
	}
	for(i = 0; i < obstaculos.length;i++){
		if(i ==260){
			
		}else if (cabeca.crashWith(obstaculos[i])||corpo.crashWith(obstaculos[i])) {
			xyoriginal();
		}	
	}
	atualizaXY(meuDragao.x,meuDragao.y,meuJogo.frameNo);				
	meuDragao.newPos();		
	meuDragao.update();
	cabeca.newPos();		
	cabeca.update();	
	corpo.newPos();		
	corpo.update();	
}

function xyoriginal(){
	meuDragao.x = 40;
	meuDragao.y = 5;
	cabeca.x = 53;
	cabeca.y = 9;
	corpo.x = 52;
	corpo.y = 20;
}

function animeDrag(img){
	paco++;
	if(paco > 4){
		paco = 1;
	}
	meuDragao.image.src = img + paco + ".png";
}
function desenhar(){
	//desenha mapa
	for(i = 0; i < mapa.length;i++){
		mapa[i].update();
	}
	//desenha mapa	
	//desenha arvores
	for(i = 0; i < arvores.length;i++){
		arvores[i].update();
	}
	//desenha arvores
	//desenha Obstaculos
	for(i = 0; i < obstaculos.length;i++){
		obstaculos[i].update();
	}
	//desenha Obstaculos	
}

function atualizaXY(px,py,pontuacao){
	$('#placar').text(pontuacao);	
	$(xp).text(px);
	$(yp).text(py);
}