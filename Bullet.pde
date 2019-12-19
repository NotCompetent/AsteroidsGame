class Bullet extends Floater
{
  Bullet(Spaceship theShip) {
    corners = 8;
    xCorners = new int[]{-1, 1, 2, 2, 1, -1, -2, -2};   
    yCorners = new int[]{2, 2, 1, -1, -2, -2, -1, 1};   
    myColor = 0;   
    myCenterX = theShip.getMyCenterX();
    myCenterY = theShip.getMyCenterY();
    myDirectionX = theShip.getMyDirectionX();
    myDirectionY = theShip.getMyDirectionY();
    myPointDirection = theShip.getMyPointDirection();
  }
  public void show() {
    fill(0);
    stroke(0);
    ellipse((int)myCenterX, (int)myCenterY, 5, 5);
  }
  public int getMyCenterX() {
    return (int)myCenterX;
  }
  public int getMyCenterY() {
    return (int)myCenterY;
  }
}
