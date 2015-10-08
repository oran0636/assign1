PImage fighterImg ;
PImage enemyImg ;
PImage hpImg ;
PImage treasureImg ;
PImage bg1Img ;
PImage bg2Img ;
int x = floor(random(600)); //treasure
int y = floor(random(450)); //treasure
int a = floor(random(216)); //hp
int b = 10 ; //enemy
int c = 0 ; //bg1
int d = -640 ; //bg2


void setup () {
  size(640,480) ;  // must use this size.
  fighterImg = loadImage("img/fighter.png") ;
  enemyImg = loadImage("img/enemy.png") ;
  hpImg = loadImage("img/hp.png") ;
  treasureImg = loadImage("img/treasure.png") ;
  bg1Img = loadImage("img/bg1.png") ;
  bg2Img = loadImage("img/bg2.png") ;
}

void draw() {
  background(0);
  image(bg1Img,c,0);
  c = c + 1 ;
  if( c == 640) {
    c = c * -1 ;
  }
  image(bg2Img,d,0);
  d = d + 1 ;
  if( d == 640) {
    d = d * -1 ;
  } 
  
  image(fighterImg,580,210);
  image(enemyImg,b,100);
  b = b + 2 ;
  b %= 640 ; 
  fill(#FF0000);
  rectMode(CORNERS);
  rect(20,12,a,35);
  image(hpImg,10,10);
  image(treasureImg,x,y);
}

