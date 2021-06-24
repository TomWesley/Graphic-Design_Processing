//A ring that rotates between all of our colors, jagged edges like a descending well. Use regular vertexes and each new layer is a different color


float delay=0;
float x;
float y;
color[] telemetry =new color[6];
int chamber=0;
float opac=255;
void setup()  
{
  size(1080,1080);
background(0);

}

void draw()  
{ 
  background(0);
  telemetry[0]=color(255, 110, 150, opac);
telemetry[1] =color(255, 200, 10, opac);
telemetry[2] =color(43, 88, 222,opac);
telemetry[3] =color(53, 200, 154,opac);
telemetry[4] =color(0,0,0,opac);
telemetry[5] =color(255,255,255,opac);

delay=delay+.05;
  translate(width/2, height/2);
//rotate(delay*PI*.001);


  for(float ring=width*2-delay*delay;ring>=0;ring=ring-4){
    rotate(PI*.007);
    stroke(0);
    noStroke();
    //noStroke();
    if(chamber==6){
      chamber=0;
    }
    fill(telemetry[chamber]);
    alpha(5);
     beginShape();
    
  for(int angle=0;angle<361;angle=angle+1){
    x=(ring)*cos(radians(angle))+ring*w(angle);
    y=(ring)*sin(radians(angle))+ring*z(angle);
    vertex(x,y);
    
  }  endShape();
  chamber=chamber+1;
  }

  translate(-width/2, -height/2);
 chamber=0;
 //saveFrame("outputTwo/JaggedWell_########.png");

}

float w(float u) {
 float temp=cos(radians(u))*cos(radians(u))*cos(radians(u))*cos(radians(u))*cos(radians(u));
 //temp =temp+.1*v*log(radians(log(v)));
 return temp; 
} 
float z(float u) {
 float temp=sin(radians(u))*sin(radians(u))*sin(radians(u))*sin(radians(u))*sin(radians(u));
// temp=temp+.1*v*log(radians(log(v)));
 return temp; 
}
