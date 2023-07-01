import java.io.*;
import java.util.*;
public class dfsalgo {
    static graph a;
    public static void main(String[] args) {
        try {
            File fptr = new File("input.txt");
            Scanner s= new Scanner(fptr);
            int testcases = s.nextInt();
            while(testcases!=0)
            {
                testcases--;
                int v1 = s.nextInt();
                int e = s.nextInt();
                a = new graph(v1);
                for(int i = 0 ; i < e ;i++)
                {
                    int u , v , w;
                    u = s.nextInt();
                    v = s.nextInt();
                    w = s.nextInt();
                    a.addEdge(u, v, w);
                }
                
                File fptr2 = new File("adj_list"+String.valueOf(testcases)+".dot");
                FileWriter f = new FileWriter(fptr2);
                f.write("strict digraph {\n");
                f.write("node [style = filled , fillcolor = blue ]\n");
                f.write("edge [color = red]\n");
                for (int i = 0; i < v1; i++) {
                    node tempnode = a.adj[i].head;
                    while(tempnode!=null)
                    {
                        f.write(i+" -> ");
                        f.write(tempnode.value+" [ label = \""+String.valueOf(tempnode.weight)+"\" ]\n");
                        tempnode = tempnode.next;
                    }
                    f.write("\n");
                }
                f.write("}");
                f.close();
            }
            s.close();
        } catch (IOException e) {
            System.out.println("Error : "+e);
        }
    }
}
