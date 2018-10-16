Bacteria[] ecoli;
void setup()
{
  size(500, 500);
  frameRate(200);
  ecoli= new Bacteria[1000];
  for (int i=0; i<ecoli.length; i++)
    ecoli[i]=new Bacteria();
}

void draw()
{
  background(0, 255, 255);
  for (int i=0; i<ecoli.length; i++)
    {ecoli[i].show();
      ecoli[i].move();  
    }
}

class Bacteria
{
int x;
int y;
int r;
int c;
  Bacteria()
  {
    x=y=250;
    r=(int)(Math.random()*40);
    c=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }

void move()
{
  if (mouseX>x)
    x=x+(int)(Math.random()*5)-1;
  else
    x=x+(int)(Math.random()*5)-3;
  if (mouseY>y)
    y=y+(int)(Math.random()*5)-1;
  else
    y=y+(int)(Math.random()*5)-3;
}
void show()
{
  ellipse(x, y, r, r);
  fill(c);
}
}

