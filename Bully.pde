class Bully extends Floater
{
  Bully(double turn, double x, double y) {
    corners = 5;
    xCorners = new int[]{12, 12, -12, -12, 12};   
    yCorners = new int[]{8, -8, -8, 8, 8};   
    myColor = 192;   
    myCenterX = x;
    myCenterY = y;  
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = turn;
  }
  public void show ()  //Draws the floater at the current position  
  {             
    fill(255, 0, 0);   
    stroke(255, 0, 0);  

    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
  public void showHead() {
    fill(255, 218, 185);
    stroke(255, 218, 185);
    ellipse((float)myCenterX, (float)myCenterY, 12, 12);
    stroke(0, 0, 0);
    fill(255);
  }
  public float getMyCenterX() {
    return (float) myCenterX;
  }
  public float getMyCenterY() {
    return (float) myCenterY;
  }
}
