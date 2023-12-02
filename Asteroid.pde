class Asteroid extends Floater{
  private int rotspeed;
  public Asteroid(){
    corners = 11;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -6;
    yCorners[0] = 0;
    xCorners[1] = -5;
    yCorners[1] = 1;
    xCorners[2] = -5;
    yCorners[2] = 3;
    xCorners[3] = -3;
    yCorners[3] = 5;
    xCorners[4] = 1;
    yCorners[4] = 4;
    xCorners[5] = 4;
    yCorners[5] = 5;
    xCorners[6] = 6;
    yCorners[6] = 2;
    xCorners[7] = 6;
    yCorners[7] = -2;
    xCorners[8] = 1;
    yCorners[8] = -4;
    xCorners[9] = -3;
    yCorners[9] = -5;
    xCorners[10] = -5;
    yCorners[10] = -3;
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
