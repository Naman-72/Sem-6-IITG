package JavaDs;

public class LinkedList {
    private Node head;
    public static class Node{
        int vertex,weight;
        Node next;
        Node(int vertex,int weight)
        {
            this.vertex = vertex;
            this.weight = weight;
            next = null;
        }
    }

    public LinkedList()
    {
        head = null;
    }

    public void insert(int vertex,int weight)
    {
        Node node = new Node(vertex,weight);
        if(head == null) head = node;
        else
        {
            Node curr = head;
            while(curr.next != null) curr = curr.next;
            curr.next = node;
        }
    }

    public void print()
    {
        Node curr = head;
        while(curr != null)
        {
            System.out.print("(" + curr.vertex + "," + curr.weight + ")");
            System.out.print(" --> ");
            curr = curr.next;
        }
        System.out.print("null\n");
    }

    public LinkedListIterator getIterator() {
        return new LinkedListIterator(head);
    }

    public static class LinkedListIterator 
    {
        private Node current;
        
        public LinkedListIterator(Node start) 
        {
            this.current = start;
        }
        
        public boolean hasNext() 
        {
            return current != null;
        }
        
        public Pair<Integer,Integer> next() 
        {
            Pair<Integer,Integer> data = new Pair<Integer,Integer>(0, 0);
            data.first = current.vertex;
            data.second = current.weight;
            current = current.next;
            return data;
        }
    }
}
