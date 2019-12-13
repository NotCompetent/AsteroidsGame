class Bullet extends Floater
{
	Bullet(){
		corners = 8;
    	xCorners = new int[]{-1,1,2,2,1,-1,-2,-2};   
  		yCorners = new int[]{2,2,1,-1,-2,-2,-1,1};   
  		myColor = 0;   
  		myCenterX = 100;
  		myCenterY = 100;
  		myDirectionX = 0;
  		myDirectionY = 0;
  		myPointDirection = 0;
	}
}