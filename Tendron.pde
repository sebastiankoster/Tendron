public void setup()
{
  size(1500, 900);  
  background(255);
  strokeWeight(2);
  noLoop();
}

public void draw()
{
  background(255);
  Cluster c = new Cluster(100, 750, 450); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}
