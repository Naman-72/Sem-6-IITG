public class Runner {
    public static void main(String[] args) {
        Queue Q1 = new Queue();
        Q1.Add(5);
        // System.out.println(Q1.Front());
        Q1.Add(15);
        Q1.Add(25);
        // System.out.println(Q1.Front());
        Q1.Add(125);
        Q1.Add(625);
        Q1.Add(3125);
        Q1.Add(6250);
        Q1.Pop();
        while(!Q1.isEmpty())
        {
            System.out.println(Q1.Front());
            Q1.Pop();
        }
        return;
    }
}
