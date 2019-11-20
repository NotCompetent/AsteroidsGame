class Asteroid extends Floater
{
	Asteroid(){
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
	public void sizeUp(){
		int mult = (int)((Math.random()*6)+2);
		for(int i = 0;i < corners;i++){
			
			xCorners[i] = xCorners[i] * mult;
			yCorners[i] = yCorners[i] * mult;
		}
	}
	public void move(){
		int speed = (int)((Math.random()*6)+2);
		turn(speed);
	}
}