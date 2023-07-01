import java.io.*;
public class scc {
    graph g;
    graph gt;
    boolean visited[];
    int vertex;
    list storage;
    list kosaraju_iteration;
    scc()
    {
        g = null;
        gt = null;
        storage = null;
        visited = null;
    }
    scc(graph g1 , int v)
    {
        vertex = v;
        visited = new boolean[v];
        for(int i = 0 ; i < v; i++)
        {
            visited[i] = false;
        }
        g = new graph(v);
        gt = new graph(v);
        for(int i = 0 ; i < v;i++)
        {
            node t = g1.adj[i].head;
            while(t!=null)
            {
                g.addEdge(i, t.value, t.weight);
                gt.addEdge(t.value, i, t.weight);
                t = t.next;
            }
        }
        return;
    }
    void dfs()
    {
        // first do dfs and store 
        for(int i = 0 ; i < vertex;i++)
        {
            visited[i] = false;
        }
        storage = new list();
        for(int i = 0 ; i < vertex;i++)
        {
            if(visited[i]==false)
                dfs_recursive(i);
        }
        // dfs stored on storage
        // now we have transpose of graph 
        return;
    }
    void dfs_recursive(int i)
    {
        if(visited[i])
            return;
        visited[i] = true;
        storage.add(i);
        node temp = g.adj[i].head;
        while(temp!=null)
        {
            if(!visited[temp.value])
                dfs_recursive(temp.value);
            temp = temp.next;
        }
    }
    void kosaraju_dfs_recursive(int i)
    {
        if(visited[i])
            return;
        visited[i] = true;
        node temp = gt.adj[i].head;
        while(temp!=null)
        {
            if(!visited[temp.value])
                kosaraju_dfs_recursive(temp.value);
            temp = temp.next;
        }
        kosaraju_iteration.add(i);
        return;
    }
    void kosaraju()
    {
        try {
            File f = new File("Strongly_Connected_Components.dot");
            FileWriter f1 = new FileWriter(f);
            f1.write("digraph G{\n");
            // now calculate stack
            dfs();
            // stack is in storage
            // printstorage();
            
            node tempNode = storage.head;
            for (int i = 0; i < vertex; i++) {
                visited[i] = false;
            }
            f1.write("node [style = filled, fillcolor = blue , fontcolor = white]\n");
            for(int i =0 ; i < vertex; i++)
            {
                node temp = g.adj[i].head;
                while(temp!=null)
                {
                    f1.write(i+"->"+temp.value+"\n");
                    temp = temp.next;
                }
                System.out.println();
            }
            int iter = 1;
            while(tempNode!=null)
            {
                kosaraju_iteration = new list();
                if(!visited[tempNode.value])
                {
                    kosaraju_dfs_recursive(tempNode.value);
                    node ti = kosaraju_iteration.head;
                    f1.write("subgraph A"+iter+"{ \ncluster = true; \n");
                    System.out.print("SCC "+iter +" -> ");
                    while(ti!=null)
                    {
                        System.out.print(ti.value+" ");
                        f1.write(ti.value+";\n");
                        ti = ti.next;
                    }
                    f1.write("}\n");
                    System.out.println();
                    iter++;
                }
                tempNode = tempNode.next;
            }
            f1.write("}\n");
            f1.close();
        } catch (IOException e) {
            System.out.println(e);
        }

        return;
    }
    void printstorage()
    {
        node tempNode = storage.head;
        while(tempNode!=null)
        {
            System.out.println(tempNode.value);
            tempNode = tempNode.next;
        }
        return;
    }
    public static void main(String[] args) {
        graph g = new graph(8);
        g.addEdge(0, 1,1);
        g.addEdge(1, 2,1);
        g.addEdge(2, 0,1);
        g.addEdge(2, 3,1);
        g.addEdge(3, 4,1);
        g.addEdge(4, 5,1);
        g.addEdge(4, 7,1);
        g.addEdge(5, 6,1);
        g.addEdge(6, 7,1);
        g.addEdge(6, 4,1);

        System.out.println("Following are strongly connected components "+
                           "in given graph ");
        scc s = new scc(g, 8);
        // s.g.print_graph();
        // s.gt.print_graph();
        s.kosaraju();
    }
}
