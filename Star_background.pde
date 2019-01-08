import peasy.*;
PeasyCam camera;

int axSize = 100;//the number of stars
//float mult = 2000;//the number you multiply the 3D sphere on which the stars exist by
float ize = 3;//a number we select to use as the size of the spheres

PVector [] pos2 = new PVector[axSize];//positions of the spheres
//PVector midPoint;

void backgroundsetup() {

  midPoint = new PVector(width/2, height/2, mult/2);

  camera = new PeasyCam(this, midPoint.x, midPoint.y, midPoint.z, 0);

  for (int i = 1; i < axSize; i++) {
    pos2[i] = (PVector.random3D());
    pos2[i].mult(mult);
    pos2[i].add(midPoint);
  }
}

void star() {
  

  for (int i = 1; i < axSize; i++) {
    pushMatrix();
    noStroke();
    fill(255, 255, 0);
    translate(pos2[i].x, pos2[i].y, pos2[i].z);//move the origin to where we want the sphere
    sphere(random(ize, ize+2));
    popMatrix();
  }
}
