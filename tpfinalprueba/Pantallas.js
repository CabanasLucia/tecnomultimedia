class Pantallas {
  
  constructor (){
    this.load ();
  }
  
load (){
   this.imagenes = [];
    
   for (let i = 0; i < 14; i++) {
      this.imagenes[i] = loadImage("data/imagen"+i+".jpg");
   }
      
}
 
   dibujarPantalla(numero, texto) {
    return this.imagenes[numero]; // Devuelve la imagen correspondiente al número de pantalla
  }
  
}
