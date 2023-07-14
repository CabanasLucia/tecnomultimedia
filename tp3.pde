// Cabañas Lucía 
// Comisón 1 - tp 3
// https://youtu.be/06IiwxOVy1Q


int c = 14;
PImage[] imagenes = new PImage[c];
int [] pantallas = new int [c];
int orden;
PFont tipografia;

String [] texto = {"En una ciudad a las 8 pm en \n el año 2052, existía un hombre llamado \n Leonard Mead",
"Esa noche el señor Mead \n tiene dos posibles planes \n para hacer: \n A)- IR CAMINANDO HACIA EL \n MAR MUERTO  \n B)- SE QUEDA EN SU CASA \n MIRANDO LA TV \n COMO SIEMPRE",
"Salió y la calle como \n habitualmente estaba vacia, \n todos en el pueblo estaban \n encerrados en sus casas",
"Leonard caminaba solo ya que él \n era el único en el pueblo que no estaba \n mirando la televisión",
"La policia lo \n encuentra en la calle y lo llevan al \n Centro Psiquiatrico  por no \n ser como el resto \n de la sociedad que disfruta \n estar mirando televisión",
"Era ya la medianoche cuando de \n repente se corta la luz \n y Mead tiene dos \n actividades distintas:\n  A)- SE QUEDA EN SU CASA \n LEYENDO UN LIBRO \n B)- SALE A LA CALLE A VER \n QUÉ PUEDE HACER",
"Leonard Mead\n estuvo leyendo durante mucho\n tiempo a la luz de la vela.\n Él hacia 20 años que\n había dejado de leer\n por culpa\n de la sociedad moderna",
"Él no recordaba \ncuanto amaba leer,\npor ese motivo se \nquedó casi toda \nla noche disfrutando \nde diferentes novelas \nde ciencia ficción. \nFIN",
"Cuando sale se encuentra \ncon la señora Smith, \nuna mujer súper agradable \ny piensa: \n A)- LA SALUDA Y HABLA CON ELLA \n B)- LA IGNORA Y SIGUE CAMINANDO \nSOLO HACIA EL BOSQUE",
"Charlaron por horas y\n terminaron jugando a las cartas toda\n la noche en la casa de Mead . \nFIN",
"Cuando iba caminando \n solo escucha un ruido detrás \nde unos árboles. Entonces se acerca \na ver qué era...",
"Era un perro que el señor \n Leonard Mead adopta y le pone \n de nombre Peter. \nFIN" }; 


void setup(){
  
size(600,600);
  
imagenes [0]= loadImage("imagen13.jpg");
imagenes [1]= loadImage("imagen14.jpg");
imagenes [2]= loadImage("imagen1.jpg");
imagenes [3]= loadImage("imagen2.jpg");
imagenes [4]= loadImage("imagen3.jpg");
imagenes [5]= loadImage("imagen4.jpg");
imagenes [6]= loadImage("imagen5.jpg");
imagenes [7]= loadImage("imagen6.jpg");
imagenes [8]= loadImage("imagen7.jpg");
imagenes [9]= loadImage("imagen8.jpg");
imagenes[10]= loadImage("imagen9.jpg");
imagenes [11] = loadImage ("imagen10.jpg");
imagenes [12] = loadImage ("imagen11.jpg");
imagenes [13] = loadImage ("imagen12.jpg");



for(int i=0;i<14;i++){
 pantallas[i] =0;
 
 
 }
 

tipografia = loadFont ("miletra.vlw");
textFont (tipografia);

 
}


void draw (){
 
  
if (pantallas [0] == 0 && orden == 0){
  inicio (imagenes [0]);
  
  fill (237,180,220);
  rect (200,500,180,50);
  rect(400,500,180,50);
  fill (0);
  textSize (30);
  text ("CRÉDITOS", 420, 535);
  text ("INICIO", 235,535);

  
} else if (pantallas [1] == 0 && orden == 1){
  inicio (imagenes [1]);
  

  fill (237,180,220);
  rect (40,50,100,40);
  fill (0);
  textSize (25);
  text ("ATRÁS", 50,80);

  
} else if (pantallas [2] == 0 && orden == 2){
  base (texto [0], imagenes [2]);
  
  
  fill (237,180,220);
  rect (400,500,180,50);
  fill (0);
  textSize (30);
  text ("SIGUIENTE", 420, 535);

} else if (pantallas [3] == 0 && orden == 3){
  base (texto [1], imagenes [3]);
  
  
  textSize(30);
  fill (237,180,220);
  rect (80,300,50,50);
  rect(500,300,50,50);
  fill (0);
  text ("A", 95,335);
  text ("B", 515,335);
  
} else if (pantallas [4] == 0 && orden == 4){
  base (texto [2], imagenes [4]);
  
   
  fill (237,180,220);
  rect (400,500,180,50);
  fill (0);
  textSize (30);
  text ("SIGUIENTE", 420, 535);
  
  
} else if (pantallas [5] == 0 && orden == 5){
  base (texto [3], imagenes [5]);
  
  fill (237,180,220);
  rect (60,500,180,50);
  fill (0);
  textSize (30);
  text ("SIGUIENTE", 80, 535);
  
} else if (pantallas [6] == 0 && orden == 6){
  base (texto [4], imagenes [6]);
  
  fill (237,180,220);
  rect (400,500,180,50);
  fill (0);
  textSize (30);
  text ("REINICIAR", 420, 535);
  
} else if (pantallas [7] == 0 && orden ==7){
  base (texto [5], imagenes [7]);
  
  fill (237,180,220);
  rect (200,500,50,50);
  rect(400,500,50,50);
  fill (0);
  textSize (30);
  text ("B", 420, 535);
  text ("A", 220,535);

  
} else if (pantallas [8] == 0 && orden == 8){
  base (texto [6], imagenes [8]);
  
  fill (237,180,220);
  rect (400,500,180,50);
  fill (0);
  textSize (30);
  text ("SIGUIENTE", 420, 535);
  
} else if (pantallas [9] == 0 && orden == 9){
  base (texto[7], imagenes [9]); 
  
  fill (237,180,220);
  rect (200,500,180,50);
  fill (0);
  textSize (30);
  text ("REINICIAR", 220, 535);
  
  
} else if (pantallas [10] == 0 && orden == 10){ // sra smith
  base (texto [8], imagenes [10]);
  
  fill (237,180,220);
  rect (200,500,50,50);
  rect(300,500,50,50);
  fill (0);
  textSize (30);
  text ("B", 320, 535);
  text ("A", 220,535);
  
} else if (pantallas [11] == 0 && orden == 11){ // cartas
  base (texto [9], imagenes [11]);
  
  fill (237,180,220);
  rect (300,500,180,50);
  fill (0);
  textSize (30);
  text ("REINICIAR", 320, 535);
  
} else if (pantallas [12] == 0 && orden == 12){ // bosque
  base (texto [10], imagenes [12]);
  
  fill (237,180,220);
  rect (100,500,180,50);
  fill (0);
  textSize (30);
  text ("SIGUIENTE", 120, 535);
  
  
} else if (pantallas [13] == 0 && orden == 13){ // perro 
  base (texto [11], imagenes [13]);
  
  fill (237,180,220);
  rect (300,500,180,50);
  fill (0);
  textSize (30);
  text ("REINICIAR", 320, 535);
  
} 
  
}


void base (String texto, PImage imag){
  
 imag.resize (600,600);
 image (imag,0,0);
 fill (255);
 textSize (25);
 text(texto,50,50);

    
 } 
 
 void inicio (PImage fondo){
   
 fondo.resize (600,600);
 image (fondo,0,0);

 }
 
 
 void mousePressed(){

if (boton(400,500,180,50) && orden == 0){
  orden = 1;
}

if (boton (200,500,180,50) && orden == 0){
  orden = 2;
} 

if (boton (40,50,100,40) && orden == 1){
 orden = 0;
}

if (boton(400,500,180,50) && orden == 2){
  orden = 3;
} 

if (boton(80,300,40,40) && orden == 3){
  orden = 4; 
}

if (boton(500,300,40,40) && orden == 3){
  orden = 7;
}

if (boton (400,500,180,50) && orden == 4){
  orden = 5;
}

if (boton (60,500,180,50) && orden == 5){
  orden = 6;
}

if (boton (400,500,180,50) && orden == 6){
  orden = 0;
}

if (boton (400,500,50,50) && orden == 7){
  orden = 10;
 }
 
 if (boton (200,500,50,50) && orden == 7){
  orden = 8;
 }
 
 if (boton (400,500,180,50) && orden == 8){
   orden = 9;
 }
 
 if (boton (200,500,180,50) && orden == 9){
   orden = 0;
 }
 
 if (boton (200,500,50,50) && orden == 10){
   orden = 11;
 }
 
 if (boton (300,500,50,50) && orden == 10){
   orden = 12;
 }
 
 if (boton (300,500,180,50) && orden == 11){
   orden = 0;
 }
 
 if (boton (100,500,180,50) && orden == 12){
   orden = 13;
 }
 
 if (boton (300,500,180,50) && orden == 13){
   orden = 0;
 }
 
}




boolean boton(int x, int y, float ancho, int alto) {
  float centroX = x + ancho / 2;
  float centroY = y + alto / 2;
  float distancia = dist(mouseX, mouseY, centroX, centroY);
  float radio = min(ancho, alto) / 2;

  if (distancia < radio) {
    return true;
  } else {
    return false;
  }
}




 
