import beads.*;
import org.jaudiolibs.beads.*;
import codeandchords.*;

Module module;

String myName;

void setup()
{
  //Set the size of the window
  fullScreen();
  
  //Create a new module and call the setupModule(int numInputs, boolean isRealTimeInput) method
  this.module  = new Module(this);
  this.module.setupModule(1, true);
 
  this.textAlign(CENTER, CENTER);
  
  //Write your name here!!!
  this.myName = "Hannah";
  
    // Set the colors:
  module.setColor0forAllInputs(120, 200, 75);
  module.setColor1forAllInputs(200, 52, 167);
  module.setColor2forAllInputs(205, 117, 198);
  module.setColor3forAllInputs(117, 172, 198);
  module.setColor4forAllInputs(222, 137, 157);
  module.setColor5forAllInputs(192, 208, 208);
  module.setColor6forAllInputs(143, 154, 208);

}

void draw()
{
  //Draw the background
  background(0);
  
  int musicalNote = this.module.getMusicalNote(0);
  this.module.setColor(musicalNote, 0);
  
  int r = this.module.getRed(0);
  int g = this.module.getGreen(0);
  int b = this.module.getBlue(0);
  
  //Setting the pitch color
  fill(r,g,b);
  
  textSize(200);
  
  //Drawing your name!
  text(this.myName, width/2, height/2);
  
  //Draw more shapes here!!!
  
  
}
