public class Runner {
    public static void main(String[] args) {
        Stack S = new Stack();
        S.Push(25);
        S.Push(35);
        S.Pop();
        S.Push(125);
        S.Push(625);
        S.Push(600);
        System.out.println(S.Top());
        S.Pop();
        S.Push(3125);
        while(!S.isEmpty())
        {
            System.out.print(S.Top());
            S.Pop();
            if(!S.isEmpty())
            {
                System.out.println();
            }
        }
        return;
    }    
}
