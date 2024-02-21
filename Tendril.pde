class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myAngle = theta;
    myNumSegments = len;
    myX = x;
    myY = y;
  }
  public void show()
  {
    stroke(149-(5-(myNumSegments/10))*14.4, 106+22.6*(5-(myNumSegments/10)) , 60+15*(5-(myNumSegments/10)) );
    for(int i =0; i<myNumSegments; i++){
    myAngle+=Math.random()*0.4-0.2;
    line(myX,myY,myX+cos((float)myAngle)*SEG_LENGTH,myY+sin((float)myAngle)*SEG_LENGTH);
    myX+=cos((float)myAngle)*SEG_LENGTH;
    myY+=sin((float)myAngle)*SEG_LENGTH;
    }
    if (myNumSegments > 2){
    Cluster c = new Cluster((myNumSegments)/3, myX, myY);
    }
  }
}
