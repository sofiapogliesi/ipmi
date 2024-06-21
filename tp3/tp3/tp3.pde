//Sofía Pogliesi
//TP1 COM5

// https://youtu.be/spe-PzId5rQ

PImage circulo; 
float posx,posy; 
color fondo; 

void setup(){
  size(800,400);
  circulo = loadImage("circulo.jpg");
  noStroke(); 
  posx = 570;
  posy = 195; 
  fondo = color(255); 
}
  
  void draw(){
    background(fondo);
    image(circulo,70,42,300,300); 

  for(int i=300; i>=30; i -=30){ 
    if(i% 60==0) {
      fill(255);
    }
    else {
      fill(0); 
    }
    ellipse(posx,posy,i,i);
  }
  
  if(mousePressed){
  for(int i=300; i>=30; i -=30){ 
    if(i% 60==0) {
      fill(255);
    }
    else {
      fill(random(256),random(256),random(256)); 
    }
    ellipse(posx,posy,i,i);
  }
  }
  
  if(keyPressed){
    if(key == 's'){
      posx -=5; 
      if(posx > width) posx = 0; 
    }
    if(key == 'd'){
      posx +=5; 
      if(posx < 0) posx = width; 
    } 
    if(key == 'f'){
      posy -=5;
      if(posy < 0) posy = height;
  }
  if(key == 'g'){
    posy +=5;
    if(posy > height) posy = 0;
  }
  }
  }
  
  void mouseClicked(){
    fondo = color(random(256),random(256),random(256)); 
  }
  void keyPressed(){
    if(key == 'a'){
    fondo = color(255); 
    posx = 570;
    posy = 195;
  }
  }
