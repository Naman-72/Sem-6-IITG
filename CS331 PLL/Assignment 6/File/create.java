import java.io.*;

class create{
    public static void main(String[] args) throws IOException
    {
        File f = new File("C:\\Users\\Dell\\Desktop\\JavaFile.txt");
        // C:\Users\Dell\Desktop
            if(f.createNewFile())
            {
                System.out.println("File Successfully Created");
            }
            else
            {
                System.out.println("File Already Exists");
            }
        return; 
    }
}

// class create{
//     public static void main(String[] args)
//     {
//         File f = new File("C:\\Users\\Dell\\Desktop\\JavaFile.txt");
//         // C:\Users\Dell\Desktop
//         try{
//             if(f.createNewFile())
//             {
//                 System.out.println("File Successfully Created");
//             }
//             else
//             {
//                 System.out.println("File Already Exists");
//             }
    
//         } catch(IOException e){
//             System.out.println("An error occurred.");
//             e.printStackTrace();
//         }
//         return; 
//     }
// }