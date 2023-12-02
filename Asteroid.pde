class Asteroid extends Floater{
  private int rotspeed;
  public Asteroid(){
    corners = 11;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -12;
    yCorners[0] = 0;
    xCorners[1] = -10;
    yCorners[1] = 2;
    xCorners[2] = -10;
    yCorners[2] = 6;
    xCorners[3] = -6;
    yCorners[3] = 10;
    xCorners[4] = 2;
    yCorners[4] = 8;
    xCorners[5] = 8;
    yCorners[5] = 10;
    xCorners[6] = 12;
    yCorners[6] = 4;
    xCorners[7] = 12;
    yCorners[7] = -4;
    xCorners[8] = 2;
    yCorners[8] = -8;
    xCorners[9] = -6;
    yCorners[9] = -10;
    xCorners[10] = -10;
    yCorners[10] = -6;
    rotspeed = (int)(Math.random() * 5) - 2;
    myColor = 0;
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myXspeed = Math.cos((int)(Math.random()*360));
    myYspeed = Math.sin((int)(Math.random()*360));
    myPointDirection = (int)(Math.random() * 360);
  }
  public void move(){
    turn(rotspeed);
    super.move();
  }
}
