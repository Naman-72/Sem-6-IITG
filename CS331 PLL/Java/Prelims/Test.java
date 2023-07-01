package Prelims;
import java.io.*;

public class Test {
    public static void main(String[] args) throws IOException {
        File file = new File("example.txt");
        RandomAccessFile raf = new RandomAccessFile(file, "rw");

        // move file pointer to end of file
        raf.seek(file.length()-1);

        // write a line to the file
        String line = "This is a new line\n";
        raf.writeBytes(line);

        // write bytes to the file
        byte[] bytes = "This is a byte array\n".getBytes();
        raf.write(bytes);

        // close the file
        raf.close();

        System.out.println("Data written to file successfully.");
    }
}
