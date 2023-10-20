class Principal { // aca se une el juego y el boton 

  constructor() {
    this.pantalla = 0;
    this.anchoBot = 120;
    this.altoBot = 60;
    this.bot = new Boton(0, this.altoBot, this.anchoBot, this.altoBot );
    this.j = new Jugar ();
   
  }

  dibujar() {
    text("Pantalla "+ this.pantalla, width/2, 100);
    if (this.pantalla===0) {
      background (inicio); // portada
      this.bot.dibujarBoton(0, 1, "JUGAR");
    } else if (this.pantalla==1) {
      background (255);
      j.display (); // juego 
    } 
  }
  accionarBotones() {
    if (this.bot.botonPresionado(0, this.altoBot, this.anchoBot, this.altoBot) && this.pantalla===this.bot.actual) {
      this.pantalla = this.bot.prox;
    }

}


} 
