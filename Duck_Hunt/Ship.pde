public class Duck {

  //defines images
  String images[] = {"Spaceship_1.png", "Spaceship_2.png", "Spaceship_3.png"};
  PImage img[];
  int x, y;

  
  int vx = int(random(4, 6)), vy = int(random(4, 6));
  //int vx = 1, vy = 1;
  int animationSpeed = 4; //higher means slower

  
  int frame = 0;
  int f = 0;
  int width = 80;
  int height = 80;

  public void draw() {
    f++;
    //sets the image cordinates to the center of the image
    imageMode(CENTER);

    x+=vx;
    y+=vy;

    //collition with sides detection for image flip
    if (vy < 0){
      pushMatrix();
      scale(1,1);
      image(img[frame%images.length], x, y, width, height);
      popMatrix();
    }
    
    if (vy > 0){
      pushMatrix();
      scale(1,-1);
      image(img[frame%images.length], x, -y, width, height);
      popMatrix();
    }

    //collition with sides detection for turning
    if (x+90>=800) {
      vx *= -1;
    }
    if (x<=0) {
      vx *= -1;
    }
    if (y+90>=400) {
      vy *= -1;
    }
    if (y<=0) {
      vy *= -1;
    }
  }

  //creating the ship object
  public Duck(int x, int y, int width, int height) {
    img = new PImage[images.length];
    this.x = x;
    this.y = y;
    for (int i =0; i < images.length; i++) {
      img[i] = loadImage(images[i]);
    }
    this.width = width;
    this.height = height;
  }

}
