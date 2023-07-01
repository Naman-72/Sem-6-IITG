public class list {
    int lenght;
    listNode head;
    list() {
        lenght = 0;
        head = null;
    }
    void clear()
    {
        lenght = 0;
        head = null;
    }
    void add(node x)
    {
        lenght++;
        listNode a = new listNode(x);
        if(head==null)
        {
            head = a;
            return;
        }
        else
        {
            listNode temp = head;
            while(temp.next!=null)
            {
                temp = temp.next;
            }
            temp.next = a;
        }
        return;
    }
}
