/*
DUCK HUNT
By: Haniel Mikhaiel

CONTROLS:
 move your mouse onto the ship and left clikc to shoot

*/


import processing.sound.*;

//declare the objects here that you want to see on frame
Tree t;
Duck d1;
Duck d2;
Duck d3;
Dog dog;
Object obj;
PImage m;
SoundFile soundHaha;
SoundFile soundShot;
SoundFile soundMusic;
Foreground fore;

int Score = 0;

//Sphere myBall;
  
//draw function that refreshes the screel
public void draw(){
  //sets background color
  background(0, 0, 200);
  //sets cursor
  cursor(CROSS);
  
  //creates text for score
  textSize(64);
  text("Score: " + Score, 300, 100);
  
  //draws objects on screen
  fore.draw();
  t.draw();
  
  d1.draw();
  d2.draw();
  d3.draw();
  
  dog.draw();
  
  //myBall.draw();
  //myBall.move(0, 0, 1);
}

public void setup(){
   size(800,600);//, P3D);
   //initializes sounds
   soundHaha = new SoundFile(this, "haha.mp3"); 
   soundShot = new SoundFile(this, "Shot.mp3");
   soundMusic = new SoundFile(this, "background.mp3");
   

   //creates new objects
   d1 = new Duck(int(random(50, 500)), int(random(50, 300)), 90, 90); // new Type(input1, input2, input3, ...)
   d2 = new Duck(int(random(50, 500)), int(random(50, 300)), 90, 90);
   d3 = new Duck(int(random(50, 500)), int(random(50, 300)), 90, 90);
   t = new Tree(110, 390, 209, 376);
   fore = new Foreground(400, 500, 800, 200);
   dog = new Dog(50, 550, 102, 102);

   //myBall = new Sphere();

   //runs update function
   update();
}

//looping bkg music
public void update(){
  soundMusic.loop();
}

//on mouse pressed
void mousePressed() {
  int x1 = mouseX;
  int y1 = mouseY;
  
  int x2 = d1.x;
  int y2 = d1.y;
  
  int x3 = d2.x;
  int y3 = d2.y;
  
  int x4 = d3.x;
  int y4 = d3.y;

  //calculates distance from all objects
  double distance1 = Math.sqrt(Math.pow(x1-x2, 2)+Math.pow(y1-y2, 2));
  double distance2 = Math.sqrt(Math.pow(x1-x3, 2)+Math.pow(y1-y3, 2));
  double distance3 = Math.sqrt(Math.pow(x1-x4, 2)+Math.pow(y1-y4, 2));
  
  //Finds if the distance is less then or equal to 80
  if(distance1 <= 80){
    //updates score, plays sound, and respawns ship
    Score++;
    d1 = new Duck(int(random(50, 500)), int(random(50, 300)), 90, 90);
    soundShot.play();
  }
  else if(distance2 <= 80){
    //updates score, plays sound, and respawns ship
    Score++;
    d2 = new Duck(int(random(50, 500)), int(random(50, 300)), 90, 90);
    soundShot.play();
  }
  else if(distance3 <= 80){
    //updates score, plays sound, and respawns ship
    Score++;
    d3 = new Duck(int(random(50, 500)), int(random(50, 300)), 90, 90);
    soundShot.play();
  }
  else{
    //removes one from score is miss while greater then 0
    if (Score > 0){
      Score--;
    }
    //HAHHAHAHAHAHAHA
    soundHaha.play();
  }
}
