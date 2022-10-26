public class Tree{
   
  String images[] = {"tree.png"};
  PImage img[];
  int x, y;
  int frame = 0;
  int f = 0;
  int animationSpeed = 3; //higher means slower
  int width = 80;
  int height = 80;
  
  //updating animation
  public void draw(){
    f++;
    if(f%animationSpeed==0) frame++; 
    image(img[frame%images.length], x, y, width, height);
    
   }
  
  //creating tree object
  public Tree(int x, int y, int width, int height){
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
