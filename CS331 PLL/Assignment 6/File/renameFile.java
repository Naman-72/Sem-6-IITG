import java.io.*;

public class renameFile {
    public static void main(String[] args)
    {
        try {
            FileWriter f = new FileWriter("Read.txt");
            try{
                f.write("This is a program to check does file Rename occurs\n");
                f.write("This is Assignment 6\n");
                f.write("Each Assignment is a way to increase our knowledge on the subject.");
            }
            finally{
                f.close();
            }
            File j = new File("Read.txt");
            if(j.exists())
            {
                FileReader o = new FileReader("Read.txt");
                int op = 0;
                try{

                    while((op=o.read())!=-1)
                    {
                        System.out.print((char)op);
                    }
                }
                finally
                {
                    o.close();
                }
            }
            else
            {
                System.out.println("File Don't Exists");
            }
            File a1 = new File("Read.txt");
            File a2 = new File("Read_new.txt");
            if(a1.exists())
            {
                a1.renameTo(a2);
            }
        } catch (IOException e) {
            System.out.println(e);
        }
    }
}
