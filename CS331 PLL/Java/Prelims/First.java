package Prelims;

//we can't create instance of an abstract class with new method, but can be instantiated
//using factory method
//constructor same as c++
//static means that the method belongs to the Main class and not an object of the Main class.

import java.util.*;
import java.awt.*;
import java.text.NumberFormat;

public class First{
    public static void main(String []args) {
        ArrayList<Integer>arr = new ArrayList<>();
        arr.sort(null);
        System.out.println("Hello java!!");
        float price = 10.99F;
        System.out.println("Price is : " + price);
        Date today = new Date();
        System.out.println("Date is : " + today);
        Point point = new Point(1,1);
        System.out.println("Point is : " + point);
        //Point point2 = point; //reference
        String string = "Hi there";
        System.out.println(string);
        string = "Hi!!";
        System.out.println(string);

        //1d array
        int [] numbers = new int[5];
        numbers[0] = 1;
        numbers[1] = 2;
        System.out.println(Arrays.toString(numbers));
        
        //2d array
        int [][] arr2d = new int[2][3];
        arr2d[0][0] = 6;
        arr2d[0][1] = 9;
        System.out.println(Arrays.deepToString(arr2d));

        //constant
        final float pi = 3.14F;
        System.out.println("Constant : " + pi);

        //implicit casting
        short a = 2;
        int b = a + 2; //somewhere in memory int variable is created,x is copied into it
        System.out.println(b);

        //explicit casting
        double x = 2.1;
        int y = (int)x + 2; //x converted to 2
        System.out.println(y);

        //string to number
        String s = "124";
        int stoi = Integer.parseInt(s); //Double.parseDouble()
        System.out.println(stoi);

        //Math class
        int result = Math.round(1.2F);
        System.out.println(result); //1
        result = (int)Math.ceil(1.3F);
        System.out.println(result); //2
        double randInt = Math.random(); //random real between 0 1
        System.out.println(randInt);
        randInt = Math.random() * 100;
        System.out.println(randInt); //random real between 0 100

        //Format number
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        String res = currency.format(1234567.891);
        System.out.println(res);

        //Reading input from user
        Scanner scanner = new Scanner(System.in); //read from terminal/console
        // System.out.print("Age : "); 
        // int age = scanner.nextByte(); //read int
        // System.out.println("Age is " + age);
        System.out.print("Name : ");
        //String name = scanner.next(); //read only the next token
        String name1 = scanner.nextLine().trim(); //read whole line
        System.out.println("Hi , " + name1);
        scanner.close();

        //For each
        String[] fruits = {"Apple","Orange","Banana"};
        for(String fruit : fruits) System.out.println(fruit);

        // LinkedList ll = new LinkedList<>();
        // Iterator it = ll.descendingIterator();
    }
}