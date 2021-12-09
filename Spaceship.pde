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
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    
    public void hyperspace() {
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = Math.random() * 180;
      myCenterX = (int)(Math.random() * 240) + 30;
      myCenterY = (int)(Math.random() * 240) + 30;
    }

    public void setXspeed(double x){
      myXspeed = x;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
    public void setX(float x){
      myCenterX = x;
    }
    public void setY(float y){
      myCenterY = y;
    }
    public double getXspeed(){ 
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
}
