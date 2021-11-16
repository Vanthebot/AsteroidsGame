class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 4;
      xCorners = new int [corners];
      yCorners = new int [corners];
      myColor = color(255, 255, 255);
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
      myCenterX = 150.0;
      myCenterY = 150.0;
      myXspeed = 5.0;
      myYspeed = 5.0;
      myPointDirection = 0;
    }
}
