// Cabañas Lucía
//tp0 Comisión 1

PImage paisaje;
paisaje = loadImage ("paisaje.png");
size(800,400);


background (64,81,219);
noStroke ();
image (paisaje, 0,0,400,400);



//arcoiris
fill (245,101,94);
circle (600,230,400);
fill (235,242,42);
circle (600,230,380);
fill (35,142,26);
circle (600,230,360);
fill (87,221,227);
circle(600,230,340);
fill (120,129,209);
circle(600,230,320);


//montañas 
fill (23,67,5);
rect (400,250,300,200);
triangle (700,250, 800,300,600,300);

//pasto
fill (18,116,36);
rect (400,300,400,150);

//árbol
rectMode (CENTER);
fill (90,24,21);
rect (700,300,9,100);
fill (75,149,101);
ellipse (700,200,70,110);

//caminos
strokeWeight (13);
stroke(126,89,28);
line(645,305,725,400);
line (620,305,700,400);
