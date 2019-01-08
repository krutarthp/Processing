//gravity
float grav = 1000; //the strength of the gravity(higher = stronger gracity)


void Gravity () {

 PVector tempAcc = PVector.sub(main.pos, pos);//this gets the direction we need
 tempAcc.normalize(); //this reduces the magnitude to 1 so we can scale it
 float tempForce = grav/pow(PVector.dist(pos, main.pos), 2);

 tempAcc.mult(tempForce);


acc.add(tempAcc);

vel.add(acc);


}//end AccCalc
