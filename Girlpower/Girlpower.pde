// These imports give us access to sound analysis and Code+Chords functions:
import beads.*;
import org.jaudiolibs.beads.*;
import codeandchords.Module;

// This Module is what will give us access to the Code+Chords functions:
Module module;

// This variable will be set to the note that is currently being sung:
int  musicalNote;
  
  
int sceneNum;
int size;
void setup()
{
  sceneNum=1;
  size=0;
  // Set the display size to the full screen
  fullScreen();  
  // Initialize the Module for 6 inputs:
  module  = new Module(this);
  module.setupModule(8, false);  // false: use recorded inputs; true: use microphones

  
  // Set the attack and release values.  Default value is 200.
  module.setAttack(0, 400);
  module.setRelease(0, 600);
  
  
}

void draw()
{
  if(sceneNum==1)
  {
  // Set a background color for section 1:
   PImage image1;
  image1 = loadImage("back2.jpg");
  background(image1);
  
  // set colors for the notes for section 1:
  module.setColor0forAllInputs(10, 13, 100);
  module.setColor1forAllInputs(240, 44, 80);
  module.setColor2forAllInputs(50, 155, 88);
  module.setColor3forAllInputs(91, 5, 91);
  module.setColor4forAllInputs(246, 0, 141);
  module.setColor5forAllInputs(252, 217, 8);
  module.setColor6forAllInputs(200, 10, 50); 
  
  
  
  // Draw a legend showing colors and notes:
  //module.legend(musicalNote, 0);
  
  // Repeat above steps for each input:
  musicalNote  = module.getMusicalNote(1);
  module.setColor(musicalNote, 1);
  //if(module.getVolume(1) > .001)
  //{
     fill(module.getRed(1), module.getGreen(1), module.getBlue(1));
 // }
  //else stroke(0);
 
  ellipse(550, 550, 200, 400);
    // Get the current note for input 0:
  musicalNote  = module.getMusicalNote(0);
  // "Set" the color by telling the module which note is currently being sung:
  module.setColor(musicalNote, 0);
  // Fill with the current color and draw a rectangle:
  fill(module.getRed(0), module.getGreen(0), module.getBlue(0));
  PShape flower= module.getSuperShape(.97, 10.00, .64, 7.16, .91);
  shape(flower, 990, 400);
 // module.legend(musicalNote, 2);
  
  musicalNote  = module.getMusicalNote(2);
  module.setColor(musicalNote, 2);
  fill(module.getRed(2), module.getGreen(2), module.getBlue(2));
 
  PShape star= module.getSuperShape(1.37, 10.00, 0.91, 1.11, 2.66);
   if(size == 1)
  {
  scale(.2);
    }
  shape(star, 270, 560);
  
  //module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(3);
  module.setColor(musicalNote, 3);
  fill(module.getRed(3), module.getGreen(3), module.getBlue(3));
  
  PShape star1= module.getSuperShape(1.14, 10.00, 0.77, 1.25, 0.00);
  shape(star1, 1200, 150);
  
  //module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(4);
  module.setColor(musicalNote, 4);
  fill(module.getRed(4), module.getGreen(4), module.getBlue(4));
  
  PShape cloud= module.getSuperShape(1.22, 12.00, 1.35, 1.62, 1.62);
  shape(cloud, 950, 150);
  
  //module.legend(musicalNote, 4);

  musicalNote  = module.getMusicalNote(5);
  module.setColor(musicalNote, 5);
  fill(module.getRed(5), module.getGreen(5), module.getBlue(5));
  
  PShape cloud1= module.getSuperShape(1.22, 12.00, 1.35, 1.62, 1.62);
  shape(cloud1, 550, 150);
  
  musicalNote  = module.getMusicalNote(6);
  module.setColor(musicalNote, 6);
  fill(module.getRed(6), module.getGreen(6), module.getBlue(6));
  
  rect(720, 525, 200, 200, 70, 0, 70, 70);
  
  musicalNote  = module.getMusicalNote(7);
  module.setColor(musicalNote, 7);
  fill(module.getRed(7), module.getGreen(7), module.getBlue(7));
  
  rect(1100, 525, 200, 200, 0, 70, 70, 70);
  
 
  //module.legend(musicalNote, 5);
  }
  if(sceneNum==2)
  {
  // Set a background color for section 2:
  background(117, 120, 124);
  
  // set colors for the notes for section 2:
  module.setColor0forAllInputs(17, 5, 109);
  module.setColor1forAllInputs(135, 5, 5);
  module.setColor2forAllInputs(255, 63, 63);
  module.setColor3forAllInputs(58, 199, 255);
  module.setColor4forAllInputs(255, 0, 0);
  module.setColor5forAllInputs(0, 55, 255);
  module.setColor6forAllInputs(246, 255, 0); 
  
  // Get the current note for input 0:
  musicalNote  = module.getMusicalNote(0);
  // "Set" the color by telling the module which note is currently being sung:
  module.setColor(musicalNote, 0);
  // Fill with the current color and draw a rectangle:
  fill(module.getRed(0), module.getGreen(0), module.getBlue(0));
  stroke(0);
  PShape clouds=module.getSuperShape(1.10, 8.00, 1.55, 4.39, 1.31);
  shape(clouds, width/2, 100, 500, 150);
  
  // Draw a legend showing colors and notes:
  //module.legend(musicalNote, 0);
  
  // Repeat above steps for each input:
  musicalNote  = module.getMusicalNote(1);
  module.setColor(musicalNote, 1);

  stroke(module.getRed(3), module.getGreen(3), module.getBlue(3));
  noFill();
  PShape star3= module.getSuperShape(1.14, 10.00, 0.77, 1.25, 0.00);
  shape(star3, 360, 550, 200, 200);
  strokeWeight(4);
    
  stroke(0);

  //module.legend(musicalNote, 2);
  
  musicalNote  = module.getMusicalNote(2);
  module.setColor(musicalNote, 2);
  fill(module.getRed(2), module.getGreen(2), module.getBlue(2));
 //rect(600, 450, 90, 90, 70, 100, 0, 100);
 PShape rec5 = createShape(RECT, 0, 0, 90, 90, 60, 100, 0, 100);
  rec5.rotate(radians(220));
  shape(rec5,600,500);

  
  //module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(3);
  module.setColor(musicalNote, 3);
  fill(module.getRed(3), module.getGreen(3), module.getBlue(3));
  PShape rec = createShape(RECT, 0, 0, 90, 90, 60, 100, 0, 100);
  rec.rotate(radians(220));
  shape(rec,200,400);
  
  //module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(4);
  module.setColor(musicalNote, 4);
  fill(module.getRed(4), module.getGreen(4), module.getBlue(4));
  //rect(150, 300, 50, 300, 70, 100, 0, 100);
   PShape rec1 = createShape(RECT, 0, 0, 90, 90, 60, 100, 0, 100);
  rec1.rotate(radians(220));
  shape(rec1,150,600);
  //module.legend(musicalNote, 4);

  musicalNote  = module.getMusicalNote(5);
  module.setColor(musicalNote, 5);
  fill(module.getRed(5), module.getGreen(5), module.getBlue(5));
 PShape rec2 = createShape(RECT, 0, 0, 90, 90, 60, 100, 0, 100);
  rec2.rotate(radians(220));
  shape(rec2,1000,440);
 
   musicalNote  = module.getMusicalNote(6);
  module.setColor(musicalNote, 6);
  fill(module.getRed(6), module.getGreen(6), module.getBlue(6));
 PShape rec3 = createShape(RECT, 0, 0, 90, 90, 60, 100, 0, 100);
  rec3.rotate(radians(220));
  shape(rec3,800,380);
  
   musicalNote  = module.getMusicalNote(7);
  module.setColor(musicalNote, 7);
  fill(module.getRed(7), module.getGreen(7), module.getBlue(7));
//rect(770, 450, 50, 300, 70, 100, 0, 100);
  PShape rec4 = createShape(RECT, 0, 0, 90, 90, 60, 100, 0, 100);
  rec4.rotate(radians(220));
  shape(rec4,870,750);
   musicalNote  = module.getMusicalNote(1);
  module.setColor(musicalNote, 1);
  
  if(module.getVolume(1) > 10)
  {
    stroke(255);
  }
  else stroke(0);
  fill(module.getRed(1), module.getGreen(1), module.getBlue(1));
  PShape light= module.getLightning();
  shape(light, 600, 290, 100, 90);
  
  System.out.println(module.getVolume(1));
 
 
 
  //module.legend(musicalNote, 5);
  }
  if(sceneNum==3)
  {
  // Set a background color for section 3:
  //background(122, 244, 228);
  PImage image;
  image = loadImage("Rainbow.jpg");
  background(image);
  
  
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
  rect(500, 500, 100, 150, 50, 50, 50, 50);
  
  // Draw a legend showing colors and notes:
  //module.legend(musicalNote, 0);
  
  // Repeat above steps for each input:
  musicalNote  = module.getMusicalNote(1);
  module.setColor(musicalNote, 1);
  //if(module.getVolume(1) > .001)
  //{
     fill(255,255,255);
 // }
  //else fill(0);
  rect(800, 600, 100, 150, 50, 50, 50, 50);
  
  //module.legend(musicalNote, 2);
  
  musicalNote  = module.getMusicalNote(2);
  module.setColor(musicalNote, 2);
  fill(module.getRed(2), module.getGreen(2), module.getBlue(2));
  PShape star= module.getSuperShape(0.95, 5.00, 0.64, 0.91, 1.00);
  shape(star, 400  , 200);
  
  //module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(3);
  module.setColor(musicalNote, 3);
  fill(module.getRed(3), module.getGreen(3), module.getBlue(3));
  PShape star1= module.getSuperShape(0.95, 5.00, 0.64, 0.91, 1.00);
  shape(star1, 1200, 680);
  
  //module.legend(musicalNote, 3);

  musicalNote  = module.getMusicalNote(4);
  module.setColor(musicalNote, 4);
  fill(module.getRed(4), module.getGreen(4), module.getBlue(4));
  PShape clouds= module.getSuperShape(1.31, 15.00, 3.61, 1.83, 1.08);
  shape(clouds, 200, 150);
  
  //module.legend(musicalNote, 4);

  musicalNote  = module.getMusicalNote(5);
  module.setColor(musicalNote, 5);
  fill(module.getRed(5), module.getGreen(5), module.getBlue(5));
  PShape clouds1= module.getSuperShape(1.31, 15.00, 3.61, 1.83, 1.08);
  shape(clouds1, 1100, 150);
 
  //module.legend(musicalNote, 6);
 
  musicalNote  = module.getMusicalNote(6);
  module.setColor(musicalNote, 6);
  fill(module.getRed(6), module.getGreen(6), module.getBlue(6));
  rect(250, 500, 150, 200);
  
  //module.legend(musicalNote, 7);
  
  musicalNote  = module.getMusicalNote(7);
  module.setColor(musicalNote, 7);
  fill(module.getRed(7), module.getGreen(7), module.getBlue(7));
  rect(900, 500, 150, 200);
  }
}

void keyPressed(KeyEvent keyEvent)
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
 // if(keyEvent.getKey()=='9')
  //{/
    //size=1;
  //}
}
void mousePressed ()  
{
  if(mouseButton==RIGHT)
  {
    size=1;
  }
  if(mouseButton==LEFT)
  {
    size=2;
  }
}
