//your variable declarations here
Spaceship alice;
Star willis[];
public void setup() 
{
  //your code here
  size(800,600);
  alice = new Spaceship();
  willis = new Star[20];
  for(int i = 0; i < willis.length; i++){
  	willis[i] = new Star();
  	willis[i].setMyX((int)((Math.random()*400)+200));
  	willis[i].setMyY((int)((Math.random()*400)+100));
  }
}
public void draw() 
{
	background(255);
  	fill(135,206,250);
  	stroke(135,206,250);
  	rect(200,100,400,400);
  	fill(255,255,255);
  	stroke(0,0,0);
  	for(int i = 0; i < willis.length; i++){
  		willis[i].show();
  	}
	alice.show();
	alice.move();
  //your code here
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
