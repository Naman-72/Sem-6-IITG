public class graph {
    list[] adj;
    int vertex;
    int edges;
    graph()
    {
        vertex = 0;
        edges = 0;
        adj = null;
    }
    graph(int v1)
    {
        vertex = v1;
        adj = new list[v1];
        for(int i = 0 ; i < v1 ;i++)
            adj[i] = new list();
    }
    void addEdge(int u , int v , int w)
    {
        adj[u].add(v, w);
        adj[v].add(u, w);
        edges++;
        return;
    }
}
