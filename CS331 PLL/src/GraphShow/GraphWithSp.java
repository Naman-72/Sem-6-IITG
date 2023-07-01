package GraphShow;

import java.io.FileWriter;
import java.io.IOException;

import JavaDs.Array;
import JavaDs.Pair;

public class GraphWithSp {
    public void printGraphWithSp(Array<Edge>edgeArray,
                Array<Pair<Integer,Integer>>path,String fname)
    {
        String pname = fname.substring(0,fname.length() - 3);
        pname = pname + "png";
        try 
        {
            FileWriter writer = new FileWriter(fname);
            writer.write("strict graph _shortestPath{\n");
            writer.write("\tnodesep = 0.7\n");
            writer.write("\tlayout = neato\n");
            writer.write("\tscale = 1.4\n");
            writer.write("\tnode[shape = circle]\n");
            writer.write("\tlabel = \"Shortest path\"\n");
            writer.write("\tsubgraph cluster_1{\n");
            writer.write("\t\tmargin = 15\n");
            writer.write("\t\tdest[shape = plaintext,width = 0.55]\n");
            writer.write("\t\tsrc[shape = plaintext,width = 0.55]\n");
            
            
            for(int i = 0;i<path.length();i++)
            {
                writer.write("\t\t");
                writer.write(Integer.toString(path.get(i).first));
                writer.write("[color = gold,style = filled]\n");
            }
            
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

            for(int i = 0;i<path.length()-1;i++)
            {
                writer.write("\t\t" + Integer.toString(path.get(i).first) + "--");
                writer.write(Integer.toString(path.get(i+1).first));
                String attr = "[label = \"";
                attr = attr + Integer.toString(path.get(i+1).second);
                attr = attr + "\",color = gold]";
                writer.write(attr);
                writer.write("\n");
            }
            writer.write("\t\t");
            int src = path.get(0).first,dest = path.back().first;
            writer.write(Integer.toString(src));
            writer.write("--src[dir = back,color = red]\n");
            writer.write("\t\t");
            writer.write(Integer.toString(dest));
            writer.write("--dest[dir = back,color = red]\n");

            writer.write("\t}\n");
            writer.write("}\n");
            writer.close();
            ImageRenderer iRenderer = new ImageRenderer();
            iRenderer.renderDotFile(fname, pname);
        }
        catch(IOException e){
            System.out.println("Shortest path, some error occured : " + e);
        }
    }
}
