// asteriod and others coliding
//void dastsasts() { 
//  for (int i = 0; i < astspos.size(); i++) {
//    for (int j = 0; j < astspos.size(); j++) {
//      if(astspos.get(i) == astspos.get(j)) {
//          astspos.get(j).x = random (0, width);
//          astspos.get(j).y = random (0, height);
//      }
//    }
//  }
//}

int astSiz = 30;

void dastS() {
  if (dist(center.x, center.y, pos.x, pos.y) < astSiz) {
    pos.x = width/2;
    pos.y = height-100;
  }
}

// main asteriod and other small ones
//void dastsast() {
//  for (int i = 0; i < astspos.size(); i++) {
//    if (dist(center.x, center.y, astspos.get(i).x, astspos.get(i).y) < (astSiz*2)) {
//      astspos.get(i).x = random(0, width);
//      astspos.get(i).y = random(0, height);
//    }
//  }
//}


// asteriod small ones with ths ship
//void dastsS() {
//  for(int i = 0; i < astspos.size(); i++) {
//  if (dist(pos.x, pos.y, astspos.get(i).x, astspos.get(i).y) < astsSiz) {
//  astspos.get(i).x = random(0, width);
//  astspos.get(i).y = random(0, height);
//  lives--;
//  pos.x = width/2;
//  pos.y = height-100;
//    }
////  }
//}
