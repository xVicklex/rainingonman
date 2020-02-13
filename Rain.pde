
class Rain
{
  PVector Pos;
  PVector Vel;
  PVector lVel;
  Rain()
  {
    Pos = new PVector(random(0, 800), random(0, 25));
    Vel= new PVector(0, 2);
    lVel = new PVector(-2, 1);
  }

  void Update()
  {
    image(Raindrop, Pos.x, Pos.y, 5, 5);
    Pos.add(Vel);
    Pos.add(lVel);

    if (showimage)image(Guy, GuyX, GuyY);




    if (Pos.y>400)
    {
      image(wetGuy, GuyX, GuyY);
      showimage=false;
    }
    if (Pos.y>800)
    {
      Pos = new PVector(random(0, 800), random(0, 25));
      Vel= new PVector(0, 2);
      lVel = new PVector(-2, 1);
    }
    if (Pos.y<400)
    {
      showimage=true;
    }
  }
}
