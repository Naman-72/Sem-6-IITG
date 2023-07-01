import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

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
    LinkedList[] A;
    LinkedList[] Dgraph;
    int[] distance;
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
        for(int i = 0; i<nodes;i++)
        {
            Vis[i] = false;
            A[i] = new LinkedList();
            Dgraph[i] = new LinkedList();
        }
    }
    void printAdjacencyList(){
        try {
            FileWriter adjwrt = new FileWriter("adj"+String.valueOf(testcase)+".dot");
            adjwrt.write("digraph adj{\n"+"rankdir=LR\n"+"nodesep=0\n");
            adjwrt.write("\tnodesep=.05;\n");
            adjwrt.write("\trankdir=LR;\n");
            adjwrt.write("\tnode [shape=record, width=.1, height=.1 ];\n");
            adjwrt.write("\tnode0 [label = \" ");
            for(int i=0;i<V;i++){
                if(i!=0)adjwrt.write(" | ");
                adjwrt.write("<f"+i+"> "+i);
            }
            adjwrt.write(" \", height=2.0 ];\n");
            adjwrt.write("\tnode [width = 1.5];\n");
            int counter=1;
            for(int i=0;i<V;i++){
                Node temporary = A[i].start;
                int prev = 0;
                while(temporary!=null)
                {
                    adjwrt.write("\tnode"+counter+" [label = \"{<p> "+temporary.data+" | "+temporary.weight+" | <n> }\"];\n");
                    adjwrt.write("\tnode"+prev);
                    if(prev==0)
                     adjwrt.write(":f"+i);
                    else adjwrt.write(":n");
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
    void dijsktra(int src)
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
        for(int i = 0 ; i < V; i++)
        {
            System.out.println(i+" : "+distance[i]);
        }
        linked_node_pair t = new linked_node_pair();
        for(int i = 0 ; i < V;i++)
        {
            Node z = Dgraph[i].start;
            System.out.print(i+" : ");
            while(z!=null)
            {
                t.add(z.data, i, z.weight);
                System.out.print(z.data+" ");
                z = z.next;
            }
            System.out.println();
        }
        try{
            FileWriter a = new FileWriter("DMST"+String.valueOf(testcase)+".dot");
            a.write("graph A{\n");
            // for(int i = 0 ; i < V;i++)
            // {
            //     Node z = Dgraph[i].start;
            //     while(z!=null)
            //     {
            //         a.write(i+"--"+z.data+"[label ="+z.weight+"];\n");
            //         z = z.next;
            //     }
            // }
            graph_node_pair gi = t.start;
            while(gi!=null)
            {
                a.write(gi.u+"--"+gi.v+"[label ="+gi.w+"];\n");
                gi = gi.next;   
            }
            a.write("}\n");
            a.close();
        }
        catch(IOException e)
        {
            System.out.println("Can't Create MST");
        }

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
            File fptr  = new File("KruskalInput.txt");
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
                g.dijsktra(source);
                g.printAdjacencyList();
                try{
                    Runtime.getRuntime().exec("dot -Tpng MST"+String.valueOf(incr)+".dot -o MST"+String.valueOf(incr)+".png");
                    Runtime.getRuntime().exec("dot -Tpng Graph"+String.valueOf(incr)+".dot -o Graph"+String.valueOf(incr)+".png");
                    Runtime.getRuntime().exec("dot -Tpng ColoredMST"+String.valueOf(incr)+".dot -o ColoredMST"+String.valueOf(incr)+".png");
                    Runtime.getRuntime().exec("dot -Tpng adj"+String.valueOf(incr)+".dot -o adj."+String.valueOf(incr)+"png");
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
