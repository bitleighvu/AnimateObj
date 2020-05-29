// 3D Scene Example
// BitLeigh Vu
// Version 1.1

float time = 0;  // keep track of the passing of time

void setup() {
  size(800, 800, P3D);  // must use 3D here!
  noStroke();           // do not draw the edges of polygons
}

// Draw a scene with a cylinder, a box and a sphere
void draw() {
  
  resetMatrix();  // set the transformation matrix to the identity (important!)

  background(255, 255, 255);  // clear the screen to white

  // set up for perspective projection
  perspective (PI * 0.333, 1.0, 0.01, 1000.0);

  // place the camera in the scene
  camera (0.0, 0.0, 85.0, 0.0, 0.0, -1.0, 0.0, 1.0, 0.0);
  
  // create an ambient light source
  ambientLight (200,200, 200);
  
  pushMatrix();
  rotateY(time);
  house();
  popMatrix();
  
  // step forward the time
  time += 0.01;
}

void house() {
  
  // foundation of house 
  pushMatrix();
  fill(210, 180, 140);
  translate(0, 20, 0);
  box(60, 2, 60);
  popMatrix();
 
  // brick portion of house 
  pushMatrix();
  fill(250, 128, 114);
  translate(0, 5, 0);
  box(50, 30, 50);
  popMatrix();
  
  // door
  pushMatrix();
  fill (139, 69, 19);
  translate(-25, 12, 0);
  box(2, 14, 8);
  popMatrix();
  
  //  door knob
  pushMatrix();
  fill (255,215,0);
  translate(-26.5, 12, 3);
  scale(0.5);
  sphere(1);
  popMatrix();
  
  // window 
  pushMatrix();
  translate(-25, 6, -14);
  windowFB();
  popMatrix();
  
  // window
  pushMatrix();
  translate(-25, 6, 14);
  windowFB();
  popMatrix();
  
  // window
  pushMatrix();
  translate(25, 6, -14);
  windowFB();
  popMatrix();
  
  // window
  pushMatrix();
  translate(25, 6, 14);
  windowFB();
  popMatrix();
  
  // window
  pushMatrix();
  translate(11, 6, 25);
  windowLR();
  popMatrix();
  
  // window
  pushMatrix();
  translate(-11, 6, 25);
  windowLR();
  popMatrix();
  
  // window
  pushMatrix();
  translate(11, 6, -25);
  windowLR();
  popMatrix();

  // window
  pushMatrix();
  translate(-11, 6, -25);
  windowLR();
  popMatrix();
  
  // roof 
  pushMatrix();
  fill (112,128,144);
  translate(0, -12, 0);
  box(55, 4, 55);
  popMatrix();
  
  // chimney
  pushMatrix();
  fill(250, 128, 114);
  translate(-12, -17, 10);
  scale(10, 10, 10);
  box(1);
  popMatrix();
  
  pushMatrix();
  fill(112,128,144);
  translate(-12, -22, 10);
  box(13, 2, 13);
  popMatrix();
  
  // translated flower pot (left)
  pushMatrix();
  translate(-26, 17, -14);
  flowerpot();
  popMatrix();
  
  // grass in flower pot (left) 
  pushMatrix();
  fill(128, 128, 0);
  translate(-25, 15, -14);
  box(4, 1, 10);
  popMatrix();
  
  // scaled flowers
  pushMatrix();
  translate(-26.5, 11, -10);
  scale(.8, .8, .8);
  flower(236, 3, 252);
  popMatrix();

  pushMatrix();
  translate(-26.5, 10, -12);
  scale(1.3, 1.3, 1.3);
  flower(232, 252, 3);
  popMatrix();

  pushMatrix();
  translate(-26.5, 12, -14);
  scale(.9, .9, .9);
  flower(3, 53, 252);
  popMatrix();

  pushMatrix();
  translate(-26.5, 11, -16);
  scale(1.2, 1.2, 1.2);
  flower(252, 90, 3);
  popMatrix();

  pushMatrix();
  translate(-26.5, 12, -18);
  scale(1.4, 1.4, 1.4);
  flower(147, 121, 156);
  popMatrix();
  
  // translated flower pot (right)
  pushMatrix();
  translate(-26, 17, 14);
  flowerpot();
  popMatrix();
  
  // grass in flower pot (right)
  pushMatrix();
  fill(128,128,0);
  translate(-25, 15, 14);
  box(4, 1, 10);
  popMatrix();
  
  // scaled flowers
  pushMatrix();
  translate(-26.5, 11, 10);
  flower(255, 255, 51);
  scale(.9, .9, .9);
  popMatrix();

  pushMatrix();
  translate(-26.5, 10, 12);
  scale(1.1, 1.1, 1.1);
  flower(238, 10, 125);
  popMatrix();

  pushMatrix();
  translate(-26.5, 12, 14);
  scale(1.4, 1.4, 1.4);
  flower(220, 20, 60);
  popMatrix();

  pushMatrix();
  translate(-26.5, 11, 16);
  scale(1.1, 1.1, 1.1);
  flower(134, 22, 199);
  popMatrix();

  pushMatrix();
  translate(-26.5, 12, 18);
  scale(1.3, 1.3, 1.3);
  flower(24, 268, 236);
  popMatrix();
  
  // rotated vines
  vines();
}

// windows for front aand back of house
void windowFB() {
  // glass portion of windown
  pushMatrix();
  fill (135,206,250);
  shininess (5.0);
  box(1, 12, 8);
  popMatrix();
  
  // bottom window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(0, 5.5, 0);
  box(1, 1, 8);
  popMatrix();
  
  // top window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(0, -6, 0);
  box(1, 1, 8);
  popMatrix();
  
  // center left-to-right window railing
  pushMatrix();
  fill (255, 255, 255);
  box(1, 1, 8);
  popMatrix();
  
  // left window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(0, 0, -3.5);
  box(1, 12, 1);
  popMatrix();
  
  // right window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(0, 0, 3.5);
  box(1, 12, 1);
  popMatrix();
  
  // center up & down window railing
  pushMatrix();
  fill (255, 255, 255);
  box(1, 12, 1);
  popMatrix();
}

// windows for left aand right side of house
void windowLR() {
  
  // glass part of window 
  pushMatrix();
  fill (135,206,250);
  shininess (5.0);
  box(8, 12, 1);
  popMatrix();
  
  // bottom window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(0, 5.5, 0);
  box(8, 1, 1);
  popMatrix();
  
  // top window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(0, -6, 0);
  box(8, 1, 1);
  popMatrix();
  
  // center left-to-right window railing
  pushMatrix();
  fill (255, 255, 255);
  box(8, 1 ,1);
  popMatrix();
  
  // left window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(3.5, 0, 0);
  box(1, 12, 1);
  popMatrix();
  
  // right window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(-3.5, 0, 0);
  box(1, 12, 1);
  popMatrix();
  
  // center up & down window railing
  pushMatrix();
  fill (255, 255, 255);
  box(1, 12, 1);
  popMatrix();
}

void flower(int r, int g, int b) {
  // flower 1
  pushMatrix();
  fill (128,128,0);
  cylinder(0.3, 6, 32);
  popMatrix();
  
  pushMatrix();
  fill(r, g, b);
  sphere(0.75);
  popMatrix();
}

void flowerpot() {
  fill(255, 250, 205);
  box(3, 4, 12);
}

void vines() {
  pushMatrix();
  fill(128, 128, 0);
  translate(18, -6, 25);
  rotateZ(40);
  box(.5, 18, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(16, -4, 25);
  rotateZ(40);
  box(.5, 22.5, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(14, -3, 25);
  rotateZ(40);
  box(.5, 28, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(20, -2, 25);
  rotateZ(-40);
  box(.5, 12, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(18, -6, 25);
  rotateZ(-40);
  box(.5, 16, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(14, -6, 25);
  rotateZ(-40);
  box(.5, 14, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(20, 0, 25);
  rotateZ(-40);
  box(.5, 13, 1);
  popMatrix();
 
  pushMatrix();
  fill(128,128,0);
  translate(14, -8, 25);
  rotateZ(-40);
  box(.5, 14, 1);
  popMatrix();
}

// Draw a cylinder of a given radius, height and number of sides.
// The base is on the y=0 plane, and it extends vertically in the y direction.
void cylinder(float radius, float height, int sides) {
  int i,ii;
  float []c = new float[sides];
  float []s = new float[sides];

  for (i = 0; i < sides; i++) {
    float theta = TWO_PI * i / (float) sides;
    c[i] = cos(theta);
    s[i] = sin(theta);
  }
  
  // bottom end cap
  
  normal (0.0, -1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (0.0, 0.0, 0.0);
    endShape();
  }
  
  // top end cap

  normal (0.0, 1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    vertex (0.0, height, 0.0);
    endShape();
  }
  
  // main body of cylinder
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape();
    normal (c[i], 0.0, s[i]);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    normal (c[ii], 0.0, s[ii]);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    endShape(CLOSE);
  }
}
