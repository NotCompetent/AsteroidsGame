class Spaceship extends Floater  
{   
    //your code here
    Spaceship(){
    	corners = 7;
    	xCorners = new int[]{-8,12,12,8,8,-8,-8};   
  		yCorners = new int[]{12,12,8,8,-12,-12,12};   
  		myColor = 192;   
  		myCenterX = 300;
  		myCenterY = 300;  
  		myDirectionX = 0;
  		myDirectionY = 0;
  		myPointDirection = 0;  

    }
    public void hyperspace(){
    	myCenterY = Math.random()*550;
    	myCenterX = Math.random()*550;
    	myPointDirection = Math.random()*360;
    	myDirectionX = 0;
  		myDirectionY = 0;
    }
    public void showHead(){
    	fill(255,218,185);
	    stroke(255,218,185);
	    ellipse((float)myCenterX,(float)myCenterY,12,12);
	    stroke(0,0,0);
	    fill(255);
    }
    public float getMyCenterX(){
    	return (float) myCenterX;
    }
    public float getMyCenterY(){
    	return (float) myCenterY;
    }
}
