//Carpet/Wallpaper pattern consisting of overlapping orbitals represented by small points
//Coder: Thomas Wesley 
//Last Edit 9/28/2018
//Title: Hundred-Eyes Wall

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
void setup() {
  //background(0);
  size(1280,720);
  background(255,255,255);
  //background(255,244,244);
 // img = loadImage("Texture1.jpg");
  
}

void draw() {
 // save("ThousandEyedWall.png");
  if(o>120){
    o=o-1;
    crunch = 1;
  }
  else{
    if(o==0){
     crunch =0; 
     o=o+4;
    }
    if(crunch == 1)
    {
      o = o-4;
    }
    else{
      o =o+4;
    }
  } 
  background(0,0,0);
  strokeWeight(.5);
  noFill();
  stroke(255,255,255,53);
  for(int k=10;k<1280;k=k+20){
    for(int l = 10;l<720;l=l+20){
    triangle(k,l,k-5,l-5,k+5,l-5);
    triangle(k,l,k-5,l+5,k+5,l+5);
    }
  }
/*  
  triangle(width/2,0-90,-90,height,width+90,height);
  triangle(width/2,0,0,height,width,height);
  triangle(width/2,90,90,height,width-90,height);
  triangle(width/2,180,180,height,width-180,height);
  triangle(width/2,270,270,height,width-270,height);
  //triangle(width/2,360,512,height,width-512,height);
  triangle(width/2,height+90,-90,0,width+90,0);
  triangle(width/2,height,0,0,width,0);
  triangle(width/2,height-90,90,0,width-90,0);
  triangle(width/2,height-180,180,0,width-180,0);
  triangle(width/2,height-270,270,0,width-270,0);
  //triangle(width/2,height-360,512,0,width-512,0);
  
  strokeWeight(100);

  stroke(0,100,0,5);
  line(0,0,width,0);
  line(0,0,0,height);
  line(width-1,0,width-1,height);
  line(0,height-1,width,height-1);*/
 strokeWeight(150);
 stroke(0,80,0,0);
 fill(255,200,200,135);
 //quad(0,0,width,0,width,height,0,height);
for (int j =-16;j<=width;j = j+32){
for (int k = 30;k<=height; k = k+30){
   /* strokeWeight(1);
    noFill();
    stroke(0,0,158,93);
    triangle(k,j,k-5,j-5,k+5,j-5);
    triangle(k,j,k-5,j+5,k+5,j+5);*/
    translate(j,k-12);
for (int i = 0; i < LINE_O; i = i +1){
      theta = i*(360/LINE_O);
      phase=((PI)/LINE_O);
     //time=i;
     if(j%80==0 && k %60!=0){
     meh = (30)*sin(10.5*theta)*cos(phase);
     colorr=255;
     colorrr=190;
     colorrrr=180;
     }
     else if(k%60==0 && ((j-32)%80==0 || (j+32)%80==0)){
       
        meh = (30)*sin(10.5*theta)*cos(phase);
     colorr=255;
     colorrr=190;
      colorrrr=180;
     
     }
     else{
          meh = (45)*sin(12*theta)*cos(phase);
          colorr=140;
          colorrr=180;
          colorrrr=250;
     }
     osx=(3.3*meh)*cos(theta);
     osy=(3.1*meh)*sin(theta);
     stroke(colorr,180,200,1);
     strokeWeight(15);
     //point(osx,osy);
     stroke(colorr,colorrr,colorrrr,5);
     strokeWeight(6);
     point(osx,osy);
     stroke(colorr,colorrr,colorrrr,6);
     strokeWeight(4);
     point(osx,osy);
     stroke(colorr,colorrr,colorrrr,7);
     strokeWeight(3);
     point(osx,osy);
     stroke(colorr,colorrr,colorrrr,8);
     strokeWeight(2);
     point(osx,osy);
     stroke(colorr,colorrr,colorrrr,115);
     strokeWeight(1);
     point(osx,osy);    
     
   }
   translate(-j,-k+12);
}
}
}
