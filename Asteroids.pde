class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid() 
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*6) - 10;
    yCorners[0] = (int)(Math.random()*6) - 8;
    xCorners[1] = (int)(Math.random()*6) + 5;
    yCorners[1] = (int)(Math.random()*6) - 7;
    xCorners[2] = (int)(Math.random()*6) + 9;
    yCorners[2] = (int)(Math.random()*6) - 2;
    xCorners[3] = (int)(Math.random()*6) + 4;
    yCorners[3] = (int)(Math.random()*6) + 8;
    xCorners[4] = (int)(Math.random()*6) - 13;
    yCorners[4] = (int)(Math.random()*6) + 6;
    xCorners[5] = (int)(Math.random()*6) - 9;
    yCorners[5] = (int)(Math.random()*6) - 2;
    myCenterX = Math.random()*300;
    myCenterY = Math.random()*300;
    myPointDirection = 0;
    rotSpeed = Math.random()*4 +1;
    myXspeed = Math.random() + 0.5;
    myYspeed = Math.random() + 0.5;
    myColor = color(66, 58, 52);
}
  public void spin() {
    myPointDirection += rotSpeed;
  }
  public void move() {
    myCenterY += myYspeed;
    if (myCenterX >= 300 || myCenterY >= 300) {
      myCenterX = Math.random()*300;
      myCenterY = 0;
    }
  }
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}

