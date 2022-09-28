//------------- Initialize Pathfinding Objects

Pathfinder finderTopo, finderMargin;

// Pathfinder test and debugging Objects
Pathfinder finderTest;
PVector A, B;
ArrayList<PVector> testPath, testVisited;

void initPathfinder(int res) {
  finderTopo = new Pathfinder(width, height, res, boundaries);
  finderMargin = new Pathfinder(width, height, res, container);
  
  initOD();
  initNetwork(10, 0.55);
  initPath(finderTest, A, B);
  
  // Ensures that a valid path is always initialized upon start
  while (testPath.size() < 2) {
    println("Generating new origin-destination pair ...");
    initOD();
    initPath(finderTest, A, B);
  }
}

void initNetwork(int res, float cullRatio) {
  finderTest = new Pathfinder(width, height, res, cullRatio);
}

void initPath(Pathfinder finder, PVector A, PVector B) {
  testPath = finder.findPath(A, B);
  testVisited = finder.getVisited();
}

void initOD() {
  A = new PVector(random(1.0)*width, random(1.0)*height);
  B = new PVector(random(1.0)*width, random(1.0)*height);
}
