import java.io.File;

public class info {
    public static void main(String[] args)
    {
        File F = new File("C:\\Users\\Dell\\Desktop\\LifeLearning.txt");
        if(F.exists())
        {
            System.out.println("File Name : "+F.getName()+"\nFile Path : "+F.getAbsolutePath()+"\nFile Lenght : "+F.length());
        }
        else{
            System.out.println("File Not Found");
        }
    }
}
