public class Queue{
    Node Start;
    int size;
    Queue(){
        Start = null;
        size = 0;
    }
    boolean isEmpty()
    {
        if(size==0)
        {
            return true;
        }
        return false;
    }
    void Add(int val)
    {
        Node a = new Node(val,null);
        size++;
        if(Start==null)
        {
            Start = a ;
            return;
        }
        else
        {
            Node temp = Start;
            while(temp.next!=null)
            {
                temp = temp.next;
            }
            temp.next = a;
            return;
        }
    }
    void Pop()
    {
        if(size==0)
        {
            return;
        }
        else
        {
            size--;
            Start = Start.next;
        }
        return;
    }
    int Front()
    {
        if(size==0)
        {
            return -1;
        }
        else
        {
            return Start.data;
        }
    }
}