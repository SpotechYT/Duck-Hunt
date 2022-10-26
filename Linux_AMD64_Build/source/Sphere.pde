public class Sphere{
  
  //attributes for a Sphere object
  int radius;
  String colour;
  double volume;
  
  //add attributes below to locate a Sphere object in a 3D space
  int x, y, z;  
  
  //add a constructor with 0 parameters (no arguments)
  public Sphere(){
    //THE JOB of the constructor is to initialize the properties
    radius = 50;
    colour = "Gold"; //212, 175, 55
    
    x = 250;
    y = 200;
    z = 200;
    
    // 4/3 * pi * r * r * r
    //in processing pi is PI
    // What is Integer division? -> operation between two ints results in an int
    // Why is it an issue in the statement below?!
    volume = (4 / 3.0)*PI*(radius*radius*radius); 
    
   }
  
   //BEHAVIORS of a class are the METHODS (a.k.a. functions)
   public void move(int xe, int ye, int ze){
     //what happens when somebody calls move on any Sphere object?
     x += xe;
     y += ye;
     z += ze;
   }
   
   //define one other behavior that we can ask of a Sphere object
   public void draw(){
     //call the built-in sphere drawing method by processing
     //pass in the radius as the input
     translate(x, y, z); //if these values are changing, it will translate over time
     sphere(radius);   
   }
}
