import java.io.*;
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

public class kruskalGraph {
    LinkedList[] A;
    LinkedList[] Kgraph;
    int testcase;
    int V;
    int E;
    boolean[] Vis;
    kruskalGraph()
    {
        A = null;
    }    
    kruskalGraph(int nodes,int testcaseno)
    {
        testcase = testcaseno;
        V = nodes;
        E = 0;
        A = new LinkedList[nodes];
        Kgraph = new LinkedList[nodes];
        Vis = new boolean[nodes];
        for(int i = 0; i<nodes;i++)
        {
            Vis[i] = false;
            A[i] = new LinkedList();
            Kgraph[i] = new LinkedList();
        }
    }
    void addEdge(int v ,int u , int weight)
    {
        E++;
        A[u].push(v,weight);
        A[v].push(u,weight);
        return;
    }
    boolean checkcycledfs(int node,int parent)
    {
        Node temp = Kgraph[node].start;
        boolean v = false;
        while(temp!=null)
        {
            if(Vis[temp.data]==false)
            {
                Vis[temp.data]= true;
                v =v || checkcycledfs(temp.data, node);
            }
            else if(Vis[temp.data]==true&&temp.data!=parent)
            {
                return true;
            }
            temp = temp.next;
        }
        return v;
    }
    boolean checkcycle()
    {
        boolean ans = false;
        for(int j = 0 ; j < V;j++)
        {
            for(int i = 0 ; i < V;i++ )
            {
                Vis[i] = false;
            }
            Vis[j] = true;
            ans = ans || checkcycledfs(j,-1);
            if(ans==true)
            {
                System.out.println("Value : "+j);
                return true;
            }
        }
        return ans;
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
    void minSpanningTree()
    {       
        
        // try{
        //     FileWriter a = new FileWriter("AdjacencyList.dot");
        //     try{
        //         a.write("digraph structs{\n");
        //         a.write("nodesep = 0.05;\n");
        //         a.write("rankdir = LR;\n");
        //         a.write("node [shape=record]\n");
        //         a.write("structMain [label=\"");
        //         for(int i = 0 ; i <V;i++)
        //         {
        //             if(i!=V-1)
        //             {
        //                 a.write("<f"+i+"> |");
        //             }
        //             else
        //             {
        //                 a.write("<f"+i+">,height = 2.0]\n");
        //             }
        //         }
        //         a.write("node [width=1.5]\n");
        //         for(int i = 0 ; i < V;i++)
        //         {
                    
        //         }
        //     }
        //     catch(IOException e)
        //     {

        //     }
        //     a.close();
        // }
        // catch(IOException e)
        // {
        //     System.out.println("Can't Create");
        // }


        linked_node_pair L = new linked_node_pair();
        for(int i = 0 ; i < V; i++)
        {
            Node temp = A[i].start;
            while(temp!=null)
            {
                L.add(i, temp.data, temp.weight);
                temp = temp.next;
            }
        }
        // printing in sorted manner
        // graph_node_pair n = L.start;
        // while(n!=null)
        // {
        //     System.out.println("Node : "+n.u+" "+n.v+" "+n.w);
        //     n = n.next;
        // }
        try{
            FileWriter a = new FileWriter("Graph"+String.valueOf(testcase)+".dot");
            try{
                a.write("graph A{\n");
                graph_node_pair temp = L.start;
                while(temp!=null)
                {
                    a.write(temp.u+"--"+temp.v+"[label = "+temp.w+"];\n");
                    temp = temp.next;
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


        graph_node_pair n = L.start;
        linked_node_pair finalList = new linked_node_pair();
        linked_node_pair HighligtedMST = new linked_node_pair();
        linked_node_pair nonHighligtedMST = new linked_node_pair();
        while(n!=null)
        {
            Kgraph[n.u].push(n.v, n.w);
            Kgraph[n.v].push(n.u, n.w);
            if(checkcycle())
            {
                nonHighligtedMST.add(n.v, n.u, n.w);
                Kgraph[n.u].remove(n.v, n.w);
                Kgraph[n.v].remove(n.u, n.w);
                System.out.println(n.w+" Removed");
            }
            else
            {
             finalList.add(n.u, n.v, n.w);   
             HighligtedMST.add(n.u, n.v, n.w);   
            }
            n = n.next;
        }
        for(int i = 0 ; i < V; i++)
        {
            Node z = Kgraph[i].start;
            System.out.print(i+" : ");
            while(z!=null)
            {
                System.out.print(z.data+" ");
                z = z.next;
            }
            System.out.println();
        }
        try{
            FileWriter a = new FileWriter("MST"+String.valueOf(testcase)+".dot");
            try{
                a.write("graph A{\n");
                graph_node_pair temp = finalList.start;
                while(temp!=null)
                {
                    a.write(temp.u+"--"+temp.v+"[label = "+temp.w+"];\n");
                    temp = temp.next;
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
            System.out.println("Can't Create MST");
        }

        try{
            FileWriter a = new FileWriter("ColoredMST"+String.valueOf(testcase)+".dot");
            try{
                a.write("graph A{\n");
                graph_node_pair temp = HighligtedMST.start;
                while(temp!=null)
                {
                    a.write(temp.u+"--"+temp.v+"[label = "+temp.w+"; color = red ];\n");
                    temp = temp.next;
                }
                temp = nonHighligtedMST.start;
                while(temp!=null)
                {
                    a.write(temp.u+"--"+temp.v+"[label = "+temp.w+"];\n");
                    temp = temp.next;
                }
                a.write("}\n");
            }
            catch(IOException e)
            {
                System.out.println("Can't Create Colorful MST");
            }
            a.close();
        }
        catch(IOException e)
        {
            System.out.println("Can't Create Colorful MST");
        }

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
                kruskalGraph g = new kruskalGraph(Nv,incr);
                for(int i = 0 ; i < Ne;i++)
                {
                    int aa = FileRead.nextInt();
                    int ab = FileRead.nextInt();
                    int ac = FileRead.nextInt();
                    g.addEdge(aa, ab, ac);
                }
                g.minSpanningTree();
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
        // kruskalGraph G = new kruskalGraph(6);
        // G.addEdge(0, 1, 7);
        // G.addEdge(1, 2, 9);
        // G.addEdge(3, 2, 5);
        // G.addEdge(3, 4, 1);
        // G.addEdge(5, 4, 3);
        // G.addEdge(0, 5, 8);
        // G.addEdge(1, 5, 6);
        // G.addEdge(2, 4, 2);
        // G.addEdge(2, 5, 4);
        // G.printList();
        // G.minSpanningTree();
        // G.printAdjacencyList();
    }
}
