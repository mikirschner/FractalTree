private double fractionLength = 0.8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() {
  size(640,480);
  noLoop();
}
public void draw() {
  background(0);   
  stroke(237, 203, 242);   
  line(320,480,320,380);   
  drawBranches(320,380,60,-PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) {   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  int x1 = (int)(branchLength*Math.cos(angle1)+x);
  int y1 = (int)(branchLength*Math.sin(angle1)+y);
  int x2 = (int)(branchLength*Math.cos(angle2)+x);
  int y2 = (int)(branchLength*Math.sin(angle2)+y);
  line(x,y,x1,y1);
  line(x,y,x2,y2);
  if (branchLength > smallestBranch) {
    drawBranches(x1,y1,branchLength*fractionLength,angle1);
    drawBranches(x2,y2,branchLength*fractionLength,angle2);
  }
} 