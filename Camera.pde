//import peasy.*;

//PeasyCam cam;
//Asteroid main;//main is the place holder
//ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
//PShape model;
//PVector center;
//PImage texture;

//void setup() {
//  size(900, 900, P3D);
//  init();
//}
//void init() {
//  cam = new PeasyCam(this,width,height,0,600);
//  center = new PVector(width/2, height/2);
//  texture = loadImage("texture4.jpg");
//  model = loadShape("asteroid4.obj");
//  model.setTexture(texture);
//main = new Asteroid(asteroids, 20., model, center, new PVector());
//  asteroids.add(main);
//    //asteroids.add(new Asteroid(asteroids, 20., model,  new PVector(random(0,width),random(0,height)),new PVector()));

//}
//void mouseClicked(){
//  PVector mouse = new PVector (mouseX,mouseY,0);
//if(mouseButton == LEFT){
//asteroids.add(new Asteroid(main,mouse));
//  //asteroids.add(new Asteroid(asteroids, 20., model, center, new PVector()));

//}
//}
//void draw() {
//  background(0);
//  for (int i = 0; i<asteroids.size(); i++) {
//    asteroids.get(i).update();
//  }
//  cam.lookAt(main.pos.x,main.pos.y,main.pos.z,600,0);
//}
