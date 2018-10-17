//Visual sequence consisting of various changing colors and shapes for a music video
//Coder: Thomas Wesley 
//Last Edit 9/28/2018
//Title: Eyelids Sequence

//Variable Declarations
Star[] stars = new Star[300];
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
int zz = 0;
int colorr;
float pick;
//Control of Wave Fluctuation from bottom of screen
float fluct=0;
int spacing;
int radius;
int form=int(random(4,10));
//Create bolt objects to use throughout the sequence
Bolt[] bolts = new Bolt[150];
//Setup function to establis the frame color and size 
void setup() {
  //The initial background is black
  background(0);
  //Size the frame in HD proportions
  size(1280,720);
  //Create an array of stars to be utilized in the draw phase
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(); 
  }
}
//The draw function runs through the actions contained in a loop
void draw() {
  //the saveFrame function
  //saveFrame("output/feelslike_####.png");
  //Delay is a variable that simply increases as the program runs
  //Events will be called based on the modulus of this value so they continue to occur for as long as it runs
  delay=delay+.5;
  //Delay is used here to increase the speed of the stars over the course of the visualization
  speed = map(10+delay/200, 0, width, 0, 50); 
  //Events are triggered based on the modulus of delay so that they continue to occur over any amount of time
  //Lightning Bolt Selection
  if(delay%230==0){
    xx=int(random(300,980));
    yy =0;
    zz= int(random(-300,300));
    while(yy<720){//to bottom of frame
      int endX = xx + int(random(-5,5)); //x-value varies
      int endXX = xx + int(random(-5,5)); //x-value varies
      int endY = yy + 2;    //y just goes up
      strokeWeight(1);//bolt is a little thicker than a line
      stroke(255,200); //white line
      if(abs(zz)>180){
        line(xx,yy,endXX,endY);
        line(xx+zz,yy,endXX,endY);
      }
      else if(zz>100){
        line(xx,yy,endX,endY);//draw a tiny segment
        //line(xx+200,yy,endX+202,endY);
        //line(xx-240,yy,endX-243,endY);
      }
      else{
        strokeWeight(.11);
        stroke(0,40-(yy/50));
        noFill();
        if(yy==0){
          noStroke();
          int temp=yy;
          setoff=50;
          yy=1;
          beginShape();
          curveVertex(0,720);
          curveVertex(0,720);
          curveVertex(100,720-yy);
          curveVertex(150,720-yy*1.5);
          curveVertex(300,720-yy*.8);
          curveVertex(400,720-yy*2.5);
          curveVertex(510,720-yy*.6);
          curveVertex(600,720-yy*1.2);
          curveVertex(720,720-yy*1.6);
          curveVertex(900,720-yy*2.2);
          curveVertex(1020,720-yy*.4);
          curveVertex(1100,720-yy*3.2);
          curveVertex(1200,720);
          curveVertex(1200,720);
          endShape();
          yy=temp;
          strokeWeight(1);
        }
        break;
      }
      xx = endX;  //then x and y are moved to the 
      yy = endY;  //end of the segment and so on
    }
  }
  if(setoff>0){
    noFill();
    strokeWeight(.1);
    stroke(0,40-(yy/50));
    fluct=1+((50-setoff)*abs(jolteon))/6;
    beginShape();
    curveVertex(-1,720);
    curveVertex(-1,720);
    curveVertex(0,720-1.1*fluct+random(-10,10));
    curveVertex(0,720-1.2*fluct+random(-10,10));
    curveVertex(25,720-1.0*fluct+random(-10,10));
    curveVertex(50,720-1.2*fluct+random(-10,10));
    curveVertex(100,720-1.1*fluct+random(-10,10));
    curveVertex(150,720-fluct*1.5+random(-10,10));
    curveVertex(220,720-fluct*1.3+random(-10,10));
    curveVertex(300,720-fluct*1.7+random(-10,10));
    curveVertex(400,720-fluct*1.5+random(-10,10));
    curveVertex(510,720-fluct*1.6+random(-10,10));
    curveVertex(600,720-fluct*1.2+random(-10,10));
    curveVertex(660,720-fluct*1.4+random(-10,10));
    curveVertex(720,720-fluct*1.6+random(-10,10));
    curveVertex(900,720-fluct*1.2+random(-10,10));
    curveVertex(960,720-fluct*1.4+random(-10,10));
    curveVertex(1020,720-fluct*1.4+random(-10,10));
    curveVertex(1100,720-fluct*1.2+random(-10,10));
    curveVertex(1150,720-fluct*1.1+random(-10,10));
    curveVertex(1220,720-fluct*1.3+random(-10,10));
    curveVertex(1280,720-1.0*fluct+random(-10,10));
    curveVertex(1280,720-1.2*fluct+random(-10,10));
    curveVertex(1282,720);
    curveVertex(1282,720);
    endShape();
    setoff=setoff-5;
  }
   if(delay%290==0){ ning=0;}
   translate(width/2,height/2);
   //STARS
   if(delay>10){
  for (int i = 0; i < stars.length; i++) {
    //Update the location of each star in the array
    stars[i].update();
    //Pass in the color and opacity values for the stars in the array
    stars[i].show(255-delay%30,255-delay%30,255,45+delay/10000);
  }}
   if(delay%2==0){
   if(delay>2000 && delay<2400){
    if(jolteon%2==0){
        background(0,0,0,100);
    }
    else{
      background(120+(jolteon/2),50,120-(jolteon/2),100);
    }
   }
   }
   if(delay%600==0){
     checkpoint=0;
     wave=int(random(14,24));
     form=int(random(10,15));
     radius=int(random(5,120));
     pick=random(0,2.9);
     colorr=int(random(120,255));
     strokeWeight(0.1);
     stroke(0,0,0,200);
     fill(255,255,255,255);
     if(pick<1.1){
       ellipse(0,0,radius,radius);
     }
   }
   if(checkpoint<300){   
     if(pick<1.1){
       for (int i = 0; i < LINE_O; i = i +1){
         theta = i*(360/LINE_O);
         phase=((PI)/LINE_O);
         meh = (radius*1.5+2*jolteon)*sin(wave*theta+phase)*cos(phase);
         osx=(40+meh)*cos(theta);
         osy=(40+meh)*sin(theta);
         stroke(colorr,180,200,1);
         strokeWeight(15);
         point(osx,osy);
         stroke(colorr,180,200,2);
         strokeWeight(12);
         point(osx,osy);
         stroke(colorr,180,200,3);
         strokeWeight(9);
         point(osx,osy);
         stroke(colorr,180,200,4);
         strokeWeight(6);
         point(osx,osy);
         stroke(colorr,180,200,5);
         strokeWeight(3);
         point(osx,osy);
         stroke(colorr,180,200,255-checkpoint/2);
         strokeWeight(1.5);
         point(osx,osy);
       }
     }
    else{
      for (int i = 0; i < LINE_O; i = i +1){
      theta = i*(360/LINE_O);
      phase=((PI)/LINE_O);
      meh = (150)*sin(form*theta+phase)*cos(phase);
      osx=(40+meh)*cos(theta);
      osy=(40+meh)*sin(theta);
      spacing = 280;
      stroke(colorr,200,250,28);
      strokeWeight(1);
      osx=osx-checkpoint*.9;
      point(osx,osy);
      point(osx-spacing,osy);
      point(osx+spacing,osy);
      point(osx-spacing*2,osy);
      point(osx+spacing*2,osy);
      osx=osx+1.9*checkpoint;
      point(osx-spacing,osy-spacing);
      point(osx-spacing,osy+spacing);
      point(osx+spacing,osy+spacing);
      point(osx+spacing,osy-spacing);
      point(osx,osy-spacing);
      point(osx,osy+spacing);
      point(osx-spacing*2,osy-spacing);
      point(osx+spacing*2,osy+spacing);
      point(osx-spacing*2,osy+spacing);
      point(osx+spacing*2,osy-spacing);
      }
    }
  checkpoint=checkpoint+1;
  }
  translate(-width/2,-height/2);
  if(jolteon<150){
    if(flareon==0){
      jolteon = jolteon+1;
    }
    else{
      if(jolteon==-150){
        flareon=0;
      }
      else{
      jolteon=jolteon-1;
      }
    }
  }
  else{
    jolteon=jolteon-1;
    flareon=1;
    }
  if(jolteon==150){
    doors=1;
    open =int(random(0.9,3.9));
    diag =int(random(0.9,3.9));
    fire=random(2.5,5);
    ball=random(2.5,5);
    }
    if(jolteon==50){
      doors=0;
    }
    if(doors==1){
      //Triangles in the corners closing
      if(open==1){
        fill(random(150,255),jolteon/2,jolteon/2,random(5,15));
        stroke(jolteon*random(1,5),jolteon*random(1,5),jolteon*random(1,5),25-random(2,11));
        //Determine whether to display one or two diagonals
        if(diag==1){
          triangle(0,0,width/2+6*(160-jolteon),0,0,height/2+3*(170-jolteon));
          triangle(width,height,width/2-6*(160-jolteon),height,width,height/2-3*(170-jolteon));
        }
        if(diag==2){
          triangle(width,0,width/2-6*(160-jolteon),0,width,height/2+3*(170-jolteon));
          triangle(0,height,width/2+6*(160-jolteon),height,0,height/2-3*(170-jolteon));
        }
        else{
          triangle(width,0,width/2-6*(160-jolteon),0,width,height/2+3*(170-jolteon));
          triangle(0,height,width/2+6*(160-jolteon),height,0,height/2-3*(170-jolteon));
          triangle(0,0,width/2+6*(160-jolteon),0,0,height/2+3*(170-jolteon));
          triangle(width,height,width/2-6*(160-jolteon),height,width,height/2-3*(170-jolteon));
        }
      }
      if(open==2){
        //Moving Triangles
        stroke(200,140+jolteon,180-jolteon,5);
        strokeWeight(15-jolteon/15);
        noFill();
        //Top Row
        triangle(-200+jolteon,0,-100+jolteon,0,-150+jolteon,150);
        triangle(-100+jolteon,0,0+jolteon,0,-50+jolteon,150);
        triangle(0+jolteon,0,100+jolteon,0,50+jolteon,150);
        triangle(100+jolteon,0,200+jolteon,0,150+jolteon,150);
        triangle(200+jolteon,0,300+jolteon,0,250+jolteon,150);
        triangle(300+jolteon,0,400+jolteon,0,350+jolteon,150);
        triangle(400+jolteon,0,500+jolteon,0,450+jolteon,150);
        triangle(500+jolteon,0,600+jolteon,0,550+jolteon,150);
        triangle(600+jolteon,0,700+jolteon,0,650+jolteon,150);
        triangle(700+jolteon,0,800+jolteon,0,750+jolteon,150);
        triangle(800+jolteon,0,900+jolteon,0,850+jolteon,150);
        triangle(900+jolteon,0,1000+jolteon,0,950+jolteon,150);
        triangle(1000+jolteon,0,1100+jolteon,0,1050+jolteon,150);
        triangle(1100+jolteon,0,1200+jolteon,0,1150+jolteon,150);
        triangle(1200+jolteon,0,1300+jolteon,0,1250+jolteon,150);
        //Bottom Row
        triangle(-200+jolteon,height,-100+jolteon,height,-150+jolteon,height-150);
        triangle(-100+jolteon,height,0+jolteon,height,-50+jolteon,height-150);
        triangle(0+jolteon,height,100+jolteon,height,50+jolteon,height-150);
        triangle(100+jolteon,height,200+jolteon,height,150+jolteon,height-150);
        triangle(200+jolteon,height,300+jolteon,height,250+jolteon,height-150);
        triangle(300+jolteon,height,400+jolteon,height,350+jolteon,height-150);
        triangle(400+jolteon,height,500+jolteon,height,450+jolteon,height-150);
        triangle(500+jolteon,height,600+jolteon,height,550+jolteon,height-150);
        triangle(600+jolteon,height,700+jolteon,height,650+jolteon,height-150);
        triangle(700+jolteon,height,800+jolteon,height,750+jolteon,height-150);
        triangle(800+jolteon,height,900+jolteon,height,850+jolteon,height-150);
        triangle(900+jolteon,height,1000+jolteon,height,950+jolteon,height-150);
        triangle(1000+jolteon,height,1100+jolteon,height,1050+jolteon,height-150);
        triangle(1100+jolteon,height,1200+jolteon,height,1150+jolteon,height-150);
        triangle(1200+jolteon,height,1300+jolteon,height,1250+jolteon,height-150);
        //line(vv(jolteon)*20+width/2,xx(jolteon)*15+height/2,-vv(jolteon)*20+width/2,-xx(jolteon)*15+height/2);
        //line(vv(jolteon+10)*20+width/2,xx(jolteon+10)*15+height/2,-vv(jolteon+10)*20+width/2,-xx(jolteon+10)*15+height/2);
        //point(xx(jolteon),vv(jolteon));      
      }
      if(open==3){
        stroke(random(200,255),random(100,120),random(180,240),35);
        strokeWeight(0.8);
        line(0,0,0,height);
        line(0+5.9*(160-jolteon),0,0+5.8*(160-jolteon),height);
        line(0+3.7*(160-jolteon),0,0+3.7*(160-jolteon),height);
        line(0+1.5*(160-jolteon),0,0+1.5*(160-jolteon),height);
        line(width-5.9*(160-jolteon),0,width-5.8*(160-jolteon),height);
        line(width-3.7*(160-jolteon),0,width-3.7*(160-jolteon),height);
        line(width-1.5*(160-jolteon),0,width-1.5*(160-jolteon),height);
        line(width,0,width,height);
      }
    }
    if(delay%160==0){
      rando =random(-100,100);
      m =random(-100,100);
      size = 1;
      varry = int(random(1,3));
      noStroke();
      fill(170+jolteon,30,120+(m),2);
      quad(0,0,width,0,width,height,0,height);
    }
    translate(width/2,height/2);
    stroke(jolteon+150,size+800,100-rando,40);
    fill(250-2*jolteon,50+jolteon,size,4);
    strokeWeight(.1);
    if(varry==1){
      ellipse(rando,m,size*9,size*9);
    }
    if(varry==2){
      triangle((rando),m-7*size,rando-11*size,m+7*size+7*size,rando+11*size,m+7*size+7*size);
    }
    if(varry==3){
      quad((rando)-(7*size),m-7*size,rando+(7*size)+(7*size),m-7*size,(rando+7*size)+(7*size),m+7*size+(7*size),rando-size*7,m+7*size+7*size);
    }
    if(delay%103==0){
      numb =random(-100,100);
      er =random(-100,100);
      varryable = int(random(1,3));
      sizer = 1;
    }
    stroke(jolteon-150,sizer-100,100+numb,40);
    fill(150+2*jolteon,80-jolteon-er,200-sizer,4);
    strokeWeight(.1);
    if(varryable==2){
      ellipse(numb,er,sizer*9,sizer*9);
    }
    if(varryable==3){
      triangle((numb),er-7*sizer,numb-11*sizer,er+7*sizer+7*sizer,numb+11*sizer,er+7*sizer+7*sizer);
    }
    if(varryable==1){
      quad((numb)-(7*sizer),er-7*sizer,numb+(7*sizer)+(7*sizer),er-7*sizer,(numb+7*sizer)+(7*sizer),er+7*sizer+(7*sizer),numb-sizer*7,er+7*sizer+7*sizer);
    }
    size=size+.7;
    sizer=sizer+.7;
    if(delay%380==0){
      check =1;
      umbreon=1;
      gen = random(0.1,3);
    }
    
    if(check==1){
      noStroke();
      fill(rando+80,m,numb+80,2);
      ellipse(v(umbreon)*3,2*jolteon,30+umbreon*5,30+umbreon*5);
      fill(150+jolteon,150,150-jolteon,2);
      if(gen<1){
        ellipse(y(umbreon)*2,-jolteon,5+umbreon*8,5+umbreon*8);
      }
      else if(gen<2){
        ellipse(-jolteon,y(umbreon)*2,5+umbreon*8,5+umbreon*8);
      }
      else{
        ellipse(x(umbreon),z(umbreon)*2,5+umbreon*5,5+umbreon*5);
      }
      umbreon=umbreon+1;
      if(umbreon==250){
        check=0;
      }
    }
    translate(-width/2,-height/2);
    t = t +.5;
    u = u+.1;
}

//Function Documentation
float x(float t) {
 return sin(t/10)*100+sin(t/5)*random(45,50); 
}
float y(float t) {
 return cos(t/15) * 100; 
}  
float z(float t) {
 return sin(t*5) / 30; 
}  
float v(float t) {
 return sqrt((50*50)-(t*t)); 
}  
float vv(float t) {
 return cos((t*t))*220; 
}  
float xx(float t) {
 return sin((t*t))*220; 
}  
//Class Documentation
class Bolt{
  float xbolt;
  float ybolt;
  float trans;
  float mod = random(-10,10);
  float ifier= random(-10,10);
  float mody = random(-10,10);
  Bolt(float soh, float cah, float toa)
  {
    xbolt = cah; ybolt = soh; trans =toa;
  }
  void render(){
    ybolt = ybolt*3;
    strokeWeight(0.1);
    fill(trans,100-trans,0,0);
    stroke(0,0,0,trans);
    beginShape();
    curveVertex(xbolt,ybolt+750);
    curveVertex(xbolt,ybolt+720);
    curveVertex(xbolt+mod,ybolt+700);
    curveVertex(xbolt-mody,ybolt+650);
    curveVertex(xbolt-ifier,ybolt+600);
    curveVertex(xbolt+mody,ybolt+590);
    curveVertex(xbolt+2*mod,ybolt+535);
    curveVertex(xbolt+ifier,ybolt+420);
    curveVertex(xbolt+2.1*mod,ybolt+355);
    curveVertex(xbolt+2.9*ifier,ybolt+290);
    curveVertex(xbolt+2.9*mody,ybolt+330);
    curveVertex(xbolt-1*ifier,ybolt+180);
    curveVertex(xbolt-2*mod,ybolt+105);
    curveVertex(xbolt+2.6*ifier,ybolt+50);
    curveVertex(xbolt-2.2*mod,ybolt);
    curveVertex(xbolt+1.4*ifier,ybolt-50);
    curveVertex(xbolt-2.4*mod,ybolt-115);
    curveVertex(xbolt-1.1*ifier,ybolt-160);
    curveVertex(xbolt+1.2*mod,ybolt-205);
    curveVertex(xbolt+2,ybolt-240);
    curveVertex(xbolt+1-ifier,ybolt-295);
    curveVertex(xbolt+2.2*mody,ybolt-420);
    curveVertex(xbolt+2.2*mod,ybolt-390);
    curveVertex(xbolt+ifier,ybolt-465);
    curveVertex(xbolt,ybolt-525);
    curveVertex(xbolt,ybolt-600);
    curveVertex(xbolt,ybolt-601);
    endShape();
  }
}
  
class Star {
  float x; float y; float z;float pz;
  Star() {
  
    // I place values in the variables
    x = random(-width/2, width/2);
    // note: height and width are the same: the canvas is a square.
    y = random(-height/2, height/2);
    // note: the z value can't exceed the width/2 (and height/2) value,
    // beacuse I'll use "z" as divisor of the "x" and "y",
    // whose values are also between "0" and "width/2".
    z = random(width/2);
    // I set the previous position of "z" in the same position of "z",
    // which it's like to say that the stars are not moving during the first frame.
    pz = z;
  }
  void update() {
    z = z - speed;
    if (z < 1) {
      z = width/2;
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      pz = z;
    }
  }

  void show(float uno, float dos, float tres, float quatro) {
    fill(uno,dos,tres,quatro);
    noStroke();
    //noFill();
    //stroke(255,255,255,20);

    float sx = map(x / z, 0, 1, 0, width/2);
    float sy = map(y / z, 0, 1, 0, height/2);;

    // I use the z value to increase the star size between a range from 0 to 16.
    float r = map(z, 0, width/2, 3, 0);
    ellipse(sx, sy, r-.8, r-.8);

    // Here i use the "pz" valute to get the previous position of the stars,
    // so I can draw a line from the previous position to the new (current) one.
    float px = map(x / pz, 0, 1, 0, width/2);
    float py = map(y / pz, 0, 1, 0, height/2);

    // Placing here this line of code, I'm sure the "pz" value are updated after the
    // coordinates are already calculated; in this way the "pz" value is always equals
    // to the "z" value of the previous frame.
    pz = z;

    stroke(uno,dos,tres,quatro);
    strokeWeight(1);
    line(px, py, sx, sy);
  }
}
