//Cabañas Lucía
// tp 1 comisión 1

int segundos;
PImage laboca1;
PImage laboca2;
PImage laboca3;
PImage laboca4;
PImage laboca5;
PFont t;
int m = 600;
int p = 600;
int f = -100; 
float ts = 1;
int c = 150;
float opacidad = 255;

void setup (){
  
 size (640,480);
 t = loadFont ("fuentenueva.vlw");
 textSize (20);
 textFont (t);
 textAlign (CENTER); 
 laboca1 = loadImage ("laboca1.jpg");
 laboca2 =loadImage ("laboca2.jpg");
 laboca3 = loadImage ("laboca3.jpg");
 laboca4= loadImage ("laboca4.jpg");
 laboca5 = loadImage ("laboca5.jpg");

}

void draw (){
  background (0);
  println (segundos);
  if (frameCount%60==0) {
    segundos ++ ;
  }
  if (segundos <= 7) {
    image (laboca1, 0, 0, width, height);
    text ("CAMINITO ES UN CALLEJÓN, \n MUSEO Y UN PASAJE, DE GRAN VALOR CULTURAL\n Y TURÍSTICO, UBICADO EN EL BARRIO DE \n LA BOCA DE LA CIUDAD DE \n BUENOS AIRES, ARGENTINA", width/2, m);
     if (m > 150){
    m --;
  } 
  } else if (segundos > 7 && segundos <= 13){
    image (laboca2, 0,0, width,height);
    fill (255); 
    text ("LAS CASAS DE MADERA Y CHAPA \n QUE TIENEN SU FRENTE AL CAMINITO, \n RESPONDEN AL ESTILO DEL \n TRADICIONAL CONVENTILLO", p, height/2);
    if (p > 320){
      p --;
    }
  
  } else  if (segundos > 13 && segundos <= 20){
  image (laboca3,0,0, width, height);
  fill (255);
  textSize (ts);
  text (" EL LUGAR ADQUIRIÓ SIGNIFICADO CULTURAL \n DEBIDO A QUE INSPIRÓ LA MÚSICA DEL \n FAMOSO TANGO CAMINITO", width/2,height/2);
  if (ts <= 20){
  ts = ts+0.1 ;
  }
  
  } else if (segundos > 20 && segundos <= 30){
    image (laboca4, 0,0, width, height);
    fill (255);
    text ("SU TRAYECTO SINUOSO SE DEBE A QUE \n ORIGINARIAMENTE FLUÍA \n POR ALLÍ UN ARROYO QUE \n DESAGUABA EN EL RIACHUELO, Y QUE DEBÍA \n CRUZARSE POR UN PEQUEÑO PUENTE", f, height/2);
    if (f < 320) {
      f ++;
    }
  
  } else {
  image (laboca5, 0,0 , width, height);
  fill (255,255,255, opacidad);
  text ("CAMINITO ES UN AGRADABLE PASEO \n PARA CONOCER LOS ORÍGENES DEL TANGO Y \n ADMIRAR LAS DIFERENTES \n OBRAS ARTÍSTICAS QUE SE EXPONEN", c, height/2);
 if (c >130){
   c ++;
 } 
 if (c > 250){
   opacidad --;
 } 
  }
    
if (segundos >= 38) {
  fill (0);
  rectMode(CENTER);
  rect (320, 240, 200, 50);
  textSize (20);
  fill (255);
  text ("REINICIAR", 320, 240);  
} 
}
void mousePressed (){
  
  if (mouseX > 120 && mouseY < 320 + 200 && mouseY > 240 && mouseY < 240 + 50) {
    m =600;
    p=600;
    textSize (20);
    ts = 1;
    f= -100;
    c = 150;
    opacidad = 255;
    segundos= 0;
  } 
  
}
