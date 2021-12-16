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
  for (int i = 0; i < 8; i++){
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
  for (int nI = 0; nI < ast.size(); nI++)
  {
    if (dist((float)ast.get(nI).myCenterX, (float)ast.get(nI).myCenterY, (float)b.myCenterX, (float)b.myCenterY) < 20) 
    {
      ast.get(nI).myColor = 0;
    }
    if (ast.get(nI).myCenterY == 0)
      ast.get(nI).myColor = color(66, 58, 52);
  }  

  b.move();
  b.show();
  
  if(w) {
    b.accelerate(0.02);
  }
  if(s) {
    b.accelerate(-0.02);
  }
  if(a) {
    b.turn(-5);
  }
  if(d) {
    b.turn(5);
  }
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
  if(key == 'j'){
    b.hyperspace();
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
