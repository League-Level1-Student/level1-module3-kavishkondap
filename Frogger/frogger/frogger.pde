int frogX = 400;
int frogY = 550;
Car car1 = new Car (15,30, 150,7);
Car car2 = new Car (700,300, 150,8);
Car car3 = new Car (150,150, 150,10);
Car car4 = new Car (300,450, 150,9);
PImage back;
 PImage carLeft;
 PImage carRight;
 PImage frog;
void setup (){
   size(844,600);
        back = loadImage("froggerBackground.png");
        carLeft = loadImage("carLeft.png");
        carLeft.resize(160,100);
        carRight = loadImage("carRight.png");
        carRight.resize(160,100);
        frog = loadImage("frog.png");
        frog.resize(75,75);
}
void draw (){
  background(back);
        
        image (frog,frogX,frogY,50,50);
insideBoundary ();
car1.display ();
car2.display ();
car3.display ();
car4.display ();
car1.carMoveLeft ();
car2.carMoveRight ();
car3.carMoveLeft ();
car4.carMoveRight ();
if ((intersects (car1))||intersects (car2)||intersects (car3)||intersects (car4)){
  frogY = 600;
}
if (frogY == 0){
 textSize (75);
  fill (255,255,255);
  text ("YOU WIN!!",300,400);
}
}
void keyPressed(){
    if(key == CODED){
        if(keyCode == UP)
        {
            frogY -=8;
        }
        else if(keyCode == DOWN)
        {
            //Frog Y position goes down 
            frogY +=8;
        }
        else if(keyCode == RIGHT)
        {
            //Frog X position goes right
            frogX +=8;
        }
        else if(keyCode == LEFT)
        {
            //Frog X position goes left
            frogX -=8;
        }
    }
      
      
    }
     void insideBoundary (){
       if (frogX>800){
   frogX=800;
       }
       if (frogX<0){
         frogX=0;
       }
       if (frogY>600){
        frogY = 600; 
       }
       if (frogY<0){
        frogY = 0; 
       }
}
boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}
