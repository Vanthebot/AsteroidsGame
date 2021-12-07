Star [] s = new Star[100];
ArrayList <Asteroid> a = new ArrayList <Asteroid> ();
Spaceship b; 
public void setup() 
{
  size(300,300);
  background(0);
  for (int i = 0; i < s.length; i++) {
    s[i] = new Star();
  }
  for (int i = 0; i < 10; i++){
    a.add(i, new Asteroid());
  }
  b = new Spaceship();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < s.length; i++){
    s[i].show();
  }
  for (int i = 0; i < a.size(); i++){
    a.get(i).spin();
    a.get(i).move();
    a.get(i).show();
  }
  if (keyPressed) {
    if( key == 'j') {
      b.setX((int)(Math.random()*300));
      b.setY((int)(Math.random()*300));
    }
    if (key == 'a')  {
      b.turn(-5);
    }
    if (key == 'd') {
      b.turn(5);
    }
    if (key == 'w') {
     b.accelerate(2);
     //if (b.getXspeed() > 2 || b.getYspeed() > 2)
       //b.setXspeed(0);
       //b.setYspeed(0);
    }
    if (key == 's') {
      b.accelerate(-2);
    }
  }
  b.move();
  b.show();
}
