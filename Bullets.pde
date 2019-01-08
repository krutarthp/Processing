//this is the code for the bullet tab
//Global variables
ArrayList <PVector> velB = new ArrayList <PVector>();
ArrayList <PVector> posB = new ArrayList <PVector>();


float bulletSpeed = 25;
float bulletSize = 5;


//var is for target\
PVector tpos;
//void setup() {
//  size(800, 800, P3D);
//  noCursor();
//  cursor(CROSS);
//  pos = new PVector(width/2, height/2, 0);
//  sDir = new PVector(0, -1, 0);
//  tpos = new PVector(random(0, width), (random(0, height/2)));
//}

void mousePressed() {
  if (mouseButton == LEFT) {
    posB.add(new PVector(pos.x, pos.y, pos.z));
//Shot.play();
    PVector tempv = new PVector(sDir.x, sDir.y, sDir.z).mult(bulletSpeed);
    //tempv.rotate(random(-PI/4., PI/4));
    velB.add(tempv);
  }
}



boolean detect(PVector pos1, PVector pos2, float rad) {
  boolean isFar = PVector.dist(pos1, pos2) > rad;
  return isFar;
}

void bullet() {
  for (int i = 0; i < posB.size(); i++) {
    PVector p = posB.get(i);
    PVector v = velB.get(i);

    p.add(v);

    pushMatrix();
    translate(p.x, p.y, p.z);
    fill(0, 255, 0);
    noStroke();
    sphere(bulletSize);
    popMatrix();

    if (detect(p, new PVector(width/2, height/2), width)) {
      println(p.toString() + v.toString());
      posB.remove(p);
      velB.remove(v);
    }
//    if (hitTarget(tpos, p, tsi,bulletSize)) {
////move the target
//tpos = new PVector(random(0, width), (random(0, height/2)));
////remove the bullet
//posB.remove(p);
//velB.remove(v);
////if we remove this move to the next bullet
////continue;
//    }
  }
}
float tsi=50;
void drawTarget() {
  fill(255, 00, 89);
  pushMatrix();
  translate(tpos.x, tpos.y);
  sphere(tsi);
  popMatrix();
}
boolean hitTarget(PVector target, PVector bulletPos, float targetRad,float bulletRad) {

  return target.dist(bulletPos)<targetRad+bulletRad;
}

void bullets() {
  //background(255);
  //pos.set(mouseX, mouseY, 0);
  //updatePlayer();
  //  drawPlayer();

  bullet();
  //drawTarget();
}
