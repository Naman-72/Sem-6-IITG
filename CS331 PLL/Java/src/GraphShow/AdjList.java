package GraphShow;
//import java.util.LinkedList;

import java.io.FileWriter;
import java.io.IOException;

import JavaDs.Array;
import JavaDs.LinkedList;
import JavaDs.Pair;

public class AdjList {
    public void printAdjList(Array<LinkedList>adjList,int tc)
    {
        String node;
        int leftNodeBox = 0;
        String pname = "adjListTC_" + Integer.toString(tc) + ".png";
        String fname = "adjListTC_" + Integer.toString(tc) + ".dot";
        try 
        {
            FileWriter writer = new FileWriter(fname);
            writer.write("digraph _adjList{\n");
            writer.write("\trankdir = LR\n");
            writer.write("\tnodesep = 0\n\n");

            writer.write("\tsubgraph cluster_0{\n");
            writer.write("\t\tmargin = 15\n");
            writer.write("\t\tlabel = \"Adjacency List\"\n");

            int ct = 0;
            int len = adjList.length();
            for(int i = 0;i<len;i++)
            {
                writer.write("\t\tsubgraph s" + i + "{\n");
                
                node = "node" + Integer.toString(ct);
                leftNodeBox = ct;
                writer.write("\t\t\t" + node + " [shape=box;label = \"\"]\n");
                ct++;
                LinkedList ll = adjList.get(i);
                LinkedList.LinkedListIterator it = ll.getIterator();

                while(it.hasNext())
                {
                    node = "node" + Integer.toString(ct);
                    String shapeBox = " [shape=record;label = \"{ ";
                    Pair<Integer,Integer>p = it.next();
                    int vertex = p.first,weight = p.second;
                    shapeBox = shapeBox + Integer.toString(vertex) + " | " + Integer.toString(weight);
                    shapeBox = shapeBox + " | }\", height = 0.2]\n";

                    writer.write("\t\t\t" + node + shapeBox);
                    ct++;
                }
                node = "node" + Integer.toString(leftNodeBox);
                writer.write("\t\t\t" + node + " -> ");
                node = "node" + Integer.toString(leftNodeBox + 1);
                String label = Integer.toString(i);
                writer.write(node + "[taillabel = \"" + label + "\",labeldistance = 6.2,labelangle = 180]\n");
                writer.write("\t\t\t");
                for(int j = leftNodeBox + 1;j<ct;j++)
                {
                    node = "node" + Integer.toString(j);
                    if(j == ct-1) writer.write(node);
                    else writer.write(node + " -> ");
                }
                
                writer.write("\n\t\t}\n\n");
            }
            writer.write("\t}\n");
            writer.write("}\n");
            writer.close();

            ImageRenderer iRenderer = new ImageRenderer();
            iRenderer.renderDotFile(fname, pname);
        } 
        catch (IOException e) 
        {
            System.out.println("Some error occured");
        }
        
    }
}
