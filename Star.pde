class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY;
  Star() {
    myX = 0;
    myY = 0;
  }
  public void setMyX(int x) {
    myX = x;
  }
  public void setMyY(int y) {
    myY = y;
  }
  public void show()
  {
    fill(255, 69, 0);
    stroke(255, 69, 0);
    ellipse(myX, myY, 10, 5);
    beginShape();
    vertex(myX+5, myY);
    vertex(myX+8, myY+3);
    vertex(myX+8, myY-3);
    endShape(CLOSE);
    stroke(0, 0, 0);
    fill(0, 0, 0);
  }
}
