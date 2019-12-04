//make fish transparent and adjust x and y
Spaceship alice;
Star willis[];
Asteroid picchy[];
public void setup() 
{
  size(800,600);
  alice = new Spaceship();
  willis = new Star[20];
  picchy = new Asteroid[20];
  for(int i = 0; i < willis.length; i++){
  	willis[i] = new Star();
  	willis[i].setMyX((int)((Math.random()*400)+200));
  	willis[i].setMyY((int)((Math.random()*400)+100));
  }
  for(int i = 0; i < picchy.length; i++){
  	picchy[i] = new Asteroid();
  	picchy[i].sizeUp();
  	picchy[i].myCenterX = ((int)((Math.random()*400)+200));
  	picchy[i].myCenterY = ((int)((Math.random()*400)+100));
  }
  
}
public void draw() 
{
	int [] lakeBorderX = {100,150,200,250,300,350,400,450,500,550};
  	int [] lakeBorderY = {40,40,40,40,40,40,40,40,40,40};
	background(255);
  	fill(135,206,250);
  	stroke(135,206,250);
  	rect(100,50,600,500);
  	ellipse(100,300,150,500);
  	ellipse(700,300,150,500);
  	fill(255,255,255);
  	for(int i = 0; i < lakeBorderX.length;i++){
  		 	snowBoy(lakeBorderX[i],lakeBorderY[i],0);
  	}
 
  	stroke(0,0,0);
  	for(int i = 0; i < willis.length; i++){
  		willis[i].show();
  	}
  	for(int i = 0; i < picchy.length; i++){
  		picchy[i].show();
  		picchy[i].move();
  	}
	alice.show();
	alice.showHead();
	alice.move();
}
public void keyPressed(){
	if(key == 'a'){
		alice.turn(-5);
		System.out.println("BLOOP");
	}
	if(key == 'd'){
		alice.turn(5);
		//System.out.println("hi");
	}
	if(key =='w'){
		alice.accelerate(.2);
		//System.out.println("key");
	}
	if(key =='s'){
		alice.accelerate(-.2);
		//System.out.println("key");
	}
	if(key == 'r'){
		alice.hyperspace();
	}
}

public void snowBoy(int x,int y,int turn){
	int myX = x;
	int myY = y;
	float dRadians = (float)(turn*(Math.PI/180));
    rotate(dRadians);
    beginShape();
    fill(255,0,0);
    stroke(255,0,0);
    vertex(myX + 12,myY + 8);
    vertex(myX + 12,myY - 8);
    vertex(myX - 12,myY - 8);
    vertex(myX - 12,myY + 8);
    vertex(myX + 12,myY + 8);
    endShape(CLOSE);
    fill(255,218,185);
    stroke(255,218,185);
    ellipse(myX,myY,12,12);
    stroke(0,0,0);
    fill(255);
}