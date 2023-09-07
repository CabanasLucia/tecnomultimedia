// Lucía Cabañas
// tp 4 comision 1
// https://youtu.be/Z3nbQNlpl6c


//variables del juego
let x;
let y; 
let dirX; 
let dirY; 
let pos; 
let p1; 
let p2;

//cargar imagenes
let inicio;
let inst;
let creditos;

//para pasar de pantalla
let orden = []; 

function preload (){
  
  inicio = loadImage ('data/inicio.jpg');
  inst = loadImage ('data/instrucciones.jpg');
  creditos = loadImage ('data/creditos.jpg'); 
}


function setup() {
  
  createCanvas(600, 400);

  x = width/2; 
  y= height/2; 
  dirX = 1; 
  dirY= -1; 
  pos = height/2;
  p1=0; 
  p2=0;
  

 
}

function draw (){
  
if (orden == 0){
  primerapantalla ();
  
} else if (orden == 1){
  credits ();
  
} else if (orden == 2){
  instrucciones ();
  
} else if (orden == 3){
  pong (x,y) ;
 
}
}

function pong () {
  
  background(0);
  stroke(255); 
  line(width/2,0,width/2,height);//Linea del medio
  
  //Dibujo de personajes

  rect(20, mouseY,10,40);//Jugador 1 (izq) + mov con el mouse
  
  rect(width-30, pos,10,40);//Jugador 2 (der) 
  
  //Movimiento de jugador 2 con flechas del teclado
  
  if(keyIsDown(UP_ARROW))
     {
      pos = pos - 4;
     }
  if(keyIsDown(DOWN_ARROW))
     {
      pos = pos + 4;
     }
  
  square(x,y, 10,10); //pelotita
  
  
  //Movimiento de la pelotita
  
  x = x+(2 * dirX); 
  y= y+(2 * dirY);
  
  //Rebote de la pelotita
  
  if(y > height)
    {
     dirY = -1;
    }
   if(y< 0)
    {
     dirY = 1;
    }
    
  //Rebote pelotita contra el jugador 1 + puntaje
  
  if(x < 30) {
      if(y > mouseY &&  y < mouseY + 40) {
       dirX = 1;
      }
      if(x < 20) {
       x= width/2; 
       y= height/2; 
        p2++ ;
      }
    }
    
  //Rebote pelotita contra el jugador 2 + puntaje
  
   if(x> width-30)
    {
      if(y > pos && y < pos +40)
      {
       dirX = -1;
      }
      if(x > width -20)
      {
       x = width/2;  
       y= height/2;
        p1++ ;
      }
    }
    if (p1>=5){
       dirX = 0; 
       dirY= 0; 
      text ("PERDEDOR",400,200);
      text ("GANADOR",100,200);
    }
      if (p2>=5){
       dirX = 0; 
       dirY= 0; 
      text ("GANADOR",400,200);
      text ("PERDEDOR",100,200);
    }
      
  //Texto en pantalla de puntaje
  
  textSize(30);
  fill(255);
  text(p1,150,30);
  text(p2,450,30);
  textSize (15);
  text ("´R ´ para salir", 280,350);
  text ("´BARRA ESPACIADORA´ para reiniciar", 200, 380);
  
}

 function keyPressed (){
   if (key == ' '){
   p1=0; 
   p2=0;  
   dirX = 1; 
   dirY= -1; 
   }
   if (key == 'r'){
     orden = 0;
   }
 } 
 
 function primerapantalla () {
   
 textSize (15);
 background (inicio);
 
 //boton 1
 fill (255, 102, 196);
 rect (100,300,100,50);
 fill (255);
 text ("CREDITOS", 108,330);
 
 //boton 2
 fill (90,225,230);
 rect (225,300,132,50);
 fill (255);
 text ("INSTRUCCIONES", 228,330);
 
 //boton 3
 fill (255, 102, 196);
 rect (380,300,100,50);
 fill (255);
 text ("JUGAR", 400, 330);   
   
 }
 
  function instrucciones (){
 
  background (inst);
   fill (255, 102, 196);
   rect (400,360,100,30);
   fill (255);
   text ("ATRAS", 425,380);
 }
 
 function credits (){
   
   background (creditos);
   fill (255, 102, 196);
   rect (420,350,100,30);
   fill (255);
   text ("ATRAS", 440,370);
    
 }

 
 function mousePressed (){
    
   if (boton (100,300,100,50) && orden == 0 ){
     orden = 1; 
   } 
    if (boton (420,350,100,50) && orden == 1){
      orden = 0 ;
    }
    if (boton (225,300,132,50) && orden == 0 ){
      orden = 2;
    }
    if (boton (400,360,100,30) && orden == 2){
      orden = 0;
    }
    if (boton (380,300,100,50) && orden == 0){
      orden = 3;
    }
   
 }

function boton (x,y,ancho,alto) {
  
 if (mouseX > x && mouseX < x+ancho && mouseY > y && mouseY < y+alto) {
   return true;
 } else {
   return false;
 }
  
} 
