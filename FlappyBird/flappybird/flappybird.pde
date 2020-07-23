int birdX = 400;
int birdY = 400;
double birdVelocity = 0;
int gravity = 1;
int pipeX = 500;
int upperPipeHeight = (int) random (100, 400);
int pipeGap = 100;
int lowerY;
boolean isPlaying = true;
 PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
void setup (){
  size (800,800);
  teleportPipes ();
  back = loadImage("flappyBackground.jpg");
            pipeBottom = loadImage("bottomPipe.png");
            pipeTop = loadImage("topPipe.png");
            bird = loadImage("bird.png");
            bird.resize(50,50);
            back.resize(800,800);
}
void draw (){
 background(back);
            image (pipeBottom,pipeX, lowerY, 150, 600);
            image (pipeTop,pipeX, 0, 150, upperPipeHeight);
            image (bird,birdX,birdY,50,50);
  //background (#1DCCDE);
  fill (#EBF00C);
  stroke (0,0,0);
 if (isPlaying ){
  birdY+=birdVelocity;
  birdVelocity +=gravity;
 }
  //ellipse(birdX,birdY,50,50);
  fill (#34CE17);
 //upperPipe line 20
  //rect (pipeX, 0, 150, upperPipeHeight);
  lowerY = upperPipeHeight + pipeGap;
  //rect (pipeX, lowerY, 150, 800);
 if(isPlaying){
  pipeX--;
 }
  if( intersectsPipes ()){
   fill (0,0,0);
   textSize(100);
    text ("GAME OVER", 250,400);
    isPlaying = false;
  }
  
  teleportPipes ();

}
void mousePressed (){
 if (isPlaying){
 birdVelocity = -7.5;
 }
}
void teleportPipes (){
 if (pipeX == 0){
   pipeX=800;
   upperPipeHeight = (int) random (100, 400);
 }
}
boolean intersectsPipes() { 
         if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+150)){
            return true; }
        else if (birdY>lowerY && birdX > pipeX && birdX < (pipeX+150)) {
            return true; }
        else { return false; }
}
