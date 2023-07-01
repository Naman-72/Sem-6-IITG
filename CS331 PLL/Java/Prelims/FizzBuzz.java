package Prelims;
import java.util.ArrayList;

public class FizzBuzz {
    public static void main(String args[]){
        // Scanner scanner = new Scanner(System.in);
        // for(int num = 1;num<=100;num++)
        // {
        //     if(num%3 == 0 && num%5 == 0) System.out.print("FB");
        //     else if(num%3 == 0) System.out.print("F");
        //     else if(num%5 == 0) System.out.print("B");
        // }
        
        // scanner.close();
        ArrayList<ArrayList<Integer>>arr = new ArrayList<ArrayList<Integer>>();
        ArrayList<Integer>push = new ArrayList<Integer>(2);
        for(int i = 0;i<2;i++) push.add(i,i+1);
        arr.add(push);
        arr.add(push);
        arr.get(0).add(0,9);
        for(int i = 0;i<2;i++)
        {
            for(int j = 0;j<2;j++)
            {
                System.out.print(arr.get(i).get(j) + " ");
            }
            System.out.print("\n");
        }
    }
}
