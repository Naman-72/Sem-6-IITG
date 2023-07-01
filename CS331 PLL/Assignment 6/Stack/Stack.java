public class Stack{
    Node start;
    Stack()
    {
        start = null;
    }
    void Push(int val)
    {
        Node newNode = new Node(val,null);
        if(start == null)
        {
            start = newNode;
        }
        else{
            Node a = start;
            while(a.next!=null)
            {
                a = a.next;
            }
            a.next = newNode;
        }
        return;
    }
    void Pop()
    {
        if(start == null)
        {
            return;
        }
        else{
            if(start.next==null)
            {
                start = null;
                return;
            }
            Node b = null;
            Node a = start;
            while(a.next!=null)
            {
                b = a;
                a = a.next;
            }
            b.next = null;
        }
        return;
    }
    int Top()
    {
        if(start == null)
        {
            return -1;
        }
        else{
            Node a = start;
            while(a.next!=null)
            {
                a = a.next;
            }
            return a.data;
        }
    }
    boolean isEmpty()
    {
        if(start==null)
        {
            return true;
        }
        return false;
    }
}