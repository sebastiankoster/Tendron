public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {   
        for(int i =1; i<=7; i++){
        Tendril joey = new Tendril(len, (2*PI*i)/7,x, y);
        joey.show();
        }
    }
}
