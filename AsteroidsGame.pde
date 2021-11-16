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
  //b.move();
  b.show();
}
