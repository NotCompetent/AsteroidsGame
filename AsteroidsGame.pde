//your variable declarations here
Spaceship alice;
//Bulli[] keyboard;
public void setup() 
{
  //your code here
  size(600,600);
  alice = new Spaceship();
}
public void draw() 
{
	background(192);
	alice.show();
	alice.move();
  //your code here
}
public void keyPressed(){
	if(key == 'a'){
		alice.turn(1);
		System.out.println("BLOOP");
	}
	if(key == 'd'){
		alice.turn(-1);
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
}
