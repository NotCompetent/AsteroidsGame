//make fish transparent and adjust x and y
Spaceship alice;
Star willis[];
ArrayList <Asteroid> picchy;
ArrayList <Bullet> fuwa;
ArrayList <Bully> ryan;
public void setup() 
{
  size(800, 600);
  alice = new Spaceship();
  willis = new Star[40];
  picchy = new ArrayList <Asteroid>();
  fuwa = new ArrayList <Bullet>();
  ryan = new ArrayList <Bully>();


  //fish
  for (int i = 0; i < willis.length; i++) {
    willis[i] = new Star();
    willis[i].setMyX((int)((Math.random()*400)+200));
    willis[i].setMyY((int)((Math.random()*400)+100));
  }



  //bullets
  for (int i = 0; i < 1; i++) {
    fuwa.add(new Bullet(alice)); 
    fuwa.get(i).accelerate(6);
  }

  //bullies on horizontal
  double lakeX = 100;
  for (int i = 0; i < 13; i++) {
    ryan.add(new Bully(0, lakeX, 40));
    ryan.add(new Bully(180, lakeX, 560));
    lakeX = lakeX + 50;
  }

  //bullies on vertical left
  double turn = 125;
  lakeX = 70;
  double lakeY = 55;
  ryan.add(new Bully(turn, lakeX, lakeY));
  ryan.add(new Bully(turn - 10, lakeX -25, lakeY + 40));
  ryan.add(new Bully(turn - 18, lakeX - 38, lakeY + 80));
  ryan.add(new Bully(turn - 23, lakeX- 45, lakeY + 120));
  ryan.add(new Bully(turn - 27, lakeX - 50, lakeY + 160));
  ryan.add(new Bully(turn - 32, lakeX - 55, lakeY + 200));
  ryan.add(new Bully(turn - 35, lakeX - 60, lakeY + 240));
  ryan.add(new Bully(turn - 38, lakeX - 55, lakeY + 280));
  ryan.add(new Bully(turn - 43, lakeX - 50, lakeY + 320));
  ryan.add(new Bully(turn - 47, lakeX- 45, lakeY + 360));
  ryan.add(new Bully(turn - 52, lakeX - 38, lakeY + 400));
  ryan.add(new Bully(turn - 60, lakeX -25, lakeY + 440));
  ryan.add(new Bully(turn - 70, lakeX- 5, lakeY+480));

  //bullies on vertical right;
  lakeX = 730;
  turn = 235;
  ryan.add(new Bully(turn, lakeX, lakeY));
  ryan.add(new Bully(turn + 10, lakeX +25, lakeY + 40));
  ryan.add(new Bully(turn + 18, lakeX + 38, lakeY + 80));
  ryan.add(new Bully(turn + 23, lakeX+45, lakeY + 120));
  ryan.add(new Bully(turn + 27, lakeX + 50, lakeY + 160));
  ryan.add(new Bully(turn + 32, lakeX + 55, lakeY + 200));
  ryan.add(new Bully(turn + 35, lakeX + 60, lakeY + 240));
  ryan.add(new Bully(turn + 38, lakeX + 55, lakeY + 280));
  ryan.add(new Bully(turn + 43, lakeX + 50, lakeY + 320));
  ryan.add(new Bully(turn + 47, lakeX+45, lakeY + 360));
  ryan.add(new Bully(turn + 52, lakeX + 38, lakeY + 400));
  ryan.add(new Bully(turn + 60, lakeX +25, lakeY + 440));
  ryan.add(new Bully(turn + 70, lakeX+5, lakeY+480));


  //asteroids
  for (int i = 0; i < 20; i++) {
    picchy.add(new Asteroid());
    picchy.get(i).setThrower((int)(Math.random()*52));
    if (picchy.get(i).getThrower() < 13) {
      picchy.get(i).myCenterX = ryan.get(picchy.get(i).getThrower()).getMyCenterX();
      picchy.get(i).myCenterY = ryan.get(picchy.get(i).getThrower()).getMyCenterY() + 5*picchy.get(i).getMyMult();
    }
    if (picchy.get(i).getThrower() >= 13 && picchy.get(i).getThrower() < 26) {
      picchy.get(i).myCenterX = ryan.get(picchy.get(i).getThrower()).getMyCenterX();
      picchy.get(i).myCenterY = ryan.get(picchy.get(i).getThrower()).getMyCenterY() - 5*picchy.get(i).getMyMult();
    }
    if (picchy.get(i).getThrower() >= 26 && picchy.get(i).getThrower() < 39) {
      picchy.get(i).myCenterX = ryan.get(picchy.get(i).getThrower()).getMyCenterX() + 5*picchy.get(i).getMyMult();
      picchy.get(i).myCenterY = ryan.get(picchy.get(i).getThrower()).getMyCenterY();
    }
    if (picchy.get(i).getThrower() >= 39 && picchy.get(i).getThrower() < 52) {
      picchy.get(i).myCenterX = ryan.get(picchy.get(i).getThrower()).getMyCenterX() - 5*picchy.get(i).getMyMult();
      picchy.get(i).myCenterY = ryan.get(picchy.get(i).getThrower()).getMyCenterY();
    }
    picchy.get(i).sizeUp();
  }
}
public void draw() 
{
  //lake
  background(255);
  fill(135, 206, 250);
  stroke(135, 206, 250);
  rect(100, 50, 600, 500);
  ellipse(100, 300, 150, 500);
  ellipse(700, 300, 150, 500);
  fill(255, 255, 255);

  //fish
  for (int i = 0; i < willis.length; i++) {
    willis[i].show();
  }

  //snowballs
  for (int i = 0; i <picchy.size(); i++) {
    picchy.get(i).show();
    picchy.get(i).move();
    if (dist(picchy.get(i).getMyCenterX(), picchy.get(i).getMyCenterY(), alice.getMyCenterX(), alice.getMyCenterY()) < 4*picchy.get(i).getMyMult() ) {
      picchy.remove(i);
        picchy.add(new Asteroid());
        picchy.get(picchy.size()-1).setThrower((int)(Math.random()*52));
        if (picchy.get(picchy.size()-1).getThrower() < 13) {
          picchy.get(picchy.size()-1).myCenterX = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterX();
          picchy.get(picchy.size()-1).myCenterY = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterY() + 5*picchy.get(picchy.size()-1).getMyMult();
        }
        if (picchy.get(picchy.size()-1).getThrower() >= 13 && picchy.get(picchy.size()-1).getThrower() < 26) {
          picchy.get(picchy.size()-1).myCenterX = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterX();
          picchy.get(picchy.size()-1).myCenterY = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterY() - 5*picchy.get(picchy.size()-1).getMyMult();
        }
        if (picchy.get(picchy.size()-1).getThrower() >= 26 && picchy.get(picchy.size()-1).getThrower() < 39) {
          picchy.get(picchy.size()-1).myCenterX = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterX() + 5*picchy.get(picchy.size()-1).getMyMult();
          picchy.get(picchy.size()-1).myCenterY = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterY();
        }
        if (picchy.get(picchy.size()-1).getThrower() >= 39 && picchy.get(picchy.size()-1).getThrower() < 52) {
          picchy.get(picchy.size()-1).myCenterX = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterX() - 5*picchy.get(picchy.size()-1).getMyMult();
          picchy.get(picchy.size()-1).myCenterY = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterY();
        }
        picchy.get(picchy.size()-1).sizeUp();
    }
  } 

  //bully collisons
  for (int i = 0; i <ryan.size(); i++) {
    if (dist(alice.getMyCenterX(), alice.getMyCenterY(), ryan.get(i).getMyCenterX(), ryan.get(i).getMyCenterY()) < 20) {
      alice.hyperspace();
      //alice.setMyDirectionX((int)-(alice.getMyDirectionX()/2));  
      //alice.setMyDirectionY((int)-(alice.getMyDirectionY()/2));
    }
    for (int j = 0; j <picchy.size(); j++) {
      if (dist(picchy.get(j).getMyCenterX(), picchy.get(j).getMyCenterY(), ryan.get(i).getMyCenterX(), ryan.get(i).getMyCenterY()) < 4*picchy.get(j).getMyMult() ) {
        picchy.remove(j);
        picchy.add(new Asteroid());
        picchy.get(picchy.size()-1).setThrower((int)(Math.random()*52));
        if (picchy.get(picchy.size()-1).getThrower() < 13) {
          picchy.get(picchy.size()-1).myCenterX = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterX();
          picchy.get(picchy.size()-1).myCenterY = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterY() + 5*picchy.get(picchy.size()-1).getMyMult();
        }
        if (picchy.get(picchy.size()-1).getThrower() >= 13 && picchy.get(picchy.size()-1).getThrower() < 26) {
          picchy.get(picchy.size()-1).myCenterX = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterX();
          picchy.get(picchy.size()-1).myCenterY = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterY() - 5*picchy.get(picchy.size()-1).getMyMult();
        }
        if (picchy.get(picchy.size()-1).getThrower() >= 26 && picchy.get(picchy.size()-1).getThrower() < 39) {
          picchy.get(picchy.size()-1).myCenterX = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterX() + 5*picchy.get(picchy.size()-1).getMyMult();
          picchy.get(picchy.size()-1).myCenterY = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterY();
        }
        if (picchy.get(picchy.size()-1).getThrower() >= 39 && picchy.get(picchy.size()-1).getThrower() < 52) {
          picchy.get(picchy.size()-1).myCenterX = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterX() - 5*picchy.get(picchy.size()-1).getMyMult();
          picchy.get(picchy.size()-1).myCenterY = ryan.get(picchy.get(picchy.size()-1).getThrower()).getMyCenterY();
        }
        picchy.get(picchy.size()-1).sizeUp();
      }
    }
  }

 



  //Bullets
  for (int j = 0; j < fuwa.size(); j++) {
    fuwa.get(j).show(); 
    fuwa.get(j).move();
    if (fuwa.get(j).getMyCenterX() == 0) {
      fuwa.remove(j); 
      break;
    }
    if (fuwa.get(j).getMyCenterY() == 0) {
      fuwa.remove(j); 
      break;
    }
    for (int i = 0; i <picchy.size(); i++) {
      if (dist(picchy.get(i).getMyCenterX(), picchy.get(i).getMyCenterY(), fuwa.get(j).getMyCenterX(), fuwa.get(j).getMyCenterY()) < 2*picchy.get(i).getMyMult() ) {
        picchy.remove(i);
        fuwa.remove(j);
        break;
      }
    }
  }
  
  
   //"Spaceship"
  stroke(0, 0, 0);
  alice.show();
  alice.showHead();
  alice.move();

  //bullies
  for (int i = 0; i < ryan.size(); i++) {
    ryan.get(i).show();
    ryan.get(i).showHead();
  }
}
public void keyPressed() {
  if (key == 'a') {
    alice.turn(-5);
    System.out.println("BLOOP");
  }
  if (key == 'd') {
    alice.turn(5);
    //System.out.println("hi");
  }
  if (key =='w') {
    alice.accelerate(.2);
    //System.out.println("key");
  }
  if (key =='s') {
    alice.accelerate(-.2);
    //System.out.println("key");
  }
  if (key == 'r') {
    alice.hyperspace();
  }
  if (key == 'f') {
    fuwa.add(new Bullet(alice)); 
    fuwa.get(fuwa.size()-1).accelerate(6);
    System.out.println("Shooting Wolf");
  }
}

/*
public void snowBoy(int x, int y, int turn) {
 int myX = x;
 int myY = y;
 float dRadians = (float)(turn*(Math.PI/180));
 rotate(dRadians);
 beginShape();
 fill(255, 0, 0);
 stroke(255, 0, 0);
 vertex(myX + 12, myY + 8);
 vertex(myX + 12, myY - 8);
 vertex(myX - 12, myY - 8);
 vertex(myX - 12, myY + 8);
 vertex(myX + 12, myY + 8);
 endShape(CLOSE);
 fill(255, 218, 185);
 stroke(255, 218, 185);
 ellipse(myX, myY, 12, 12);
 stroke(0, 0, 0);
 fill(255);
 }
 */
