ArrayList balls;

void setup() {
  size(480,854);
  balls = new ArrayList();
}

void draw() {
  background(250,250,245);
  for (int i=balls.size()-1; i>=0; i--) {
    Ball b = (Ball) balls.get(i);
    b.update();
    if (b.dead) {
      balls.remove(i);
    }
    b.render();
  }
  
  if (random(1)<.05) {
    balls.add(new Ball());
  }
}


// this function is called from outside of this script
//   when the window is resized
void resize(float X, float  Y) {
  size(X,Y); // calling this many times will break 3d renderers
}


// balls!
// just something I threw together to test this
class Ball {
  PVector loc;
  PVector vel;
  float r;
  boolean dead;
  float spin;
  float damp;
  int bounces;
  
  Ball() {
    float hd = random(-1,1);
    loc = new PVector(width/2+hd*90,-20);
    vel = new PVector(hd/3+random(-.1,.1), random(4,6));
    r=7+random(3);
    damp = map(r, 7,10, .8,.7);
    spin = hd*4 + random(-1,1);
    if (spin>0) {
      spin++;
    } else {
      spin--;
    }
    bounces = 0;
  }
  
  void update() {
    vel.y+=.4;
    loc.x+=vel.x;
    loc.y+=vel.y;
    
    if (loc.y>height-r) {
      vel.y = -abs(vel.y)*damp;
      loc.y = height-r;
      vel.x += spin;
      spin *= .5;
      bounces++;
    }
    
    if (this.loc.x<-20 || this.loc.x>width+20 || this.loc.y>height+20 ) {
      dead = true;
    }
  }
  
  void render() {
    fill(30,30,30);
    ellipse(loc.x, loc.y, r*2, r*2);
  }
}
