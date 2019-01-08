import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer row;
//AudioPlayer Shot;

void MusicSetup () {
  minim = new Minim (this);
  row = minim.loadFile("row.mp3");
 // Shot = minim.loadFile("Shot.mp3");
  
  
  
  
  
}
