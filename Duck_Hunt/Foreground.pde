public class Foreground{

  //images
  String images[] = {"Foreground.png"};
  PImage img[];
  int x, y;
  int frame = 0;
  int f = 0;
  int animationSpeed = 7; //higher means slower
  int width = 80;
  int height = 80;
  
  //update animation
  public void draw(){
    f++;
    if(f%animationSpeed==0) frame++; 
    image(img[frame%images.length], x, y, width, height);
    
   }
  
  //creatign foreground object
  public Foreground(int x, int y, int width, int height){
    img = new PImage[images.length];
    this.x = x;
    this.y = y;
    for(int i =0; i < images.length; i++){
     img[i] = loadImage(images[i]); 
    }
    
    this.width = width;
    this.height = height;
    
   }
}
