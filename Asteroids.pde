class Asteroid extends Floater
{
	private int myRotSpeed; 
	private int  mult = (int)((Math.random()*6)+2);
	Asteroid(){
		corners = 8;
    	xCorners = new int[]{-1,1,2,2,1,-1,-2,-2};   
  		yCorners = new int[]{2,2,1,-1,-2,-2,-1,1};   
  		myColor = 255;   
  		myCenterX = 100;
  		myCenterY = 100;
  		myDirectionX = (double)(Math.random()*4)-2;
  		myDirectionY = (double)(Math.random()*4)-2;
  		myPointDirection = 0;
  		myRotSpeed = (int)(Math.random()*20)-10;
	}
	public void sizeUp(){
		for(int i = 0;i < corners;i++){
			
			xCorners[i] = xCorners[i] * mult;
			yCorners[i] = yCorners[i] * mult;
		}
	}
	public void move(){
	    turn(myRotSpeed); 
	    myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;    
	    if(myCenterX >width)
	    {     
	      myCenterX = 0;    
	    }    
	    else if (myCenterX<0)
	    {     
	      myCenterX = width;    
	    }    
	    if(myCenterY >height)
	    {    
	      myCenterY = 0;    
	    } 
	    
	    else if (myCenterY < 0)
	    {     
	      myCenterY = height;    
	    }
	}
}