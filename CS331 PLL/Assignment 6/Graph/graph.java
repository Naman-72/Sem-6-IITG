public class graph{
    int[][] A;
    int V;
    int E;
    public graph(int nodes)
    {
        V = nodes;
        E = 0;
        A = new int[nodes][nodes];
        for(int i = 0 ; i < nodes; i++)
        {
            for(int j = 0; j < nodes; j++)
            {
                A[i][j] = 0;
            }
        }
        return;
    }
    public void addEdge(int u , int v,int w)
    {
        E++;
        A[u][v] = w;
        A[v][u] = w;
    }
    void print()
    {
        System.out.println("Vertices : "+V+" , Edges : "+E);
        for(int i = 0 ; i < V; i++)
        {
            System.out.print(i+" : ");
            for(int j = 0; j < V; j++)
            {
                System.out.print(A[i][j]+" ");
            }
            System.out.println();
        }
        return;
    }
    public static void main(String[] args) {
        graph A = new graph(4);
        A.addEdge(0, 1, 2);
        A.addEdge(1, 2, 2);
        A.addEdge(2, 3, 2);
        A.addEdge(3, 0, 2);
        A.addEdge(1, 3, 2);
        A.addEdge(0, 2, 2);
        A.print();
    }
}