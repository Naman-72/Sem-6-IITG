class Queue_Node{
    node n;
    Queue_Node next;
    Queue_Node()
    {
        next = null; 
        // IMP*** NULL
        return;
    }
    Queue_Node(node x)
    {
        next = null;
        n = x;
    }
    Queue_Node(node a,Queue_Node y)
    {
        n = a;
        next = y;
    }
}