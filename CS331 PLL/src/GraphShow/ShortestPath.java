package GraphShow;

import java.io.FileWriter;
import java.io.IOException;

import JavaDs.Array;
import JavaDs.Pair;

public class ShortestPath {
    public void printShortestPath(Array<Pair<Integer,Integer>>path,String fname)
    {
        String pname = fname.substring(0,fname.length() - 3);
        pname = pname + "png";
        try 
        {
            FileWriter writer = new FileWriter(fname);
            writer.write("graph _shortestPath{\n");
            writer.write("\tnodesep = 0.7\n");
            writer.write("\tlayout = circo\n");
            writer.write("\tnode[color = gold]\n");
            writer.write("\tedge[color = red]\n");
            writer.write("\tlabel = \"Shortest path\"\n");
            writer.write("\tsubgraph cluster_1{\n");
            writer.write("\t\tmargin = 15\n");
            
            for(int i = 0;i<path.length()-1;i++)
            {
                writer.write("\t\t" + Integer.toString(path.get(i).first) + "--");
                writer.write(Integer.toString(path.get(i+1).first));
                String attr = "[label = \"";
                attr = attr + Integer.toString(path.get(i+1).second);
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
        catch(IOException e){
            System.out.println("Shortest path, some error occured : " + e);
        }
    }
}
