class Node{
    Node next;
    int data;
    Node(int val)
    {
        data = val;
        next = null;
    }
}
class QueueNode{
    int nodeVal;
    List L;
    QueueNode next;
    QueueNode()
    {
        L = null;
    }
    QueueNode(List VAL,int nodeValue)
    {
        L = VAL;
        nodeVal = nodeValue;
    }
}
class Queue{
    QueueNode start;
    Queue()
    {
        start = null;
    }
    void push(List val,int nodeValue)
    {
        QueueNode n = new QueueNode(val,nodeValue);
        if(start==null)
        {
            start = n;
            return;
        }
        else
        {
            QueueNode temp = start;
            while(temp.next!=null)
            {
                temp = temp.next;
            }
            temp.next = n;
            return;
        }
    }
    void pop()
    {
        if(start==null)
            return;
        start = start.next;
        return;
    }
    boolean isEmpty()
    {
        if(start == null)
            return true;
        else
            return false;
    }
}
class List{
    Node start;
    int size;
    List()
    {
        start = null;
        size = 0;
    }
    void add(int a)
    {
        size++;
        Node z = new Node(a);
        if(start==null)
        {
            start = z;
        }
        else
        {
            Node temp = start;
            while(temp.next!=null)
            {
                temp = temp.next;
            }
            temp.next = z;
        }
        return;
    }
    void remove(int a)
    {
        Node z = start;
        if(z==null)
        {
            return;
        }
        if(z.data==a)
        {
            size--;
            start = start.next;
            return;
        }
        Node temp = start;
        while(temp.next!=null)
        {
            z = temp;
            temp = temp.next;
            if(temp.data==a)
            {
                size--;
                z.next = temp.next;
                break;
            }
        }
        return;
    }
}
public class adjacencyList {
    List[] A;
    int V;
    int E;
    adjacencyList(){
        A = null;
    }
    adjacencyList(int Nodes)
    {
        A = new List[Nodes];
        // very imp
        for(int i = 0; i < Nodes;i++)
        {
            A[i] = new List();
        }
        V = Nodes;
    }
    void addEdge(int v , int u , int w)
    {
        E++;
        A[v].add(u);
        A[u].add(v);
    }
    void addEdge(int v , int u )
    {
        addEdge(v, u,1);
        return;
    }
    void removeEdge(int v , int u)
    {
        E--;
        A[v].remove(u);
        A[u].remove(v);
    }
    void bfs()
    {
        boolean[] visited = new boolean[V];
        for(int i = 0; i < V;i++)
        {
            visited[i] = false;
        }
        Queue Q = new Queue();
        Q.push(A[0],0);
        visited[0] = true;
        while(!Q.isEmpty())
        {
            System.out.println("NODE IS " + Q.start.nodeVal);
            List X = Q.start.L;
            if(X==null)
                Q.pop();
            else
            {
                Q.pop();
                Node temp = X.start;
                while(temp!=null)
                {
                    if(visited[temp.data]==false)
                    {
                        Q.push(A[temp.data],temp.data);
                        visited[temp.data] = true;
                    }
                    temp = temp.next;
                }
            }
        }
    }
    void print()
    {
        System.out.println(V+" Vertex , "+E+" Edges");
        for(int i = 0 ; i < V;i++)
        {
            System.out.print(i+" : ");
            Node x = A[i].start;
            while(x!=null)
            {
                System.out.print(x.data+" ");
                x = x.next;
            }
            System.out.println();
        }
        System.out.println();
        return;
    }
    public static void main(String[] args) {
        // adjacencyList L  = new adjacencyList(6);
        // L.addEdge(0, 1);
        // L.addEdge(0, 2);
        // L.addEdge(2, 3);
        // L.addEdge(1, 3);
        // L.addEdge(4, 3);
        // L.addEdge(5, 3);
        // L.addEdge(2, 4);
        // // L.addEdge(1, 5);
        // L.print();
        // L.bfs();
        adjacencyList L1 = new adjacencyList(5);
        L1.addEdge(0, 1);
        L1.addEdge(0, 2);
        L1.addEdge(1, 2);
        L1.addEdge(1, 3);
        L1.addEdge(2, 4);
        L1.addEdge(3, 4);
        L1.print();
        L1.bfs();

    }
}
