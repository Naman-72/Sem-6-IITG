public class list {
    int lenght;
    node head;
    list() {
        lenght = 0;
        head = null;
    }
    void add(int x)
    {
        add(x,1);
        return;
    }
    void add(int x,int w)
    {
        lenght++;
        node a = new node(x,w);
        if(head==null)
        {
            head = a;
            return;
        }
        else
        {
            node temp = head;
            while(temp.next!=null)
            {
                temp = temp.next;
            }
            temp.next = a;
        }
        return;
    }
}
