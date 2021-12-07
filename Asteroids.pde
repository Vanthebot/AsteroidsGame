class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid() 
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*7) - 10;
    yCorners[0] = (int)(Math.random()*7) - 8;
    xCorners[1] = (int)(Math.random()*7) + 5;
    yCorners[1] = (int)(Math.random()*7) - 7;
    xCorners[2] = (int)(Math.random()*7) + 9;
    yCorners[2] = (int)(Math.random()*7) - 2;
    xCorners[3] = (int)(Math.random()*7) + 4;
    yCorners[3] = (int)(Math.random()*7) + 8;
    xCorners[4] = (int)(Math.random()*7) - 13;
    yCorners[4] = (int)(Math.random()*7) + 6;
    xCorners[5] = (int)(Math.random()*7) - 9;
    yCorners[5] = (int)(Math.random()*7) - 2;
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

//might need to make 3 more different move functions to get 
//asteroids to move in 4 different directions
