Spaceship Bob = new Spaceship();
Star [] starrysky = new Star[250];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> pebbles = new ArrayList <Bullet>();
public void setup() 
{
  size(500,500);
  for(int i = 0; i < starrysky.length; i++){
    starrysky[i] = new Star();
  }
  for(int i = 0; i < 25; i++){
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  Bob.show();
  Bob.move();
  for(int i = 0; i < starrysky.length; i++){
    starrysky[i].show();
  }
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist(Bob.getX(), Bob.getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if(d < 10){
      rocks.remove(i);
      i--;
    }
  }
  for(int i = 0; i < rocks.size(); i++){
    for(int j = 0; j < pebbles.size(); j++){
      float e = dist(pebbles.get(j).getX(), pebbles.get(j).getY(), rocks.get(i).getX(), rocks.get(i).getY());
      if(e < 10){
        rocks.remove(i);
        pebbles.remove(j);
        break;
      }
    }
  }
  for(int i = 0; i < pebbles.size(); i++){
    pebbles.get(i).show();
    pebbles.get(i).move();
  }
}

public void keyPressed(){
  if(key == 'h'){
    Bob.hyperspace();
  }
  if(key == 'w'){
    Bob.accelerate(1);
  }
  if(key == 's'){
    Bob.accelerate(-1);
  }
  if(key == 'd'){
    Bob.turn(10);
  }
  if(key == 'a'){
    Bob.turn(-10);
  }
  if(key == 'f'){
    pebbles.add(new Bullet(Bob));
  }
}
