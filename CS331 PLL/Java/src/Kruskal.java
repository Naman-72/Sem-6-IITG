import java.io.File;
import java.util.Scanner;

import GraphShow.AdjList;
import GraphShow.Edge;
import GraphShow.Graph;
import GraphShow.GraphWithMst;
import JavaDs.Array;
import JavaDs.Comparator;
import JavaDs.DSU;
import JavaDs.LinkedList;

class Comp implements Comparator<Edge>{
    @Override
    public boolean compare(Edge a,Edge b)
    {
        return a.wt < b.wt;
    }
}

public class Kruskal {
    public void showAdjacencyList(Array<LinkedList>adjList,int tc)
    {
        AdjList list = new AdjList();
        list.printAdjList(adjList,tc); 
    }

    public void showGraph(Array<Edge>edgeArray,int vertices,int tc)
    {
        Graph graph = new Graph();
        String fnameG = "GraphTC_" + Integer.toString(tc) + ".dot";
        graph.printGraph(edgeArray, tc, vertices,fnameG);
    }

    public void showMST(Array<Edge>edgeArray,int vertices,int tc)
    {
        Graph graph = new Graph();
        String fnameMst = "MstTC_" + Integer.toString(tc) + ".dot";
        graph.printGraph(edgeArray, tc, vertices,fnameMst);
    }

    public void showMSTInTheGraph(Array<Edge>mst,Array<Edge>nonMst,
                int vertices,int tc)
    {
        GraphWithMst graphWithMst = new GraphWithMst();
        graphWithMst.printGraphWithMst(mst, nonMst, tc, vertices);
    }

    public void algo(File fptr,Scanner scanner,int tc)
    {
        int vertices,edges,treeWeight = 0;
        
        Array<LinkedList>adjList = new Array<LinkedList>();
        Array<Edge>edgeArray = new Array<>();
        Array<Edge>mst = new Array<>();
        Array<Edge>nonMst = new Array<>();
        
        vertices = scanner.nextInt();
        edges = scanner.nextInt();
        DSU dsu = new DSU(vertices);
        
        for(int i = 0; i<vertices;i++)
        {
            LinkedList ll = new LinkedList();
            adjList.push_back(ll);
        }

        for(int i = 0;i<edges;i++)
        {
            int a,b,wt;
            a = scanner.nextInt();
            b = scanner.nextInt();
            wt = scanner.nextInt();
            adjList.get(a).insert(b, wt);
            adjList.get(b).insert(a, wt);
            Edge edge = new Edge(a, b, wt);
            edgeArray.push_back(edge);
        }
        edgeArray.sort(new Comp());
        for(int i = 0;i < edges;i++)
        {
            Edge node = edgeArray.get(i);
            if(dsu.findPar(node.u) != dsu.findPar(node.v))
            {
                mst.push_back(node);
                dsu.union(node.u, node.v);
                treeWeight += node.wt;
            }
            else nonMst.push_back(node);
        }

        System.out.println("Weight of mst : " + treeWeight);
        showAdjacencyList(adjList, tc);
        showGraph(edgeArray, vertices, tc);
        showMST(mst, vertices, tc);
        showMSTInTheGraph(mst, nonMst, vertices, tc);
    }

    public static void main(String[] args) {
        Kruskal kruskal = new Kruskal();
        int tc = 0;
        File fptr;
        Scanner scanner;

        try{
            fptr = new File("input.txt");
            scanner = new Scanner(fptr);
            tc = scanner.nextInt();
            for(int i = 0;i < tc; i++) 
            {
                kruskal.algo(fptr, scanner,tc);
            }
            scanner.close();
        }
        catch(Exception e){
            System.out.println("Some error occured: " + e);
        } 
    }
}
