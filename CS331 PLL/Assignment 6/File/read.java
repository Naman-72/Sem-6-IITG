import java.io.FileReader;
import java.io.IOException;

public class read {
    public static void main(String[] args)
    {
        try{
            FileReader r = new FileReader("Writing.txt");
            int i = 0;
            try{
                while((i=r.read())!=-1)
                {
                    System.out.print((char)i);
                }
            }
            finally{
                r.close();
                System.out.println("\nFile Closed");
            }
        }
        catch(IOException e)
        {
            System.out.println(e);
        }
    }
}
