import java.io.*;

public class copyFile {
    public static void main(String[] args) throws IOException
    {
        FileInputStream i = new FileInputStream("Read_New.txt");
        FileOutputStream o = new FileOutputStream("Read_New2.txt");
        int j = 0;
        while((j=i.read())!=-1)
        {
            o.write((char)j);
        }
        i.close();
        o.close();
        return;
    }
}
