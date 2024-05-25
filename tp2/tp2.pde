PImage thgo, thga, thgu;
PFont fuente;
int pantalla, tiempo, diametro;
int miVariable = frameCount;

void setup() {
  size(640, 460);
  fuente = loadFont("fuente.vlw");
  textFont(fuente);
  textSize(22);
  textAlign(LEFT, TOP);
  thgo = loadImage("thgo.png");
  thga = loadImage("thga.jpg");
  thgu = loadImage("thgu.jpg");
  tiempo = 0;
  pantalla = 0;
  diametro = width/10;
  println(frameCount);
}

void draw() {
  background(255);
  if (pantalla == 0) {
    if (mouseX <= 255) {
      
    }
    image(thgo, miVariable, 0, 580, 300);
    push();
    fill(0);
    text("Entre los años 2008-2010 se publicaron tres libros, \n una trilogía llamada 'Los Juegos Del Hambre', \n escritos por Suzanne Collins...", miVariable, 320);
    pop();
  }
  if (pantalla == 1) {
    image(thga, miVariable, 0, 300, 300);
    push();
    fill(0);
    text("Pasaron los años, la trilogía se hizo famosa,\n y por su aniversario se publicó una tanda \n con una nueva edición de los mismos...", miVariable, 300);
    pop();
  }
  if (pantalla == 2) {
    image(thgu, miVariable, 0, 220, 300);
    push();
    fill(0); 
    text("Impulsada por el gran éxito que tuvo su trilogía,  \n Suzanne Collins publica un cuarto libro,  \n el cual está narrado por un personaje diferente \n y ambientado en el pasado.", miVariable, 320);
    pop();

    push();
    circle(width/2, height/2, diametro);
    fill(0);
    textSize(12);
    textAlign(CENTER, CENTER);

    text("Reiniciar", width/2, height/2 );
    pop();
  }
  tiempo++;
  if (tiempo >= 180) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    }
  }
  miVariable = frameCount / 4; 
  println(miVariable); 
}
void mouseClicked() {
  if (pantalla > 2) {
    pantalla = 0;
  }

  if (dist(mouseX, mouseY, width/2, height/2) < diametro/2) {
    pantalla = 0;
    tiempo = 0;
  }
}
