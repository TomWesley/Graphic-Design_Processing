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
int granularity = 1;
float wave = 0;
void setup() {
  //background(0);
  size(1280,720);
  //background(255,244,244);
 // img = loadImage("Texture1.jpg");
 colorMode(RGB);
  
}

void draw() {
 // save("ThousandEyedWall.png");
  wave = wave + .00001;
  delay=delay+.1;
  background(0);
  //translate(width/2,height/2);
  strokeWeight(.11);
  noFill();
  stroke(255,255,255,255);

 noFill();
 
 for (int j =0;j<=width;j = j+granularity){
   for (int k = 0;k<=height; k = k+granularity){
    PVector uv = new PVector(j* 2.0 - (width*height) / height, k * 2.0 - (width*height) / height);
    PVector uv0 = uv;
    float[] finalColor = new float[3];
    
    for(int i = 0; i<3; i++){
      finalColor[i] = 0;
    } 
    
    for (float i = 0.0; i < 4.0; i++) {
        uv = new PVector((uv.x * 1.5)-floor(uv.x*1.5) - 0.5,(uv.y * 1.5)-floor(uv.y*1.5) - 0.5);

        float d = mag(uv.x,uv.y) * exp(-mag(uv0.x,uv0.y));

        float[] col = new float[3];
        col = palette(mag(uv0.x,uv0.y) + i*.4 + delay*.4);

        d = sin(d*8. + delay)/8.;
        d = abs(d);
        d = pow(0.01 / d, 1.2);
        
        finalColor[0] += (col[0] * d);
        finalColor[1] += (col[1] * d);
        finalColor[2] += (col[2] * d);
        
    }
    for(int i = 0; i<3; i++){
      finalColor[i] = map(finalColor[i],0,1,0,255);
    } 
    fill(finalColor[0],finalColor[1],finalColor[2],255);
    
    //print(finalColor[0]+ " ");
    //fill(255);
    noStroke();
    ellipse(j,k,1,1);    
    //fragColor = vec4(finalColor, 1.0);
}
 }
}

float[] palette( float t ) {
    float[] a = new float[3];
    a[0] = 0.5;  // Assign value to first element in the array
    a[1] = 0.5; // Assign value to second element in the array
    a[2] = 0.5;
    
    float[] b = new float[3];
    b[0] = 0.5;  // Assign value to first element in the array
    b[1] = 0.5; // Assign value to second element in the array
    b[2] = 0.5;
    
    float[] c = new float[3];
    c[0] = 1;  // Assign value to first element in the array
    c[1] = 1; // Assign value to second element in the array
    c[2] = 1;
    
    float[] d = new float[3];
    d[0] = 0.263;  // Assign value to first element in the array
    d[1] = 0.416; // Assign value to second element in the array
    d[2] = 0.557;
    float [] temp = new float[3];
    for(int i = 0; i<3; i++){
      temp[i] = a[i]+b[i]*cos(6.28318  * ((c[i] * t) +d[i]));
     // temp[i] = temp[i]*cos(6.28318  * ((c[i] * t) +d[i]));
    } 
    return temp;
}
