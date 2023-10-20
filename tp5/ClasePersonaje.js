class Personaje {
  constructor(px, py, ancho, alto,vida) {
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
    this.vida = vida;
    this.tocar = false;
    this.ganaste = loadImage ('data/ganaste.jpg');
    this.personaje = loadImage ('data/personaje.png');
    this. perdiste = loadImage ('data/perdiste.jpg');
  }
  
  dibujar() {
    image(personaje,this.px,this.py, this.alto,this.ancho);
  }
  moverArriba() {
    this.py -= 20;
    
  }
  moverAbajo() {
    if (this.py < height-90){
    this.py += 20;
    }
  }
 
  moverIzq (){
    if (this.px > 0){
   this.px -=20;
    }
  }
   moverDer(){
     if (this.px < width-60){
   this.px +=20;
     }
  }
  vidas (){
    this.vida --; 
  }
  gano (){
    if (this.py <= 0){
      this.tocar = true;
      background (ganaste);
    }
}
perdio (){
  if (this.vida <= 0){
  background (perdiste); 
  }
}
}
