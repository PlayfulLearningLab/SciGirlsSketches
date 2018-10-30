// These imports give us access to sound analysis and Code+Chords functions:
import beads.*;
import org.jaudiolibs.beads.*;
import codeandchords.Module;

// This Module is what will give us access to the Code+Chords functions:
Module module;

// This variable will be set to the note that is currently being sung:
int  musicalNote;


void setup()
{
  // Set the display size to the full screen
  fullScreen();
  
  // Initialize the Module for 6 inputs:
  module  = new Module(this);
  module.setupModule(6, true);  // false: use recorded inputs; true: use microphones
  
  // Set the colors:
  module.setColor0forAllInputs(120, 200, 75);
  module.setColor1forAllInputs(200, 52, 167);
  module.setColor2forAllInputs(205, 117, 198);
  module.setColor3forAllInputs(117, 172, 198);
  module.setColor4forAllInputs(222, 137, 157);
  module.setColor5forAllInputs(192, 208, 208);
  module.setColor6forAllInputs(143, 154, 208);
  
  // Set the attack and release values.  Default value is 200.
  module.setAttack(0, 400);
  module.setRelease(0, 600);
}

void draw()
{
  // Set a background color:
  background(0);

  // Get the current note for input 0:
  musicalNote  = module.getMusicalNote(0);
  // "Set" the color by telling the module which note is currently being sung:
  module.setColor(musicalNote, 0);
  // Fill with the current color and draw a rectangle:
  fill(module.getRed(0), module.getGreen(0), module.getBlue(0));
  rect(50, 70, 200, 200);
  
  // Draw a legend showing colors and notes:
  module.legend(musicalNote, 0);
  
  // Repeat above steps for each input:
  musicalNote  = module.getMusicalNote(1);
  module.setColor(musicalNote, 1);
  fill(module.getRed(1), module.getGreen(1), module.getBlue(1));
  rect(550, 70, 200, 200);
  
  module.legend(musicalNote, 1);
  
  musicalNote  = module.getMusicalNote(2);
  module.setColor(musicalNote, 2);
  fill(module.getRed(2), module.getGreen(2), module.getBlue(2));
  rect(1050, 70, 200, 200);
  
  module.legend(musicalNote, 2);

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
