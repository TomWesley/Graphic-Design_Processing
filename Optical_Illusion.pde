//Optical Illusion consisting of horizontal and diagonal lines
//Coder: Thomas Wesley 
//Last Edit 9/28/2018
//Title: Hundred-Eyes Wall
//Variable Declarations
float i;
float jolteon=800;
int flareon=0;
int LINE_C = 220;
int black_lodge =600;
void setup() {
  //Adjust the size of the output frame with size(width, height) This setup is a traditional HD Dimension of 1280 x 720.
  size(1280, 720);
}
void draw() {
//Toggle save by removing the comment in front of the line below, 
//this will produce the specified file in the folder containing this code.
//save("Optics.png");

//Two for loops to cycle through locations throughout the frame to place the pattern
for(int j=-1;j<16;j=j+1)
{
  //Use Translate to 
  translate(j*90,j*37);
  for(i=-594; i < black_lodge; i =i+6)
  {
    if(i%12==0)
      {
      noStroke();
      fill(128,0,00,240);
      } 
    else
      {
      noStroke();
      fill(255,253,208,240);
      }
    quad(-i+3,i,-i+50,i,-i+47,i+3,-i,i+3);
    quad(-i+50,i,-i+47,i+3,-i+90,i+40,-i+93,i+37);
    if(i%12==0)
      {
      noStroke();
      fill(0,55,0,240);
      }
    else
      {
      noStroke();
      fill(0,0,0,240);
      }
    quad(-i,i+3,-i+47,i+3,-i+44,i+6,-i-3,i+6);
    quad(-i+47,i+3,-i+44,i+6,-i+87,i+43,-i+90,i+40);
  }
  translate(-j*90,-j*37);
}
translate(width/2,height/2); //Translate the frame so it can be treated as a coordinate plane with the middle at the center instead of top left
//Opaque ellipses under the pattern to add apparent motion via different shaded regions
noStroke();
fill(70,0,60,15);
ellipse(0,0,900,900);
ellipse(-width/2,-height/2,900,900);
ellipse(-width/2,height/2,900,900);
ellipse(width/2,height/2,900,900);
ellipse(width/2,-height/2,900,900);

translate(-width/2,-height/2);//Return to original framing 
} // End Draw

//Classes and Functions

//Trigonomic Functions 
float x(float t) {
 return sin(t/10)*100+sin(t/5); 
}
float y(float t) {
 return cos(t/15) * 100; 
}  
