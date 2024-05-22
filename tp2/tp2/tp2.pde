int miVariable1 = 1000; 
int miVariable2 = 1000; 
int miVariable3 = 1000; 
String texto1 =  "Entre los años 2008-2010 se publicaron tres libros, \n una trilogía llamada 'Los Juegos Del Hambre', \n escritos por Suzanne Collins...", 
texto2 = "Pasaron los años, la trilogía se hizo famosa,\n y por su aniversario se publicó una tanda con una nueva edición de los mismos...",
texto3 = "Impulsada por el gran éxito que tuvo su trilogía,  \n Suzanne Collins publica un cuarto libro,  \n el cual está narrado por un personaje diferente \n y ambientado en el pasado.";  
PImage thgo, thga, thgu; 
PFont fuenteNueva; 
int pantalla, tiempo, diametro; 

void setup(){
  size(800,800);
  textSize(30); 
  background(255);
  println(frameCount);
 thgo = loadImage("thgo.png");  
 thga = loadImage("thga.jpg");
 thgu = loadImage("thgu.jpg");
 fuenteNueva = loadFont("cambriabold.vlw"); 
 textFont(fuenteNueva); 
 tiempo = 0; 
 pantalla = 0; 
 diametro = width/10; 
 
}

void draw(){ 
  if(pantalla == 0) {
    image(thgo,0,0,width,height); 
    
    push(); 
  miVariable1 = frameCount; 
  println(miVariable1); 
  background(255); 
  image(thgo,miVariable1,200,600,300); 
  fill(0);
  text(texto1,miVariable1,100); 
  pop(); 
  }
  if(pantalla == 1) {
    image(thga,0,0,width,height); 
    push(); 
    
  miVariable2 = frameCount;  
  println(miVariable2); 
  background(255); 
  image(thga,miVariable2,200,600,300);
  fill(0); 
  text(texto2,miVariable2,100);
  pop(); 
  }
  if(pantalla == 2) {
    image(thgu,0,0,width,height); 
    push();
    
  miVariable3 = frameCount; 
  println(miVariable3); 
  background(255); 
  image(thgu,miVariable3,250,300,400);
  fill(0); 
  text(texto3,miVariable3,100); 
  pop(); 
  } 
}

{
tiempo++; 
if(tiempo >= 255) {
  tiempo = 0; 
  if(pantalla != 2) {
    pantalla++; 
  }
}
}

void mouseClicked() {
  pantalla++;
  if(pantalla > 2) {
    pantalla = 0; 
  }
}
    
  
  
