// Cabañas Lucia
// tp final comision 1


let principal;
let personaje; 
let autito;

function preload (){
  autito = loadImage ('data/auto.png');
  personaje = loadImage ('data/personaje.png');
  
}

function setup() {
  createCanvas(600, 600);
  principal = new Principal();
 
  
}

function draw() {
  background(100);
  principal.dibujar();
}

function keyPressed() {
  
  principal.moverPersonaje();
 
}

function mousePressed() {
  principal.accionarBotones();
}
