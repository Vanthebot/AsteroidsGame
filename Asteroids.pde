class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid() 
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*5) - 13;
    yCorners[0] = (int)(Math.random()*5) - 10;
    xCorners[1] = (int)(Math.random()*5) + 5;
    yCorners[1] = (int)(Math.random()*5) - 10;
    xCorners[2] = (int)(Math.random()*5) + 11;
    yCorners[2] = (int)(Math.random()*5) - 2;
    xCorners[3] = (int)(Math.random()*5) + 4;
    yCorners[3] = (int)(Math.random()*5) + 8;
    xCorners[4] = (int)(Math.random()*5) - 13;
    yCorners[4] = (int)(Math.random()*5) + 6;
    xCorners[5] = (int)(Math.random()*5) - 7;
    yCorners[5] = (int)(Math.random()*5) - 2;
    myCenterX = Math.random()*300;
    myCenterY = Math.random()*300;
    myPointDirection = 0;
    rotSpeed = Math.random()*4 +1;
    myXspeed = Math.random() + 0.5;
    myYspeed = Math.random() + 0.5;
    myColor = color(255);
}
  public void spin() {
    myPointDirection += rotSpeed;
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    if (myCenterX >= 300 || myCenterY >= 300) {
      myCenterX = Math.random()*300;
      myCenterY = Math.random()*300;
    }
  }
}
