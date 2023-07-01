public class Queue{
    Queue_Node Start;
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
    void Add(node x)
    {
        Queue_Node a = new Queue_Node(x);
        size++;
        if(Start==null)
        {
            Start = a ;
            return;
        }
        else
        {
            Queue_Node temp = Start;
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
    node Front()
    {
        if(size==0)
        {
            return null;
        }
        else
        {
            return Start.n;
        }
    }
}