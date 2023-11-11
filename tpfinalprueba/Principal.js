class Principal {

  constructor() {
    this.pantalla = 0;
    this.fondo = new Pantallas ();
    this.anchoBot = 120;
    this.altoBot = 60;
    this.bot1 = new Boton(200, 300, this.anchoBot, this.altoBot);
    this.bot2 = new Boton(200, 400, this.anchoBot, this.altoBot);
    this.bot3 = new Boton (400,500, this.anchoBot, this.altoBot);
    this.bot4 = new Boton (200,500,this.anchoBot, this.altoBot);
    this.bot5 = new Boton (50, 300, this.anchoBot, this.altoBot);
    this.bot6 = new Boton (50, 400, this.anchoBot, this.altoBot);
  }
  
    dibujar() {
    if (this.pantalla===0) {
      background (this.fondo.dibujarPantalla (13)); // portada
      this.bot1.dibujarBoton(0, 1, "INICIO");
      this.bot2.dibujarBoton (0, 2, "CREDITOS");
    } else if (this.pantalla ===1) {
      background (this.fondo.dibujarPantalla (1));
      this.bot4.dibujarBoton (1,3,"SIGUIENTE");
    } else if (this.pantalla === 2){
      background (this.fondo.dibujarPantalla (0));
       this.bot3.dibujarBoton(2, 0, "VOLVER");
    } else if (this.pantalla === 3){
      background (this.fondo.dibujarPantalla (2));
      this.bot5.dibujarBoton (3,4,"A");
      this.bot6.dibujarBoton (3,8, "B");
    } else if (this.pantalla === 4){
      background (this.fondo.dibujarPantalla (4));
    } else if (this.pantalla === 8){
      background (this.fondo.dibujarPantalla (6));
    }
    
    }
  
  accionarBotones() {
    if (this.bot1.botonPresionado(200, 300, this.anchoBot, this.altoBot) && this.pantalla===this.bot1.actual) {
      this.pantalla = this.bot1.prox;
    }
     if (this.bot2.botonPresionado(200,400, this.anchoBot, this.altoBot) && this.pantalla===this.bot2.actual) {
     this.pantalla = this.bot2.prox;
    }
      if (this.bot3.botonPresionado(400,500, this.anchoBot, this.altoBot)&& this.pantalla===this.bot3.actual) {
      this.pantalla = this.bot3.prox;
    }
    if (this.bot4.botonPresionado(200, 500, this.anchoBot, this.altoBot) && this.pantalla===this.bot4.actual) {
      this.pantalla = this.bot4.prox;
    }
     if (this.bot5.botonPresionado(50, 300, this.anchoBot, this.altoBot) && this.pantalla===this.bot5.actual) {
      this.pantalla = this.bot5.prox;
    }
     if (this.bot6.botonPresionado(50, 400, this.anchoBot, this.altoBot) && this.pantalla===this.bot6.actual) {
      this.pantalla = this.bot6.prox;
    }
}

}
