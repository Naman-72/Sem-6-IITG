import java.io.File;
import java.util.Scanner;
import JavaDs.Array;
import JavaDs.Comparator;
import JavaDs.LinkedList;
import JavaDs.Pair;
import JavaDs.PriorityQueue;
import GraphShow.AdjList;
import GraphShow.Edge;
import GraphShow.Graph;
import GraphShow.GraphWithSp;
import GraphShow.ShortestPath;

class Comp implements Comparator<Pair<Integer,Integer>>{
    @Override
    public boolean compare(Pair<Integer,Integer> a,Pair<Integer,Integer> b)
    {
        return a.first < b.first;
    }
}

public class Dijkstra {

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

    public void showSp(Array<Pair<Integer,Integer>>path,int tc)
    {
        ShortestPath shortestPath = new ShortestPath();
        String fnameG = "ShortestPathTC_" + Integer.toString(tc) + ".dot";
        //fnameG = "src\\DotFiles\\" + fnameG;
        shortestPath.printShortestPath(path, fnameG);
    }

    public void showGraphWithSp(Array<Edge>edgeArray,Array<Pair<Integer,Integer>>path,
                        int tc)
    {
        GraphWithSp g = new GraphWithSp();
        String fname = "GraphWithSpTC_" + Integer.toString(tc) + ".dot";
        g.printGraphWithSp(edgeArray, path, fname);
    }

    public void algo(File fptr,Scanner scanner,int tc)
    {
        int vertices,edges,source,destination;
        Array<LinkedList>adjList = new Array<LinkedList>();
        Array<Edge>edgeArray = new Array<>();

        vertices = scanner.nextInt();
        edges = scanner.nextInt();
        Array<Integer>dist = new Array<>(vertices,Integer.MAX_VALUE);
        Array<Pair<Integer,Integer>>parent = new Array<>(vertices);
        Array<Pair<Integer,Integer>>path = new Array<>();

        for(int i = 0; i<vertices;i++)
        {
            LinkedList ll = new LinkedList();
            adjList.push_back(ll);
            parent.set(i, new Pair<Integer,Integer>(i, 0));
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

        source = scanner.nextInt();
        destination = scanner.nextInt();
        parent.set(source,new Pair<Integer,Integer>(-1, 0));
        dist.set(source, 0);

        PriorityQueue<Pair<Integer,Integer>>q = new PriorityQueue<>(new Comp());
        Pair<Integer,Integer>p = new Pair<>(0, source);
        q.push(p);

        while(!q.isEmpty())
        {
            p = q.top();
            q.pop();
            int node = p.second;
            LinkedList ll = adjList.get(node);
            LinkedList.LinkedListIterator it = ll.getIterator();
            Pair<Integer,Integer>llPair;
            while(it.hasNext())
            {
                 llPair = it.next();
                 int child = llPair.first,wt = llPair.second;
                 if(dist.get(node) + wt < dist.get(child))
                 {
                    dist.set(child, dist.get(node) + wt);
                    llPair.first = dist.get(child);
                    llPair.second = child;
                    q.push(llPair);
                    parent.set(child, new Pair<Integer,Integer>(node, wt));
                 }
            }
        }
        int curr = destination;
        while(curr != -1)
        {
            int wt = parent.get(curr).second;
            path.push_back(new Pair<Integer,Integer>(curr,wt));
            curr = parent.get(curr).first;
        }
        System.out.println("Shortest path:");
        path.reverse();

        for(int i = 0;i<path.length();i++) System.out.println(path.get(i).toString());
        showAdjacencyList(adjList, tc);
        showGraph(edgeArray, vertices, tc);
        showSp(path,tc);
        showGraphWithSp(edgeArray, path, tc);
    }

    public static void main(String[] args) {
        Dijkstra dijkstra = new Dijkstra();
        int tc = 0;
        File fptr;
        Scanner scanner;

        try{
            fptr = new File("input.txt");
            scanner = new Scanner(fptr);
            tc = scanner.nextInt();
            for(int i = 0;i < tc; i++) 
            {
                dijkstra.algo(fptr, scanner,i+1);
            }
            scanner.close();
        }
        catch(Exception e){
            System.out.println("Some error occured: " + e);
        }
    }
    
}
