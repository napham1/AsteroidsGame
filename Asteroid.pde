class Asteroid extends Floater{
  private int rotspeed;
  public Asteroid(){
    corners = 11;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -30;
    yCorners[0] = 0;
    xCorners[1] = -25;
    yCorners[1] = 5;
    xCorners[2] = -25;
    yCorners[2] = 15;
    xCorners[3] = -15;
    yCorners[3] = 25;
    xCorners[4] = 5;
    yCorners[4] = 20;
    xCorners[5] = 20;
    yCorners[5] = 25;
    xCorners[6] = 30;
    yCorners[6] = 10;
    xCorners[7] = 30;
    yCorners[7] = -10;
    xCorners[8] = 5;
    yCorners[8] = -20;
    xCorners[9] = -15;
    yCorners[9] = -25;
    xCorners[10] = -25;
    yCorners[10] = -15;
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
