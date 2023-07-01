import java.io.*;
import java.util.Scanner;

public class suffixtree {
    node start;
    int j;
    String A;
    suffixtree()
    {
        j = 0;
        start = new node();
        start.val = j;
        // System.out.println(j);
        j++;
        start.isEnd = true;
    }
    suffixtree(String s)
    {
        j = 0;
        A = s;
        start = new node();
        start.val = j;
        // System.out.println(j);
        j++;
        // s = s+"$";
        for(int i = 0 ; i < s.length();i++)
        {
            // if(s.charAt(i)==' ')continue;
            add(s.substring(i)+"$",i);
            // System.out.println("Insert : "+s.substring(i)+"$");
            
            
        }
        add("$",s.length());
        // add("mississippi$",0);
        // add("ississippi$",0);
        // add("ssissippi$",0);
        // add("sissippi$",0);
        // add("issippi$",0);
        // add("ssippi$",0);
    }
    void add(String s,int index)
    {
        // case 1 
        // if it 1st node
        node temp = start;
        String a = s;
        while(true)
        {
            char c = a.charAt(0);
            if(temp.children[c]==null)
            {
                temp.children[c] = new node(index);
                temp.label[c] = a;
                temp.children[c].val = j;
                temp.children[c].isEnd= true;
                // System.out.println(j);
                j++;
                break;
            }
            else
            {

                String b = temp.label[c];
                String commonString = "";
                int size = 0;
                if(a.length()<b.length())
                {
                    size = a.length();
                }
                else
                {
                    size = b.length();
                }

                for(int i = 0 ; i < size;i++)
                {
                    if(b.charAt(i)==a.charAt(i))
                    {
                        commonString += b.charAt(i);
                    }
                    else
                    {
                        break;
                    }
                }

                // System.out.println(commonString);
                // System.out.println(b);
                // System.out.println(b);
                // System.out.println(b);
                // if(a=="ssippi$")
                //     System.exit(0);
                    
                if(commonString.length()==b.length())
                {
                    // System.out.println(commonString.length());
                    // System.out.println(b.length());
                    a = a.substring(commonString.length());
                    // System.out.println(a);
                    temp = temp.children[commonString.charAt(0)];
                    // System.out.println(a);
                    // System.exit(0);
                    continue;
                }
                // System.out.println(commonString);
                node tempNode = temp.children[c];
                temp.children[commonString.charAt(0)] = new node(index);
                temp.children[commonString.charAt(0)].val = j;
                temp.children[commonString.charAt(0)].isEnd = false;
                temp.label[commonString.charAt(0)] = commonString;
                // System.out.println(j);
                j++;
                node nextChild = temp.children[commonString.charAt(0)];
                if(a.length()!=commonString.length())
                {
                    // b : 
                    // commonstring = a
                    String o = b.substring(commonString.length());
                    // System.out.println(b);
                    // System.out.println(o);
                    nextChild.children[o.charAt(0)] = tempNode;
                    nextChild.children[o.charAt(0)].val = j;
                    nextChild.label[o.charAt(0)] = o;
                    // System.out.println(j);
                    j++;

                    // sissippi$
                    String o2 = a.substring(commonString.length());
                    nextChild.label[o2.charAt(0)] = o2;
                    nextChild.children[o2.charAt(0)] = new node(index);
                    nextChild.children[o2.charAt(0)].val = j; 
                    nextChild.children[o2.charAt(0)].isEnd = true; 
                    // System.out.println(j);
                    j++;
                }
                break;
            }
        }
    }
    
    boolean Search(String s)
    {
        int i = 0;
        node tempNode = start;
        while(tempNode!=null)
        {
            if(i==s.length())
                return true;
            if(tempNode.children[s.charAt(i)]==null)
            {
                return false;
            }
            else 
            {
                String z = tempNode.label[s.charAt(i)];
                int j = 0;
                while(true)
                {
                    if(j == z.length())
                        break;
                    if(i==s.length())
                    {
                        return true;
                    }
                    if(z.charAt(j)==s.charAt(i))
                    {
                        j++;
                        i++;
                    }
                    else 
                    {
                        return false;
                    }
                }
                tempNode = tempNode.children[z.charAt(0)];
            }
        }
        return false;
    }
    void print()
    {
        try {
            File f = new File("suffixTree.dot");
            FileWriter f1 = new FileWriter(f);
            f1.write("digraph G{\n");
            // f1.write("node [style = filled , fillcolor = blue , fontcolor = white ]\n");
            f1.write("node [style = filled , fillcolor = yellow , fontcolor = black , label=\"\"]\n");
            f1.write("edge [color = blue]\n");
            list Q = new list();
            Q.add(start);
            listNode temp = Q.head ;
            while(true)
            {
                node tempNode = temp.value; 
                if(tempNode.isEnd)
                {
                    f1.write(tempNode.val+"[ fillcolor = yellow, fontcolor = black,label = "+tempNode.index+"]\n");
                }
                else
                {
                    f1.write(tempNode.val+"[ fillcolor = white,fontcolor = black, label = \"\"]\n");
                }
                for(int i = 0 ; i < 128; i++)
                {
                    if(tempNode.children[i]!=null)
                    {
                        f1.write(tempNode.val+" -> "+tempNode.children[i].val+" [label = \""+tempNode.label[i]+"\"]"+"\n");
                        Q.add(tempNode.children[i]);
                    }
                }
                temp = temp.next;
                if(temp==null)
                    break;
            }
            f1.write("}");
            f1.close();
        } catch (IOException e) {
            System.out.println(e);            
        }
    }

    public static void main(String[] args)  {
        // suffixtree s = new suffixtree("mississippi");
        Scanner scanner;
        File fptr;
        String s1="GCGACCCCGCGCGACACGCGTAGTTCCCCCATAGGGCCACCGCTAGGGCGTCACAGGCGGTCTACTGAGGGGAGCACGTAGTAACCCGTGATAAGCCAGCGTTTAACCGAGAGCGTGGCACTGTAGGGCGCTCTGGGCGTGCTAGGGCATATCAGCCAACCTAGCTTGGACTGAGGGGACAAGGAGCGGGAGCGACTTAGTGTTACATGGTGGTATTCCTCATTGCTTCAACATGGGGCTATCTTATCACAGCTAGCGTGGGAGTCAATAGGTTATCTGC";
        suffixtree s = new suffixtree(s1);
        s.print();
        System.out.println(s.Search("GCGACCCCGCGCGACACGCGTAGTTCCCCCATAGGGCCACCGCTAGGGC"));
       System.out.println(s.Search("CCCCCATAGGGCCACCGCTAGGGCGTCACAGGCGGTCTACTGAGGGGAGCACGTAGTAACCCGTGATAAGCCAGCGTTTAACCGAGAGCGTGGCACTGTAGGGCGCTCTGGGCGTGCTAGGGCATATCAGCCAACCTAGCTTGGACTGAGGGGACAAGGAGCGGGAGCGACTTAGTGTTACATGGTGGTATTCCTCATTGCTTCAACATGGGGCTATC"));
       System.out.println(s.Search("ACAGCTAGCGTGGGAGTCAATAGGTTATCTGC"));
        // System.out.println(s.Search("na"));
    }
}