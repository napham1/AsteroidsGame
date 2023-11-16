Spaceship Bob = new Spaceship();
Star [] starrysky = new Star[250];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < starrysky.length; i++){
    starrysky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  Bob.show();
  for(int i = 0; i < starrysky.length; i++){
    starrysky[i].show();
  }
}

public void keyPressed(){
  if(key == 'h'){
    Bob.hyperspace();
  }
  if(key == 'm'){
    Bob.accelerate();
  }
}
