class Jugar {
  
  constructor() {
    this.estado = 0;
    this.per = new Personaje(width-100,520, 50, 100, 3);
    this.cars = [];
    for (let i=0; i<7; i++) {
      this.cars[i] = new Auto(0, 10+i*100, random(80, 100), random(40, 60));
    }
  }
  
  display() { // el juego en si mismo
    if (this.estado ==0){
    background (200);
    for (let i=0; i<7; i++) {
      this.cars[i].dibujarAuto();
      this.cars[i].mover();
    }
    this.per.dibujar();
    this.arrollamiento();
    this.textoVida ();
    this.perder ();
    this.ganar ();
  }
 }
  
  arrollamiento() { // para detectar si se pierde vida (condicion con el choque)
    for (let i=0; i<7; i++) {
      if (this.choque(this.cars[i].ax, this.cars[i].ay, this.cars[i].ancho, this.per.px, this.per.py, this.per.ancho, this.per.alto)&&this.cars[i].chocador) {
       background(200, 200, 0);
       this.cars[i].chocador = false;
       this.per.vidas ();
      }
    }
  }
  
  choque(x, y, autoAncho, px, py, pancho, alto) { // me devuelve la condicion para hacer poder perder vida x arrollamiento (posicon y ancho del auto + posicion, ancho y alto del personaje)
    return x+autoAncho>px && x<px+pancho && y+autoAncho/2>py && y<py+alto;
  }

  moverPersonaje(tecla) {
    this.tec = tecla;
    if (this.tec === UP_ARROW) {
      this.per.moverArriba();
    } else if (this.tec === DOWN_ARROW) {
      this.per.moverAbajo();
    } else if (this.tec === RIGHT_ARROW) {
        this.per.moverDer ();
    } else if (this.tec === LEFT_ARROW){
        this.per.moverIzq ();
    }
  }

  textoVida (){
    textSize (20);
    fill (0);
    text ("vidas: " + this.per.vida, 80,30); 
  }
  perder (){
    if (this.per.vida <= 0 ){
      this.estado = 7;
    }
  }
  
ganar (){
  if (this.per.py <= 0){
    this.estado = 8;
  }
}

getEstado(){
  return this.estado;
  }
}
