Particle [] parts = new Particle [1000];
boolean start = false;
void setup()
{
  size (500,500);
  for (int i = 0; i < parts.length; i++){
    parts[i] = new Particle();
    parts[0] = new Oddball();
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < parts.length; i++){
  parts[i].move();
  parts[i].show();
  }
}
class Particle
{
  double myX,myY,mySpeed,myAngle;
  int myColor;
  Particle()
  {
   myX = 250;
   myY = 250;
   mySpeed = Math.random()*1 + 2;
   myAngle = (Math.random()*2)*Math.PI;
   myColor = color((int)(Math.random()*255), (int)(Math.random()*122),(int)(Math.random()*255));
  }
  void move()
  {
   myX = myX - Math.cos(myAngle) * mySpeed;
   myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
   fill(myColor); 
   ellipse ((float)myX,(float)myY,10,10);
  }
}
class Oddball extends Particle
{
  Oddball()
  {
   myX = 250;
   myY = 250;
   mySpeed = Math.random()*1;
   myAngle = (Math.random()*2)*Math.PI;
   myColor = color(255,122,30);
  }
  void move()
  {
   myX = myX - Math.cos(myAngle) * mySpeed;
   myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
   fill(myColor);
   rect ((float)myX,(float)myY,70,70);
  }
}
