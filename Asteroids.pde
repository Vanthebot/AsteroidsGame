class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid() 
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*5) - 13;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myCenterX = Math.random()*300;
    myCenterY = Math.random()*300;
    myPointDirection = 0;
    rotSpeed = Math.random()*4 +1;
    myXspeed = Math.random()*3 + 1;
    myYspeed = Math.random()*3 + 1;
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
