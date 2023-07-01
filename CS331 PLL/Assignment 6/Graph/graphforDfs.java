class Node{
    Node next;
    int data;
    Node(int val)
    {
        data = val;
        next = null;
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
public class graphforDfs{
    List[] A;
    int V;
    boolean[] visited;
    int E;
    graphforDfs(){
        A = null;
    }
    graphforDfs(int Nodes)
    {
        A = new List[Nodes];
        // very imp
        visited = new boolean[Nodes];
        for(int i = 0; i < Nodes;i++)
        {
            visited[i] = false;
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
    void dfs(int n)
    {
        if(n>=V)
        {
            return;
        }
        for(int i = 0; i < V;i++)
            visited[i] = false;
        visited[n] = true;
        recursivedfs(n);
    }
    void recursivedfs(int n)
    {
        if(n>=V)
        {
            return;
        }   
        System.out.println(n);
        Node temp = A[n].start;
        while(temp!=null)
        {
            if(visited[temp.data]==false)
            {
                visited[temp.data] = true;
                recursivedfs(temp.data);
            }
            temp = temp.next;
        }
        return;
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
        graphforDfs L1 = new graphforDfs(5);
        L1.addEdge(0, 4);
        L1.addEdge(0, 3);
        L1.addEdge(4, 2);
        L1.addEdge(2, 3);
        L1.addEdge(2, 1);
        L1.print();
        L1.dfs(0);
    }
}

