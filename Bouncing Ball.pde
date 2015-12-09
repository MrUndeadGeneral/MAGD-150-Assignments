int posX = 25;
float posY = 200;
int movementSpeed = 5;
int ballDiameter = 40;
float gravity = 1.5;
float velocityY = 0.0;
boolean onGround = false;
float jumpSize = -50;

void setup(){
  size(800,600);
}

void draw(){
  background(255);
  line(0,height/2,width,height/2);
  update();
}

void update(){
   velocityY = gravity + velocityY;
  posY = velocityY + posY;
  if (posY + (ballDiameter) > (height/2)){
    posY = height/2 - (ballDiameter/2);
    onGround = true;
  } else onGround = false;
  ellipse(posX,posY,ballDiameter,ballDiameter);
}

void mousePressed(){
  if (onGround)
  jump();
}

void jump(){
  velocityY= jumpSize;
}
