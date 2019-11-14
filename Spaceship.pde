class Spaceship extends Floater  
{   
    //your code here
    Spaceship(){
    	corners = 4;
    	xCorners = new int[]{-5,-5,15,15};   
  		yCorners = new int[]{-5,5,0,0};   
  		myColor = 0;   
  		myCenterX = 300;
  		myCenterY = 300; //holds center coordinates   
  		myDirectionX = 0;
  		myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
  		myPointDirection = 0; //holds current direction the ship is pointing in degrees    

    }
}
