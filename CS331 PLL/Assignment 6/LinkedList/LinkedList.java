
public class LinkedList {
    Node start;
    int size;
    LinkedList()
    {
        size = 0;
        start = null;
    }
    public boolean isEmpty()
    {
        if(size!=0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    int getSize()
    {
        return size;
    }
    void insertStart(int val)
    {
        Node a = new Node(val,null);
        a.next = start;
        start = a;
        size++;
        return;
    }
    void insertEnd(int val)
    {
        if(size==0)
        {
            insertStart(val);
            return;
        }
        Node a = start;
        while(a.next!=null)
        {
            a = a.next;
        }
        Node b = new Node(val,null);
        a.next = b;
        size++;
        return;
    }
    void deleteStart()
    {
        if(size==0)
        {
            return;
        }
        start = start.next;
        size--;
        return;
    }
    void deleteEnd()
    {
        if(size==0)
        {
            return;
        }
        else if(size==1)
        {
            size = 0;
            start = null;
            return;
        }
        Node a = start;
        size--;
        Node b = a;
        while(a.next!=null)
        {
            b = a;
            a = a.next;
        }
        b.next = null;
        return;
    }
    void displayList()
    {
        Node a = start;
        while(a!=null)
        {
            if(a.next==null)
            {
                System.out.print(a.data);
            }
            else
            {
                System.out.print(a.data+" -> ");
            }
            a = a.next;
        }
        return;
    }
}
