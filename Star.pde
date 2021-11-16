class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star() {
    myX = (int)(Math.random()*300) + 1;
    myY = (int)(Math.random()*300) + 1;
    myColor =  color((int)(Math.random()*246)+10,
                     (int)(Math.random()*246)+10, 
                     (int)(Math.random()*246)+10);
  } 
  public void show () {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 3, 3);
  }
}

//make stars move
//have different size
//different opacity
