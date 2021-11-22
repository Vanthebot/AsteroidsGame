Star [] s = new Star[100];
Spaceship b; 
public void setup() 
{
  size(300,300);
  background(0);
  for (int i = 0; i < s.length; i++) {
    s[i] = new Star();
  }
  b = new Spaceship();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < s.length; i++){
    s[i].show();
  }
  if (keyPressed) {
    if( key == 'j') {
      b.setX((int)(Math.random()*300));
      b.setY((int)(Math.random()*300));
    }
    if (key == 'a')  {
      if (b.getXspeed() > 0.2 || b.getYspeed() > 0.2) {
        b.setXspeed(0.2);
        b.setYspeed(0.2);
      }
      b.turn(-10);
      b.accelHor(-0.2);
    }
    if (key == 'd') {
      if (b.getXspeed() > 0.2 || b.getYspeed() > 0.2) {
        b.setXspeed(0.2);
        b.setYspeed(0.2);
      }
      b.turn(10);
      b.accelHor(0.2);
    }
    if (key == 'w') {
      if (b.getXspeed() > 0.2 || b.getYspeed() > 0.2) {
        b.setXspeed(0.2);
        b.setYspeed(0.2);
      }
      b.accelVert(0.2);
    }
    if (key == 's') {
      if (b.getXspeed() > 0.2 || b.getYspeed() > 0.2) {
        b.setXspeed(0.2);
        b.setYspeed(0.2);
      }
      b.accelVert(-0.2);
    }
  }
  b.move();
  b.show();
}
