Rain drop = new Rain();
Rain[] drops = new Rain [100];
PImage Guy;
PImage wetGuy;
PImage rain;
PImage bg;
PImage Raindrop;
PImage cloud;
boolean showimage = true;
int GuyX=200;
int GuyY=600;
int cloudx=400;
int cloudy=50;
int cloudspeed=4;
void setup()
{
  size(800, 800);
  for (int i=0; i<100; i++)
  {
    drops[i] =new Rain();
  }
  imageMode(CENTER);
  Guy = loadImage("Guy.png");
  Guy.resize(400, 400);

  imageMode(CENTER);
  wetGuy = loadImage("wetGuy.jpg");
  wetGuy.resize(400, 400);

  imageMode(CENTER);
  Raindrop = loadImage("Raindrop.png");
  Raindrop.resize(5, 5);

  imageMode(CENTER);
  cloud = loadImage("cloud.png");
  cloud.resize(400, 200);
}

void draw()
{

  cloudx=cloudx+cloudspeed;
  if (cloudx>700)
  {
    cloudspeed=-5;
  }

  if (cloudx<100)
  {
    cloudspeed=5;
  }

  background(255);

  drop.Update();

  image(cloud, cloudx, cloudy);

  for (int i=0; i<100; i++)
  {
    drops[i].Update();
  }
}
