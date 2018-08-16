import beads.*;
import org.jaudiolibs.beads.*;
import codeandchords.Module;

Module module;

int  scaleDegree;

void setup()
{
  //Set the size of the window
  fullScreen();
  
  //Create a new module and call the setupModule(int numInputs) method
  module  = new Module(this);
  module.setupModule(1);
  
  module.setColor0forAllInputs(255, 255, 255);
  
  rectMode(CENTER);
}

void draw()
{
  //Draw the background
  background(0);
  
  //Set the bar height to equal the amplitude
  int amp = (int) module.getAmplitude(0);
  
  module.setColor(0, 0);
  fill(module.getRed(0), module.getGreen(0), module.getBlue(0));
  
  //Draw the bar.  barHeight is negative because the positive y direction is down
  //    so the height must be negative to make the bar go up
  rect(width / 2, height / 2, 400, 400); 
}
