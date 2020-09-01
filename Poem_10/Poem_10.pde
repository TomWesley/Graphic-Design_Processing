
PFont au;
PFont jo;
float delay=0;
PImage img;
PImage imgTwo;
void setup() {
  size(2080,2080);
   jo = createFont("ISB.ttf",80);
   img=loadImage("ErikaS2.png");
   imgTwo=loadImage("StarBackdrop.jpg");
   //background(0);
}

void draw() {
  delay=delay+1;
  //background(0);
  rotate(PI);
  translate(-width,-height);
  image(imgTwo,0,0,height*1.666,height);
  translate(width,height);
  rotate(-PI);
  translate(width/2,height/2);
  translate(0,height/2);
  for(float j=0; j < 1875; j=j+1) {
  noStroke();
  fill(176,196,243,55*(1-j/1875));
  ellipse(0,0,(j*j)/1400,(j*j)/1400);
  if(j>1750){
  //filter(BLUR, 1);
  }
}
translate(0,-height/2);
    

  image(img,-500,120,1000,1000);

noFill();
stroke(176,196,243,255);
strokeWeight(2);

translate(-width/2,-height/2);
  int text_spacing = 100;
    textFont(jo);
    //textSize(42);
   
    int text_gap=125;
    int text_x= width/2;
    int text_y= -130;
    
    noStroke();
    //Poem Lines
    textAlign(CENTER);
    fill(0,255);
    text("Obelisk,",text_x, text_y+2*text_gap);
    text("A Testament,",text_x, text_y+3*text_gap);
    text("To Each and Every",text_x, text_y+4*text_gap);
    text("Passing Threat.",text_x, text_y+5*text_gap);
    text("And Once Confined,",text_x, text_y+6*text_gap);
    text("In this Respect,",text_x, text_y+7*text_gap);
    text("The Luster -",text_x, text_y+8*text_gap);
    text("Has Been Lost on it.",text_x, text_y+9*text_gap);
    translate(width/400,0);
    fill(255,255);
    text("Obelisk,",text_x, text_y+2*text_gap);
    text("A Testament,",text_x, text_y+3*text_gap);
    text("To Each and Every",text_x, text_y+4*text_gap);
    text("Passing Threat.",text_x, text_y+5*text_gap);
    text("And Once Confined,",text_x, text_y+6*text_gap);
    text("In this Respect,",text_x, text_y+7*text_gap);
    text("The Luster -",text_x, text_y+8*text_gap);
    text("Has Been Lost on it.",text_x, text_y+9*text_gap);
    translate(-width/400,0);
    //save("Poem_10_Final.jpg");  
  
}


float cotan(float t) {
 return (15)*sin(radians(t))*(15)*cos(radians(t))-(13)*sin(radians(t))-0; 
}
float cub(float t) {
 return t*t*t; 
}
