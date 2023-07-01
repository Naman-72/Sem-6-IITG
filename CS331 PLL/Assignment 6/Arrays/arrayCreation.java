import java.util.Scanner;

class arrayCreation{
    public static void main(String[] args)
    {
        Scanner S = new Scanner(System.in);
        int a[];
        a = new int[5];
        for(int i = 0; i < 5 ; i++)
        {
            System.out.print("Enter value of A["+i+"] : ");
            int o = S.nextInt();
            a[i] = o;
        }
        int[] b;
        b = new int[10];
        for(int i = 0; i < 10; i++)
        {
            b[i] = a[i%3];
        }
        for(int i = 0; i < 5; i++)
        {
            System.out.print("A ");
            System.out.println(i+" : "+a[i]);
        }
        System.out.println();
        for(int i = 0; i < 10; i++)
        {
            System.out.print("B ");
            System.out.println(i+" : "+b[i]);
        }
        for(int op : a){
            System.out.println(op);
        }
        S.close();
        return;
    }
}