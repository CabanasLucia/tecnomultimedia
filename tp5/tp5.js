// Cabañas Lucía
//tp 5 com 1
//https://youtu.be/B47ObUnT9HQ

let p; 
let j;
let ganaste;
let perdiste;
let inicio;
let personaje; 
let autito;

function preload (){

 inicio = loadImage ('data/inicio.jpg');
 ganaste = loadImage ('data/ganaste.jpg');
 perdiste = loadImage ('data/perdiste.jpg');
 personaje = loadImage ('data/personaje.png');
 autito = loadImage ('data/auto.png');
   
}
function setup() {
  createCanvas(600, 800);
  p = new Principal();
  j = new Jugar ();
}


function draw() {
  p.dibujar();
  
}
function keyPressed() {
  j.moverPersonaje(keyCode);
  j.reiniciar (key); 

  
}
function mousePressed() {
  p.accionarBotones();
}
