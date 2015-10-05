/* please implement your assign1 code in this file. */
PImage bg2,bg1,enemy,fighter,hp,treasure;
int BGx,BG1x,BG2x,HPw,ENx,ENy,TRx,TRy;


void setup () {
  size(640,480) ;  // must use this size.

  bg2      =  loadImage("img/bg2.png");
  bg1      =  loadImage("img/bg1.png");
  enemy    =  loadImage("img/enemy.png");
  fighter  =  loadImage("img/fighter.png");
  hp       =  loadImage("img/hp.png");
  treasure =  loadImage("img/treasure.png");
  BGx = 1280;
  HPw = floor(random(10,201));
  ENy = floor(random(60,401));
  TRx = floor(random(20,501));
  TRy = floor(random(60,401));
  ENx = 0;
}

void draw() {
  
  background(0);
  
  //bg
  image(bg2,BG2x,0);
  image(bg1,BG1x,0);
  BG2x = BGx - 640;
  BG1x = BGx - 1280;
  BGx += 2;
  BG2x = (BG2x %= 1280) - 640;
  BG1x = (BG1x %= 1280) - 640;

  //hp volume
  stroke(255,0,0);
  fill(255,0,0);
  rect(20,20,HPw,20);
 
  //hp
  image(hp,15,15);

  //treasure
  image(treasure,TRx,TRy);
  
  //fighter
  image(fighter,550,240);
  
  //enemy
  image(enemy,ENx,ENy);
  ENx += 4;
  ENx %= 640;
}
