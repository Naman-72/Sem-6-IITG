import java.io.*;

public class write {
    public static void main(String[] args)
    {
        try{
            FileWriter f = new FileWriter("Writing.txt");
            try{
                f.write("Hello I am Naman Anand\n");
                f.write("I am Studying Java from PK Das Sir");
            }
            finally{
                f.close();
            }
        }
        catch(IOException e)
        {
            System.out.println(e);
        }
    }
}
