import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

// Node for adjacency list
class Node{
    int data;
    int weight;
    Node next;
    Node(int a , int b)
    {
        data = a;
        weight = b;
        next = null;
    }
}
// node for set
class graph_node_pair{
    int u;
    int v;
    int w;
    graph_node_pair next;
    graph_node_pair(int a , int b, int c)
    {
        u = a;
        v = b;
        w = c;
        next = null;
    }
    graph_node_pair(int a , int b)
    {
        u = a;
        v = b;
        w = 1;
        next = null;
    }
}
// implementation of set 
// will contain unique edges and weight
// can't repeat the same edge
class linked_node_pair{
    graph_node_pair start;
    linked_node_pair()
    {
        start = null;
    }
    boolean find(int u , int v ,int w)
    {
        if(start==null)
        {
            return false;
        }
        else
        {
            graph_node_pair temp = start;
            while(temp!=null&&temp.w<=w)
            {
                if((temp.u==u&&temp.v==v&&temp.w==w)||(temp.u==v&&temp.v==u&&temp.w==w))
                {
                    return true;
                }
                temp = temp.next;
            }
        }
        return false;
    }
    void add(int u,int v,int w)
    {
        boolean z = find(u, v, w);
        if(z==true)
            return;
        graph_node_pair n = new graph_node_pair(u, v, w);
        if(start==null)
        {
            start = n;
            return;
        }
        else
        {
            if(start.w>w)
            {
                n.next = start;
                start = n;
                return;
            }
            else
            {
                graph_node_pair temp = start;
                while(temp.next!=null&&temp.next.w<w)
                {
                    temp = temp.next;
                }   
                n.next = temp.next;
                temp.next = n;
                return;
            }
        }
    }

}
// adjacency list // linked list
class LinkedList{
    Node start;
    LinkedList()
    {
        start = null;
    }
    void push(int x)
    {
        push(x,1);
    }
    void push(int x,int weight)
    {
        Node z = new Node(x, weight);
        if(start == null)
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
    void remove(int x,int weight)
    {
        if(start == null)
        {
            return;
        }
        else
        {
            Node temp = start;
            if(temp.data==x&&temp.weight==weight)
            {
                start = start.next;
                return;
            }
            while(temp.next!=null)
            {
                if(temp.next.data == x&&temp.next.weight == weight)
                {
                    temp.next = temp.next.next;
                    return;
                }
                temp = temp.next;
            }
        }
        return;
    }
}
public class dijsktraGraph {
    // adjacency list for graph
    LinkedList[] A;
    // adjacency list for shortest destination between src and dest
    LinkedList[] Dgraph;
    // array for distance wrt src
    int[] distance;
    // parent array wrt src
    int[] parent;
    // weight corresponding to parent
    int[] parentw;
    int V;
    int testcase;
    int E;
    boolean[] Vis;
    dijsktraGraph()
    {
        A = null;
    }    
    dijsktraGraph(int nodes,int testcaseno)
    {
        testcase = testcaseno;
        V = nodes;
        E = 0;
        A = new LinkedList[nodes];
        Dgraph = new LinkedList[nodes];
        Vis = new boolean[nodes];
        parent = new int[nodes];
        parentw = new int[nodes];
        for(int i = 0; i<nodes;i++)
        {
            Vis[i] = false;
            parent[i] = -1;
            parentw[i] = -1;
            A[i] = new LinkedList();
            Dgraph[i] = new LinkedList();
        }
    }

    // Printing adjacency list
    void printAdjacencyList(){
        try {
            FileWriter adjwrt = new FileWriter("adj"+String.valueOf(testcase)+".dot");

            adjwrt.write("digraph adj{\n"+"rankdir=LR\n"+"nodesep=0\n");

            adjwrt.write("\tnodesep=.05;\n");

            adjwrt.write("\trankdir=LR;\n");
            
            adjwrt.write("\tnode [shape=record, width=.1, height=.1 ];\n");
            
            adjwrt.write("\tnode0 [label = \" ");
            
            // ALL VERTICES (NODE 0) we are using for its representation 
            // Like this  
            // node0 [label = " <f0> 0 | <f1> 1 | <f2> 2 | <f3> 3 | <f4> 4 ", height=2.0 ];
            // node 0 represent the initial vertices
            for(int i=0;i<V;i++){
                if(i!=0)adjwrt.write(" | ");
                adjwrt.write("<f"+i+"> "+i);
            }
            adjwrt.write(" \", height=2.0 ];\n");
            adjwrt.write("\tnode [width = 1.5];\n");

            // now for all vertices we are adding its list
            int counter=1;
            for(int i=0;i<V;i++){
                Node temporary = A[i].start;
                // prev to store last node value
                int prev = 0;
                // 1-
                while(temporary!=null)
                {
                    // prev // counter -> node no
                    adjwrt.write("\tnode"+counter+" [label = \"{<p> "+temporary.data+" | "+temporary.weight+" | <n> }\"];\n");
                    // node1 [label = "{<p> 1 | 2 | <n> }"]; like this we represent prev and next section
                    adjwrt.write("\tnode"+prev);
                    if(prev==0)
                    {
                        // node0:f0 -> node1:p;
                        adjwrt.write(":f"+i);
                    }
                    else 
                    {
                        // node1:n -> node2:p;
                        adjwrt.write(":n");
                    }
                    adjwrt.write(" -> node"+counter+":p;\n");
                    
                    prev=counter;
                    counter++;
                    temporary = temporary.next;
                }
            }
            adjwrt.write("}\n");
            adjwrt.close();
          } 
          catch (IOException except11) {
            except11.printStackTrace();
            System.out.println("An error occurred. Please check!");
          }
    }

    void addEdge(int v ,int u , int weight)
    {
        E++;
        A[u].push(v,weight);
        A[v].push(u,weight);
        return;
    }
    void printList()
    {
        System.out.println("Vertices : "+V+" , Edges : "+E);
        for(int i = 0 ; i < V; i++)
        {
            Node z = A[i].start;
            System.out.print(i+" : ");
            while(z!=null)
            {
                System.out.print(z.data+" ");
                z = z.next;
            }
            System.out.println();
        }
        return;
    }
    // path from src to dest 
    void printpath(int src , int dest)
    {
        for(int i = 0;i<V;i++)
        {
            Vis[i] = false;
        }
        Vis[src] = true;
        dfs(src,-1);
        linked_node_pair shortestpath = new linked_node_pair();
        int temp = dest;
        // set for shortest path
        while(true)
        {
            if(temp == src)
            {
                break;
            }
            else
            {
                shortestpath.add(temp, parent[temp], parentw[temp]);
                temp = parent[temp];
            }
        }
        // set for all edges
        linked_node_pair Link = new linked_node_pair();
        for(int i = 0; i < V;i++)
        {
            Node tem = A[i].start;
            while(tem!=null)
            {
                Link.add(i, tem.data, tem.weight);
                tem = tem.next;
            }
        }

        // printing graph
        try{
            FileWriter a = new FileWriter("Graph"+String.valueOf(testcase)+".dot");
            try{
                a.write("graph A{\n");
                graph_node_pair tem = Link.start;
                while(tem!=null)
                {
                    a.write(tem.u+"--"+tem.v+"[label = "+tem.w+"];\n");
                    tem= tem.next;
                }
                a.write("}\n");
            }
            catch(IOException e)
            {
                System.out.println("Can't Create Graph");
            }
            a.close();
        }
        catch(IOException e)
        {
            System.out.println("Can't Create Graph");
        }

        // printing shortest path
        try{
            FileWriter a = new FileWriter("Shortest"+String.valueOf(testcase)+".dot");
            try{
                a.write("graph A{\n");
                graph_node_pair tem = shortestpath.start;
                a.write("node [color = yellow];\n");
                while(tem!=null)
                {
                    a.write(tem.u+"--"+tem.v+"[label = "+tem.w+";color = red];\n");
                    tem = tem.next;
                }
                a.write("}\n");
            }
            catch(IOException e)
            {
                System.out.println("Can't Create MST");
            }
            a.close();
        }
        catch(IOException e)
        {
            System.out.println("Can't Create Shortest Path");
        }

        // printing colorful graph
        try{    
            FileWriter a = new FileWriter("Highlighted"+String.valueOf(testcase)+".dot");
            try{
                a.write("graph A{\n");
                graph_node_pair tem = Link.start;
                while(tem!=null)
                {
                    a.write(tem.u+";\n");
                    a.write(tem.v+";\n");
                    tem = tem.next;
                }
                tem = shortestpath.start;
                while(tem!=null)
                {
                    a.write(tem.u+" [color = yellow,style = filled];\n");
                    a.write(tem.v+" [color = yellow,style = filled];\n");
                    tem = tem.next;
                }
                tem = Link.start;
                while(tem!=null)
                {
                    if(shortestpath.find(tem.u,tem.v, tem.w))
                    {
                        a.write(tem.u+"--"+tem.v+"[label = "+tem.w+";color = yellow];\n");
                    }
                    else
                    {
                        a.write(tem.u+"--"+tem.v+"[label = "+tem.w+"];\n");
                    }
                    tem = tem.next;
                }
                a.write("}\n");
            }
            catch(IOException e)
            {
                System.out.println("Can't Create MST");
            }
            a.close();
        }
        catch(IOException e)
        {
            System.out.println("Can't Create Shortest Path");
        }

    }
    // dfs for storing each parent
    void dfs(int node,int par)
    {
        Node temp = Dgraph[node].start;
        while(temp!=null)
        {
            if(Vis[temp.data]==false)
            {
                Vis[temp.data]= true;
                parentw[temp.data] = temp.weight;
                parent[temp.data] = node;
                dfs(temp.data, node);
            }
            temp = temp.next;
        }
        return;
    }
    // making corresponding tree
    void dijsktra(int src,int destination)
    {
        distance = new int[V];
        for(int i = 0 ; i < V;i++)
        {
            Vis[i] = false;
            distance[i] = Integer.MAX_VALUE;
        }
        distance[src] = 0;
        Vis[src] = true;
        update_recursion(src);
        printpath(src,destination);
        // for(int i = 0 ; i < V; i++)
        // {
        //     System.out.println(i+" : "+distance[i]);
        // }
        // linked_node_pair t = new linked_node_pair();
        // for(int i = 0 ; i < V;i++)
        // {
        //     Node z = Dgraph[i].start;
        //     System.out.print(i+" : ");
        //     while(z!=null)
        //     {
        //         t.add(z.data, i, z.weight);
        //         System.out.print(z.data+" ");
        //         z = z.next;
        //     }
        //     System.out.println();
        // }
        // try{
        //     FileWriter a = new FileWriter("DMST"+String.valueOf(testcase)+".dot");
        //     a.write("graph A{\n");
        //     // for(int i = 0 ; i < V;i++)
        //     // {
        //     //     Node z = Dgraph[i].start;
        //     //     while(z!=null)
        //     //     {
        //     //         a.write(i+"--"+z.data+"[label ="+z.weight+"];\n");
        //     //         z = z.next;
        //     //     }
        //     // }
        //     graph_node_pair gi = t.start;
        //     while(gi!=null)
        //     {
        //         a.write(gi.u+"--"+gi.v+"[label ="+gi.w+"];\n");
        //         gi = gi.next;   
        //     }
        //     a.write("}\n");
        //     a.close();
        // }
        // catch(IOException e)
        // {
        //     System.out.println("Can't Create MST");
        // }
        return;
    }
    void update_recursion(int src)
    {
        Node x = A[src].start;
        while(x!=null)
        {
            if(!Vis[x.data])
            {
                if(distance[src]+x.weight<distance[x.data])
                {
                    if(distance[x.data]!=Integer.MAX_VALUE)
                    {
                        Node j = Dgraph[x.data].start;
                        while(j!=null)
                        {
                            Node o = j.next;
                            Dgraph[x.data].remove(j.data, j.weight);
                            Dgraph[j.data].remove(x.data, j.weight);
                            j = o;
                        }
                    }
                    distance[x.data] = distance[src]+x.weight;
                    Dgraph[src].push(x.data,x.weight);
                    Dgraph[x.data].push(src,x.weight);
                }
            }
            x = x.next;
        }
        int nextNode = -1;
        int d = Integer.MAX_VALUE;
        for(int j = 0; j< V;j++)
        {
            if(Vis[j]==true)
            {
                continue;
            }
            else
            {
                if(d>distance[j])
                {
                    d = distance[j];
                    nextNode = j;
                }
            }
        }
        if(nextNode==-1)
        {
            return;
        }
        Vis[nextNode] = true;
        update_recursion(nextNode);
        return;
    }
    public static void main(String[] args) {
        try {
            File fptr  = new File("djinput.txt");
            Scanner FileRead = new Scanner(fptr);
            int testcases = FileRead.nextInt();
            int incr = 0;
            while(testcases!=0)
            {
                testcases--;
                int Nv = FileRead.nextInt();
                int Ne = FileRead.nextInt();
                dijsktraGraph g = new dijsktraGraph(Nv,incr);
                for(int i = 0 ; i < Ne;i++)
                {
                    int aa = FileRead.nextInt();
                    int ab = FileRead.nextInt();
                    int ac = FileRead.nextInt();
                    g.addEdge(aa, ab, ac);
                }
                int source = FileRead.nextInt();
                int destination = FileRead.nextInt();
                g.dijsktra(source,destination);
                g.printAdjacencyList();
                try{
                    Runtime.getRuntime().exec("dot -Tpng Shortest"+String.valueOf(incr)+".dot -o Shortest"+String.valueOf(incr)+".png");
                    Runtime.getRuntime().exec("dot -Tpng Graph"+String.valueOf(incr)+".dot -o Graph"+String.valueOf(incr)+".png");
                    Runtime.getRuntime().exec("dot -Tpng Highlighted"+String.valueOf(incr)+".dot -o Highlighted"+String.valueOf(incr)+".png");
                    Runtime.getRuntime().exec("dot -Tpng adj"+String.valueOf(incr)+".dot -o adj"+String.valueOf(incr)+".png");
                }
                catch(Exception e)
                {
                    
                }
                incr++;
            }
            FileRead.close();
        } catch (IOException e) {
            System.out.println(e);
        }
    }
}
