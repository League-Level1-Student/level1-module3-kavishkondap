public class Car {
int x;
int y;
int size;
int speed;
boolean isLeft = true;
  Car (int x, int y, int size,  int speed){
   this.x = x;
   this.y = y;
   this.size = size;
   this.speed = speed;
  }
  
  void display(){ 
   // fill(0,255,0);
    //rect(x , y,  size, 50);
    if (isLeft ){
      image (carLeft,x , y,  size, 50);
    }else{
     image (carRight,x , y,  size, 50); 
    }
  }
  void carMoveLeft (){
   isLeft = true;
    x -= speed;
    if (x<0){
     x=width; 
    }
  }
  
 void carMoveRight (){
 isLeft = false;
   x+=speed; 
  if (x>width){
   x=0; 
  }
 }
 int getX() {
   return x;
 }
  int getY (){
   return y;
  }
  int getSize (){
    return size;
  }
  
  
  
  
  
  
  
  
  
  
  
}
