PGraphics tableCanvas;
int textColor = 255;
int background = 0;
ObstacleCourse boundaries = new ObstacleCourse();
ObstacleCourse container = new ObstacleCourse();

boolean redraw = true;

void setup() {
  size(1000, 500);
  initPathfinder(20);
}

void draw() {
  
  if (redraw) {
    background(background);
    
    drawPathfinder();
    
    redraw = false;
  }
  
}

class ObstacleCourse {
  
  ObstacleCourse() {
    
  }
  
  boolean testForCollision(PVector v) {
    return false;
  }
}
