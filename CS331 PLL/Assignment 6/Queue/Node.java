class Node{
    int data;
    Node next;
    public Node()
    {
        next = null; 
        // IMP*** NULL
        data = 0;
        return;
    }
    public Node(int a,Node n)
    {
        data = a;
        next = n;
    }
    public void setNext(Node n)    
    {
        next = n;
    }
    public void setData(int a)
    {
        data = a;
    }
    public int getData()
    {
        return data;
    }
    public Node getNext()
    {
        return next;
    }
}