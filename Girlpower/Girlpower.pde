// These imports give us access to sound analysis and Code+Chords functions:
import beads.*;
import org.jaudiolibs.beads.*;
import codeandchords.Module;

// This Module is what will give us access to the Code+Chords functions:
Module module;

// This variable will be set to the note that is currently being sung:
int  musicalNote;


  
  
int sceneNum;  
void setup()
{
  sceneNum=1;
  // Set the display size to the full screen
  fullScreen();
  
  // Initialize the Module for 6 inputs:
  module  = new Module(this);
  module.setupModule(6, false);  // false: use recorded inputs; true: use microphones

  
  // Set the attack and release values.  Default value is 200.
  module.setAttack(0, 400);
  module.setRelease(0, 600);
}

void draw()
{
  if(sceneNum==1)
  {
  // Set a background color for section 1:
  background(0, 0, 0);
  
  // set colors for the notes for section 1:
  module.setColor0forAllInputs(10, 13, 100);
  module.setColor1forAllInputs(255, 99, 80);
  module.setColor2forAllInputs(50, 155, 88);
  module.setColor3forAllInputs(91, 5, 91);
  module.setColor4forAllInputs(246, 0, 141);
  module.setColor5forAllInputs(252, 217, 8);
  module.setColor6forAllInputs(200, 10, 50); 
  
  // Get the current note for input 0:
  musicalNote  = module.getMusicalNote(0);
  // "Set" the color by telling the module which note is currently being sung:
  module.setColor(musicalNote, 0);
  // Fill with the current color and draw a rectangle:
  fill(module.getRed(0), module.getGreen(0), module.getBlue(0));
  PShape flower= module.getSuperShape(97, 10.00, 64, 716, 91);
  flower.disableStyle();
  shape(flower, 650, 70);
  
  // Draw a legend showing colors and notes:
  //module.legend(musicalNote, 0);
  
  // Repeat above steps for each input:
  musicalNote  = module.getMusicalNote(1);
  module.setColor(musicalNote, 1);
  fill(module.getRed(1), module.getGreen(1), module.getBlue(1));
  rect(550, 70, 200, 200);
  
  module.legend(musicalNote, 2);
  
  musicalNote  = module.getMusicalNote(2);
  module.setColor(musicalNote, 2);
  fill(module.getRed(2), module.getGreen(2), module.getBlue(2));
  rect(1050, 70, 200, 200);
  
  module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(3);
  module.setColor(musicalNote, 3);
  fill(module.getRed(3), module.getGreen(3), module.getBlue(3));
  rect(50, 450, 200, 200);
  
  module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(4);
  module.setColor(musicalNote, 4);
  fill(module.getRed(4), module.getGreen(4), module.getBlue(4));
  rect(550, 450, 200, 200);
  
  module.legend(musicalNote, 4);

  musicalNote  = module.getMusicalNote(5);
  module.setColor(musicalNote, 5);
  fill(module.getRed(5), module.getGreen(5), module.getBlue(5));
  rect(1050, 450, 200, 200);  
 
  module.legend(musicalNote, 5);
  }
  if(sceneNum==2)
  {
  // Set a background color for section 2:
  background(0, 0, 0);
  
  // set colors for the notes for section 2:
  module.setColor0forAllInputs(17, 5, 109);
  module.setColor1forAllInputs(135, 5, 5);
  module.setColor2forAllInputs(255, 63, 63);
  module.setColor3forAllInputs(58, 199, 255);
  module.setColor4forAllInputs(255, 0, 0);
  module.setColor5forAllInputs(0, 55, 255);
  module.setColor6forAllInputs(255, 244, 48); 
  
  // Get the current note for input 0:
  musicalNote  = module.getMusicalNote(0);
  // "Set" the color by telling the module which note is currently being sung:
  module.setColor(musicalNote, 0);
  // Fill with the current color and draw a rectangle:
  fill(module.getRed(0), module.getGreen(0), module.getBlue(0));
  ellipse(200, 150, 200, 200);
  
  // Draw a legend showing colors and notes:
  //module.legend(musicalNote, 0);
  
  // Repeat above steps for each input:
  musicalNote  = module.getMusicalNote(1);
  module.setColor(musicalNote, 1);
  fill(module.getRed(1), module.getGreen(1), module.getBlue(1));
  rect(550, 70, 200, 200);
  
  module.legend(musicalNote, 2);
  
  musicalNote  = module.getMusicalNote(2);
  module.setColor(musicalNote, 2);
  fill(module.getRed(2), module.getGreen(2), module.getBlue(2));
  rect(1050, 70, 200, 200);
  
  module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(3);
  module.setColor(musicalNote, 3);
  fill(module.getRed(3), module.getGreen(3), module.getBlue(3));
  rect(50, 450, 200, 200);
  
  module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(4);
  module.setColor(musicalNote, 4);
  fill(module.getRed(4), module.getGreen(4), module.getBlue(4));
  rect(550, 450, 200, 200);
  
  module.legend(musicalNote, 4);

  musicalNote  = module.getMusicalNote(5);
  module.setColor(musicalNote, 5);
  fill(module.getRed(5), module.getGreen(5), module.getBlue(5));
  rect(1050, 450, 200, 200);  
 
  module.legend(musicalNote, 5);
  }
  if(sceneNum==3)
  {
  // Set a background color for section 3:
  background(0, 0, 0);
  
  // set colors for the notes for section 3:
  module.setColor0forAllInputs(58, 199, 255);
  module.setColor1forAllInputs(17, 5, 109);
  module.setColor2forAllInputs(255, 117, 197);
  module.setColor3forAllInputs(255, 244, 48);
  module.setColor4forAllInputs(168, 255, 76);
  module.setColor5forAllInputs(255, 0, 0);
  module.setColor6forAllInputs(208, 0, 255 ); 
  
  // Get the current note for input 0:
  musicalNote  = module.getMusicalNote(0);
  // "Set" the color by telling the module which note is currently being sung:
  module.setColor(musicalNote, 0);
  // Fill with the current color and draw a rectangle:
  fill(module.getRed(0), module.getGreen(0), module.getBlue(0));
  ellipse(200, 150, 200, 200);
  
  // Draw a legend showing colors and notes:
  //module.legend(musicalNote, 0);
  
  // Repeat above steps for each input:
  musicalNote  = module.getMusicalNote(1);
  module.setColor(musicalNote, 1);
  fill(module.getRed(1), module.getGreen(1), module.getBlue(1));
  rect(550, 70, 200, 200);
  
  module.legend(musicalNote, 2);
  
  musicalNote  = module.getMusicalNote(2);
  module.setColor(musicalNote, 2);
  fill(module.getRed(2), module.getGreen(2), module.getBlue(2));
  rect(1050, 70, 200, 200);
  
  module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(3);
  module.setColor(musicalNote, 3);
  fill(module.getRed(3), module.getGreen(3), module.getBlue(3));
  rect(50, 450, 200, 200);
  
  module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(4);
  module.setColor(musicalNote, 4);
  fill(module.getRed(4), module.getGreen(4), module.getBlue(4));
  rect(550, 450, 200, 200);
  
  module.legend(musicalNote, 4);

  musicalNote  = module.getMusicalNote(5);
  module.setColor(musicalNote, 5);
  fill(module.getRed(5), module.getGreen(5), module.getBlue(5));
  rect(1050, 450, 200, 200);  
 
  module.legend(musicalNote, 5);
  }
}
void keypressed(KeyEvent keyEvent)
{
  if(keyEvent.getKey()=='1')
  {
    sceneNum=1;
  }  
  if(keyEvent.getKey()=='2')
  {
    sceneNum=2;
  }
  if(keyEvent.getKey()=='3')
  {
    sceneNum=3;
  }
  
}
