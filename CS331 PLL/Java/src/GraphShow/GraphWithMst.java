package GraphShow;

import java.io.FileWriter;
import java.io.IOException;

import JavaDs.Array;

public class GraphWithMst {

    private void drawEdges(String color,Array<Edge>eArray,
                FileWriter writer,Array<String>nodes)
    {
        int len = eArray.length();
        for(int i = 0;i<len;i++)
        {
            try {
                writer.write("\t\t" + nodes.get(eArray.get(i).u) + "--");
                writer.write(nodes.get(eArray.get(i).v));
                String attr = "[label = \"";
                attr = attr + Integer.toString(eArray.get(i).wt);
                if(color == "red") attr = attr + "\",color = red]";
                else attr = attr + "\"]";
                writer.write(attr);
                writer.write("\n");
            } catch (IOException e) {
                System.out.println("Some error generated " + e);
            }
            
        }
    }

    public void printGraphWithMst(Array<Edge>mst,Array<Edge>nonMst,
                int tc,int vertices)
    {
        String fname = "GraphWithMstTC_" + Integer.toString(tc) + ".dot";
        String pname = fname.substring(0,fname.length() - 3);
        pname = pname + "png";
        Array<String>nodes = new Array<>();
        for(int i = 0;i<vertices;i++)
        {
            nodes.push_back("node" + Integer.toString(i));
        }
        try 
        {
            FileWriter writer = new FileWriter(fname);
            writer.write("graph GraphWithMst{\n");
            writer.write("\tnodesep = 0.7\n");
            writer.write("\tlayout = neato\n");
            writer.write("\tscale = 1.4\n");
            writer.write("\tnode[shape = circle]\n");
            writer.write("\tlabel = \"Graph With Mst\"\n");
            writer.write("\tsubgraph cluster_1{\n");
            writer.write("\t\tmargin = 15\n");
            

            //labeling of nodes(vertices)
            for(int i = 0;i<vertices;i++)
            {
                writer.write("\t\t" + nodes.get(i));
                String attr = "[label = \"";
                attr = attr + Integer.toString(i);
                attr = attr + "\",shape = circle]";
                writer.write(attr);
                writer.write("\n");
            }

            //drawing edges
            drawEdges("red",mst,writer,nodes);
            drawEdges("none",nonMst,writer,nodes);
            
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
