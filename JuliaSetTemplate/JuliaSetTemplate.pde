
float c=.28;
float imag=0.011198;
float w = 2.5;
float maxiterations = 100;
float delay=0;
void setup() {
  size(1080, 1080);
  colorMode(RGB, .95,.40,.3);
}
void draw() {
  //delay=delay+.0000001;
  c =c+.0001;
  background(0);
 //imag=imag+.00001; 
  //translate(1,1);
  //imag=imag-.00001;
  // Establish a range of values on the complex plane
  // A different range will allow us to "zoom" in or out on the fractal
  // It all starts with the width, try higher or lower values
  float h = (w * height) / width;

  // Start at negative half the width and height
  float xmin = -w/2;
  float ymin = -h/2;

  // Make sure we can write to the pixels[] array.
  // Only need to do this once since we don't do any other drawing.
  loadPixels();
  // Maximum number of iterations for each point on the complex plane
 // int maxiterations = 100;
maxiterations = maxiterations+delay;
  // x goes from xmin to xmax
  float xmax = xmin + w;
  // y goes from ymin to ymax
  float ymax = ymin + h;

  // Calculate amount we increment x,y for each pixel
  float dx = (xmax - xmin) / (width);
  float dy = (ymax - ymin) / (height);

  // Start y
  float y = ymin;
  for (int j = 0; j < height; j=j+int(random(1,2.5))) {
    // Start x
    float x = xmin;
    for (int i = 0; i < width; i=i+int(random(1,2.5))) {

      // Now we test, as we iterate z = z^2 + cm does z tend towards infinity?
      float a = x;
      float b = y;
      int n = 0;
      while (n < maxiterations) {
        float aa = a * a;
        float bb = b * b;
        float twoab = 2.0 * a * b ;
        a = aa - bb + c;
        b = twoab + imag;
        // Infinty in our finite world is simple, let's just consider it 16
        if (a*a + b*b > 16.0) {
          break;  // Bail
        }
        n++;
      }

      // We color each pixel based on how long it takes to get to infinity
      // If we never got there, let's pick the color black
      //if (n == maxiterations) {
     //   pixels[i+j*width] = color(0);
     // } else {
        // Gosh, we could make fancy colors here if we wanted
        
          pixels[i+j*width] = color(sqrt(float(n)/maxiterations),float(n)/maxiterations,sqrt(float(n)/maxiterations));
        
       
     // }
      x += dx;
    }
    y += dy;
  }
  updatePixels();
  //println(frameRate);
  //saveFrame("JuliaSetPink.png");
}
