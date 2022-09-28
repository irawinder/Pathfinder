boolean showInfo = true;

void drawPathfinder() {
  
  // Draw background grid
  finderTest.display();
  
  // Draw Nodes Visited in order to find path solution
  strokeWeight(1);
  noFill();
  stroke(abs(textColor-125));
  for (int i=0; i<testVisited.size(); i++) {
    ellipse(testVisited.get(i).x, testVisited.get(i).y, finderTest.getResolution(), finderTest.getResolution());
  }
  
  // Draw Path Edges
  strokeWeight(2);
  stroke(#007D00);
  for (int i=0; i<testPath.size()-1; i++) {
    line(testPath.get(i).x, testPath.get(i).y, testPath.get(i+1).x, testPath.get(i+1).y);
  }
  
  //Draw Origin
  strokeWeight(2);
  stroke(#0000FF);
  noFill();
  ellipse(A.x, A.y, finderTest.getResolution(), finderTest.getResolution());
  
  fill(textColor);
  text("origin", A.x + finderTest.getResolution(), A.y);
  
  //Draw Destination
  strokeWeight(2);
  stroke(#FF0000);
  noFill();
  ellipse(B.x, B.y, finderTest.getResolution(), finderTest.getResolution());
  
//  fill(textColor);
//  text("destination", B.x + finderTest.getResolution(), B.y);
  
  //Draw Path not Found Message
  if (testPath.size() < 2) {
    textAlign(CENTER);
    fill(textColor);
    text("Path not found. Try a new origin and destination", width/2, height/2);
    textAlign(LEFT);
  }
  
  if (showInfo) {
    
    pushMatrix();
    translate(0, 10);
    
    //Draw Background Rectangle
    fill(abs(textColor-25), 200);
    noStroke();
    rect(10, 4, 0.4*width, 10*20+10 , 12, 12, 12, 12);
    
    //Draw Directions
    fill(abs(textColor-225), 255);
    text("Explanation:", 20, 20);
    text("A network, origin, and destination has been randomly generated.", 20, 40);
    text("A green line represents the shortest path.", 20, 60);
    text("Nodes are highlighted when visited by the pathfinding algorithm.", 20, 80);
    
    text("Directions:", 20, 120);
    text("Press 'r' to generate a new origin-destination pair", 20, 140);
    text("Press 'n' to generate a new network", 20, 160);
    text("Press 'b' to invert colors", 20, 180);
    text("Press 'h' to hide these directions", 20, 200);
    
    popMatrix();
  }
  
  fill(textColor);
  text("Pathfinder v1.1", 20, height - 40);
  text("Ira Winder 2015", 20, height - 20);
}
