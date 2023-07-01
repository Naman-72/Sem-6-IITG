public class Runner {
    public static void main(String[] args) {
        LinkedList list1 = new LinkedList();
        list1.insertStart(25);
        list1.insertStart(125);
        list1.insertEnd(5);
        list1.insertEnd(625);
        list1.displayList();
        System.out.println();
        list1.deleteEnd();
        list1.deleteStart();
        list1.displayList();
        return;
    }    
}
