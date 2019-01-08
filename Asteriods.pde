ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>(); 
Asteroid main;

PShape model;

PImage texture;
PVector center;

void AsteroidMainSetup() {
  //cam = new PeasyCam(this, width, height, 0, 600);
  center = new PVector(width/2, height/2);
  texture = loadImage("texture.jpg");
  model = loadShape("asteroid4.obj");
  model.setTexture(texture);
  main = new Asteroid(asteroids, 5., model, center, new PVector(),false);
  //asteroids.add(main);
  //asteroids.add(new Asteroid(asteroids, 20., model, new PVector(random(0, width), random(height, 0)), new PVector()));
}


void Asteriodrespond () {
// new PVector(mouseX, mouseY, 0);
if(random(100)>995){
  new Asteroid(main,  new PVector(width*0.7, height*0.7));
}
  //if (mouseButton == LEFT) {
  //}
}

void AsteroidMainDraw() {
  for (int i =0; i < asteroids.size(); i++) {
    asteroids.get(i).update();   
  }
  //cam.lookAt(main.pos.x, main.pos.y, main.pos.z, 600, 0);
}
