int x = 400;
int y = 400;
int birdVelocity = 30;
int gravity = 1;
int pipeX = 500;
int upperPipeHeight = (int) random (100, 400);
int pipeGap = 100;
int lowerY;
void setup (){
  size (800,800);
  teleportPipes ();
}
void draw (){
  background (#1DCCDE);
  fill (#EBF00C);
  stroke (0,0,0);
  ellipse(x,y+=gravity,50,50);
  fill (#34CE17);
 //upperPipe line 20
  rect (pipeX, 0, 150, upperPipeHeight);
  lowerY = upperPipeHeight + pipeGap;
  rect (pipeX, lowerY, 150, 800);
  pipeX--;
  teleportPipes ();
}
void mousePressed (){
 y -= birdVelocity; 
}
void teleportPipes (){
 if (pipeX == 0){
   pipeX=800;
   upperPipeHeight = (int) random (100, 400);
 }
}
