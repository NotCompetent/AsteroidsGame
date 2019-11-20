class Spaceship extends Floater  
{   
    //your code here
    Spaceship(){
    	corners = 4;
    	xCorners = new int[]{-5,-5,15,15};   
  		yCorners = new int[]{-5,5,0,0};   
  		myColor = 0;   
  		myCenterX = 300;
  		myCenterY = 300;  
  		myDirectionX = 0;
  		myDirectionY = 0;
  		myPointDirection = 0;  

    }
    private void hyperspace(){
    	myCenterY = Math.random()*550;
    	myCenterX = Math.random()*550;
    	myPointDirection = Math.random()*360;
    	myDirectionX = 0;
  		myDirectionY = 0;
    }
}
