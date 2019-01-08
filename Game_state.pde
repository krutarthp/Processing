//game state example

int state = 0; //used to determine which state the program is in


void pregame(){
  if(keyPressed && key == ' '){
   state=1; 
  }
}

void game(){
    text("There", width/2, height/2);

}

void endgame(){
  
}

void state(){
  
  text("Hi", width/2, height/2);
 //0 - pregame, 1 - game, 2 - endgame
 
 
 if (state == 0){
 pregame();
 }
 
  else if (state == 1){
 game();
  }
  
  
 else if (state == 2){
 endgame();
 }
 
}
