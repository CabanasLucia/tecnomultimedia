// Cabañas Lucía
// tp 2 comisión 1 
// https://youtu.be/Y_NI1iF9JtE


PImage ilusion;
int colorfondo = 255; 
int cant = 6;
int cantlineas=5; 
int circcolor = 0;
int colorblanco = 255;
int colorlinea1= 0; //lineas horizontales
int colorlinea2 =0; // lineas verticales
int segundos;
PFont t; 
int tamtex = 20;



void setup (){
  
 size (800,400);
 ilusion = loadImage ("ilusion.jpg");
 t = loadFont ("miletra.vlw");

}


void draw (){
  
background (255);
   
 if (frameCount%60==0) {
    segundos ++ ;
  }
if (segundos <= 4){
  noStroke();
  fill (245,205,240);
 rect (160,100, 500,180);
textFont (t);
 text (instrucciones(tamtex),415,150);

} else {

background (colorfondo);
lineashorizontales (410,600);
lineasverticales ();
image (ilusion,0,0,400,400);



circ (600, 201, 230,cant); //funcion circulos
}

}


void circ ( int x, int y, int ancho, int cant) { //  función del circulo
  
  for (int i=0; i<cant; i++) {
  float tam = map(i, 0, cant-1, ancho, 20); //tamaño de figura

  if (resultado (i)){
    fill (circcolor);
  } else {
    fill (colorblanco);
  }
  noStroke ();
  ellipse (x, y, tam, tam);
  }
}
void lineashorizontales (int x, int y){
  
  for (int i=0; i<5; i++){
    for (int j=0; j<5; j++){
    stroke (colorlinea1);
    strokeWeight (20);
    strokeCap (PROJECT); //lineas final rectas
    line (x, i*40 ,y, i*40);
    line (600, 220+j*40, 800, 220+j*40);
 
}
}
}

void lineasverticales (){
  
  for (int i=0; i< 5; i++){
    for (int l=0; l< 5; l++){
    stroke (colorlinea2);
    strokeWeight (20);
    line (600 + i*40, 0, 600 + i*40,200);
    line (400+l*40, 200, 400 + l*40,400);
    }
  } 
}

String instrucciones (int tamtex) {
  
  textAlign (CENTER);
  textSize (tamtex); 
  fill (247,47,181);
    return ("TOCANDO EL CLICK IZQUIERDO VAN A VERSE \n CAMBIOS DE COLOR Y DE CANTIDAD. \n    TOCANDO  CUALQUIER TECLA DEL \n TECLADO VUELVE TODO A \n SU ESTADO ORIGINAL");
  
  
}

boolean resultado (int x){
  if (x%2==0){
    return true;
  }else{
    return false;
  }
}

void mousePressed (){
  
 if (mousePressed && (mouseButton == LEFT)){
   
   colorfondo = color (random (255), random (255), random (255));
   circcolor = color (random (255), random (255), random (255));
   colorlinea1 = color (random (255), random (255), random (255));
   colorlinea2 = color (random (255), random (255), random (255));
   colorblanco = color (random (255), random (255), random (255));
   cant ++;
 
 }
}

void keyPressed (){
  
  if (keyPressed){
    colorfondo = 255;
    circcolor = 0;
    colorlinea1 = 0;
    colorlinea2 = 0;
    colorblanco = 255;
    cant = 6;

  }
}


  
