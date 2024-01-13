//
//Coder: Thomas Wesley 
//Last Edit 1/12/2024
//Title: ShaderTry

PFont grand;
float t = 0;
float u = 0;
int x = 0;
int y = 0;
int z = 0;
float speed;
PImage img;
float s=0;
float w;
float time;
float osx;
float osy;
float theta;
float size =0;
float sizer=0;
float rando;
float m;
float phase;
float phasee;
float delay=0;
float flareon=0;
float jolteon=0;
float varry =1;
float varryable =1;
int doors=0;
int check =0;
float setoff=0;
static final int LINE_C =100;
static final int LINE_O =360;
float numb=0;
float er=0;
float umbreon=0;
float gen =0;
float open;
float fire;
float ball;
float checkpoint=0;
float meh;
int diag=0;
float corners=0;
int wave=int(random(10,20));
int lightning = 15;
int ning = 0;
int xx = 0;
int yy = 0;
//Freebie for next task is zz
int zz = 0;
int colorr;
int colorrr;
int colorrrr;
float pick;
//Control of Wave Fluctuation from bottom of screen
float fluct=0;
int spacing;
int radius;
int o=0;
int crunch=0;
int form=int(random(4,10));

float petalCount = 0;
int granularity = 64;
void setup() {
  //background(0);
  size(1280,720);
  //background(255,244,244);
 // img = loadImage("Texture1.jpg");
 colorMode(HSB);
  
}

void draw() {
 // save("ThousandEyedWall.png");
  delay=delay+.01;
  background(0,0,0);
  translate(width/2,height/2);
  strokeWeight(1);
  noFill();
  stroke(255,255,255,255);

 noFill();
 for (int j =-width/2;j<=width/2;j = j+granularity){
   for (int k = -height/2;k<=height/2; k = k+granularity){
     petalCount = (abs(j)+abs(k))%15;
     float colorCalc = (abs(j)+abs(k))%255;
     stroke(colorCalc, 255, 255);
     for (float i = 0 + delay; i <= LINE_O + delay; i = i + 5){
      theta = i*(360/LINE_O);
      phase=((PI)/LINE_O);
      meh = (30)*sin(petalCount*theta)*cos(phase);
     osx=(meh)*cos(theta)+j;
     osy=(meh)*sin(theta)+k;
     stroke(colorCalc, 255, 255);
     ellipse(osx,osy,1,1); 
     stroke(0,255,255);
     ellipse(osx,osy,.1,.1);
     
   }
   
}
}
}
