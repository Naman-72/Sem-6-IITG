package GraphShow;

import java.io.FileWriter;
import java.io.IOException;

import JavaDs.Array;

public class Graph {
    public void printGraph(Array<Edge>edgeArray,int tc,int vertices,String fname)
    {
        String pname = fname.substring(0,fname.length() - 3);
        pname = pname + "png";
        try 
        {
            FileWriter writer = new FileWriter(fname);
            writer.write("graph _shortestPath{\n");
            writer.write("\tnodesep = 0.7\n");
            writer.write("\tlayout = neato\n");
            writer.write("\tscale = 1.4\n");
            writer.write("\tnode[shape = circle]\n");
            writer.write("\tlabel = \"Shortest path\"\n");
            writer.write("\tsubgraph cluster_1{\n");
            writer.write("\t\tmargin = 15\n");
            
            int edges = edgeArray.length();
            for(int i = 0;i<edges;i++)
            {
                writer.write("\t\t" + Integer.toString(edgeArray.get(i).u) + "--");
                writer.write(Integer.toString(edgeArray.get(i).v));
                String attr = "[label = \"";
                attr = attr + Integer.toString(edgeArray.get(i).wt);
                attr = attr + "\"]";
                writer.write(attr);
                writer.write("\n");
            }
            writer.write("\t}\n");
            writer.write("}\n");
            writer.close();
            ImageRenderer iRenderer = new ImageRenderer();
            iRenderer.renderDotFile(fname, pname);
        }
        catch (IOException e) 
        {
            System.out.println("Some error occured : " + e);
        }
    }
}
