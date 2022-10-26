public class Dog{

  //indicates picture file locations
  String images[] = { "Sans_Left_1.png", "Sans_Left_2.png"};
  PImage img[];
  int x, y;
  int vx = 0, vy = 0;
  int frame = 0;
  int f = 0;
  int animationSpeed = 10; //higher means slower
  int width = 80;
  int height = 80;
  
  public void draw(){
    //Moving to the Right animation
    if (x < 700){
      vx = 5;
    }
    if(x >= 700){
      vx = 0;
      //shows images 1-1
      image(img[frame%1], x, y, width, height);
    }
      
    x+=vx;
    y+=vy;
   
    f++;
    if(f%animationSpeed==0) frame++; 
    
    //which direction to face while moving
    if (vx < 0){
      scale(1,1);
      //shows images 1-2
      image(img[frame%2], x, y, width, height);
    }
    
    if (vx > 0){
      scale(-1,1);
      //shows images 1-2
      image(img[frame%2], -x, y, width, height);
    }
    
   }
  
  public Dog(int x, int y, int width, int height){
    img = new PImage[images.length];
    this.x = x;
    this.y = y;
    for(int i =0; i < 2; i++){
      img[i] = loadImage(images[i]); 
    }
    
    this.width = width;
    this.height = height;
  }
}
