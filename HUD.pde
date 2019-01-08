
import peasy.PeasyCam;


//
// screen-aligned, orthographic HUD-scope
//

PImage hudCenter ;

//PeasyCam cam;

public void settings() {
  size(800, 600, P3D);

  smooth(8);
}

//public void setup() {
//  cam = new PeasyCam(this, 400);
//  hudCenter = loadImage("backdrop2.png");
//    imageMode(CENTER);
//}

public void hud() {
  //rotateX(-.5f);
  //rotateY(-.5f);
  //lights();
  //scale(10);
  //strokeWeight(1 / 10f);
  //background(0);
  //fill(96, 255, 0);
  //box(30);
  //pushMatrix();
  //translate(0, 0, 20);
  //fill(0, 96, 255);
  //box(5);
  //popMatrix();

  cam.beginHUD();
  fill(50, 250,50,  128);
  rect(0, 0, width, 30);
  fill(255);
  //ellipse(width/2., height/2., 70,70);
  text("" + nfc(frameRate, 2), 10, 18);
  float [] rots = cam.getRotations();
  for (int i = 0; i < rots.length; i++){
     text(rots[i], width/2 + i *50, 18);
  }
  //image(hudCenter, width/2, height/2, 100, 100);
  cam.endHUD();
}
