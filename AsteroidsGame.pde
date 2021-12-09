Star [] star = new Star[100];
ArrayList <Asteroid> ast = new ArrayList <Asteroid> ();
Spaceship b;
boolean a, w, s, d;
public void setup() 
{
  size(300,300);
  background(0);
  for (int i = 0; i < star.length; i++) {
    star[i] = new Star();
  }
  for (int i = 0; i < 10; i++){
    ast.add(i, new Asteroid());
  }
  b = new Spaceship();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < star.length; i++){
    star[i].show();
  }
  for (int i = 0; i < ast.size(); i++){
    ast.get(i).spin();
    ast.get(i).move();
    ast.get(i).show();
  }
  b.move();
  b.show();
}

public void keyPressed(){
  if(key == 'w'){
    w = true;
  }
  if(key == 'a'){
    a = true;
  }
  if(key == 's'){
    s = true;
  }
  if(key == 'd'){
    d = true;
  }
}

public void keyReleased(){
  if(key == 'w'){
    w = false;
  }
  if(key == 'a'){
    a = false;
  }
  if(key == 's'){
    s = false;
  }
  if(key == 'd'){
    d = false;
  }
}
