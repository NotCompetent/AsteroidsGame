class Spaceship extends Floater  
{   
    //your code here
    Spaceship(){
    	corners = 4;
    	xCorners = new int[]{-4,-4,4,4};   
  		yCorners = new int[]{-4,4,4,-4};   
  		myColor = 0;   
  		myCenterX = 0;
  		myCenterY = 0; //holds center coordinates   
  		myDirectionX = 0;
  		myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
  		myPointDirection = 0; //holds current direction the ship is pointing in degrees    

    }
    void show(){
    	beginShape();
      	for(int i = 0; i < 4; i++){
       		vertex(xCorners[i],yCorners[i]);
       	}
       	vertex(xCorners[0],yCorners[0]);
       	endShape(CLOSE);
    }
}
