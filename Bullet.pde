class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getDirection();
    accelerate(1);
  }
  public void show(){
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
}
