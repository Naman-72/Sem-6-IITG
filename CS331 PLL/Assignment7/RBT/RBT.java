import java.util.*;
import java.io.*;
public class RBT {
    node head;
    node nil;
    RBT()
    {
        head = null;
        nil = new node();
        nil.color = 1;
        nil.parent = null;
        nil.left = null;
        nil .right = null;
    }
    node findUncleNode(node x)
    {
        if(x==nil||x==null)
        {
            return null;
        }
        if(x.parent==null||x.parent==nil)
        {
            return null;
        }
        if(x.parent.parent==null||x.parent.parent==nil)
        {
            return null;
        }
        node p = x.parent;
        if(p.parent.left==p)
        {
            return p.parent.right;
        }        
        else
        {
            return p.parent.left;
        }
    }
    node findGrandParentNode(node x)
    {
        if(x==nil||x==null)
        {
            return null;
        }
        if(x.parent==null||x.parent==nil)
        {
            return null;
        }
        return x.parent.parent;
    }
    void add_normal(int val)
    {
            // creating a new node and setting its attributes
            node x = new node(val);
    
            // initially the node is of red color 
            x.color = 0;
            x.left = nil;
            x.right = nil;
            x.parent = null;
            x.data = val;
    
            if(head == null)
            {
                // for empty red black tree
                head = x;
                x.color = 1; // root is black node
                return;
            }
            else
            {
                // now search for correct position
                // adding the red color node 
                // note* don't forgot to set parent
                node temp = head;
                while(true)
                {
                    if(temp.data>=val)
                    {
                        if(temp.left == nil)
                        {
                            temp.left = x;
                            if(temp.right==nil||temp.right==null)
                            temp.right=nil;
                            x.parent = temp;
                            break ;
                        }
                        else
                        {
                            temp = temp.left;
                        }
                    }
                    else
                    {
                        if(temp.right == nil)
                        {
                            temp.right = x;
                            if(temp.left==nil||temp.left==null)
                            temp.left=nil;
                            x.parent = temp;
                            break ;
                        }
                        else
                        {
                            temp = temp.right;
                        }
                    }
                }
                return;
            }
    }
    void add(int val)
    {
        // creating a new node and setting its attributes
        node x = new node(val);

        // initially the node is of red color 
        x.color = 0;
        x.left = nil;
        x.right = nil;
        x.parent = null;
        x.data = val;

        if(head == null)
        {
            // for empty red black tree
            head = x;
            x.color = 1; // root is black node
            return;
        }
        else
        {
            // now search for correct position
            // adding the red color node 
            // note* don't forgot to set parent
            node temp = head;
            while(true)
            {
                if(temp.data>=val)
                {
                    if(temp.left == nil)
                    {
                        temp.left = x;
                        x.parent = temp;
                        break ;
                    }
                    else
                    {
                        temp = temp.left;
                    }
                }
                else
                {
                    if(temp.right == nil)
                    {
                        temp.right = x;
                        x.parent = temp;
                        break ;
                    }
                    else
                    {
                        temp = temp.right;
                    }
                }
            }
            // /*
             
            // no red red conflict
            node currNode;
            currNode = x;

            //debugging
            /*
             *System.out.println(currNode.data+" "+currNode.parent.color);
             * 
             * System.exit(0);
             */
            
            // while parent color is not black or it itself is head node do the following operation :
            while(currNode!=head&&currNode.parent.color!=1)
            {
                node parentNode=null;
                node uncleNode=null;
                node grandParentNode=null;
                parentNode = currNode.parent;
                grandParentNode = findGrandParentNode(currNode);
                uncleNode = findUncleNode(currNode);

                if(grandParentNode!=null)
                {
                    // case 2 : when the uncle color is red 
                    // just flip the grandparent , parent , uncle color
                    if(uncleNode!=null&&uncleNode.color==0)
                    {
                        grandParentNode.color = 0;
                        uncleNode.color = 1;
                        parentNode.color = 1;
                        currNode = grandParentNode;
                    }
                    else
                    {
                        // four sub cases 
                        // left left subcase 
                            if(grandParentNode.left!=nil&&grandParentNode.left.left==currNode)
                            {
                                // System.out.println("here\n");
                                // do right rotation
                                ///                ggp // used for maintaining contact with tree
                                //                  g
                                //          p                u
                                //      c      T1        T2     T3
                                //   T4    T5

                                ///                ggp // used for maintaining contact with tree
                                //                  p
                                //       c                   g
                                //   T4    T5            T1        u
                                //                              T2   T3
                                node t1 = parentNode.right;
                                // node t2 = uncleNode.left;
                                // node t3 = uncleNode.right;
                                // node t4 = currNode.left;
                                // node t5 = currNode.right;

                                if(grandParentNode.parent!=null)
                                {
                                    node ggparent = grandParentNode.parent;
                                    if(ggparent.left == grandParentNode)
                                    {
                                        ggparent.left = parentNode;
                                    }
                                    else
                                    {
                                        ggparent.right = parentNode;
                                    }
                                    // updating parent node 
                                    parentNode.parent = ggparent;
                                    parentNode.right = grandParentNode;
                                    grandParentNode.parent = parentNode;
                                    // updating t1 node 
                                    if(t1!=nil)
                                    {
                                        t1.parent = grandParentNode;
                                    }
                                    grandParentNode.left = t1;
                                    // rest all unused 
                                    // changing color
                                    parentNode.color = 1;
                                    grandParentNode.color = 0;
                                    currNode.color = 0;
                                }
                                else
                                {
                                    head = parentNode;
                                    parentNode.parent = null;
                                    
                                    parentNode.right = grandParentNode;
                                    grandParentNode.parent = parentNode;
                                    // updating t1 node 
                                    if(t1!=nil)
                                    {
                                        t1.parent = grandParentNode;
                                    }
                                    grandParentNode.left = t1;
                                    // rest all unused 
                                    // changing color
                                    parentNode.color = 1;
                                    grandParentNode.color = 0;
                                    currNode.color = 0;
                                }
                                break;
                            }
                        // left right subcase
                            else if(grandParentNode.left!=nil&&grandParentNode.left.right==currNode)
                            {
                                // do left rotation
                                ///                ggp // used for maintaining contact with tree
                                //                  g
                                //          p                u
                                //      T1      c        T2     T3
                                //           T4   T5


                                ///                ggp // used for maintaining contact with tree
                                //                  g
                                //          c                u
                                //      p      T5        T2     T3
                                //   T1   T4
                                // node t1 = parentNode.left;
                                // node t2 = uncleNode.left;
                                // node t3 = uncleNode.right;
                                node t4 = currNode.left;
                                // node t5 = currNode.right;
                                
                                currNode.parent = grandParentNode;
                                grandParentNode.left = currNode;

                                currNode.left = parentNode;
                                parentNode.parent = currNode;

                                parentNode.right = t4;
                                if(t4!=nil)
                                {
                                    t4.parent = parentNode;
                                }
                                // color is same
                                currNode = parentNode;
                            }
                        // right left subcase 
                            else if(grandParentNode.left!=nil&&grandParentNode.right.left==currNode)
                            {
                                // do right rotation
                                ///                ggp // used for maintaining contact with tree
                                //                  g
                                //          u               p
                                //       T1    T2        c      T3
                                //                    T4    T5


                                ///                ggp // used for maintaining contact with tree
                                //                  g
                                //          u               c
                                //       T1    T2       T4      p
                                //                           T5    T3

                                // node t1 = uncleNode.left;
                                // node t2 = uncleNode.right;
                                // node t3 = parentNode.right;
                                // node t4 = currNode.left;
                                node t5 = currNode.right;
                                grandParentNode.left = currNode;
                                currNode.parent = grandParentNode;

                                currNode.right = parentNode;
                                parentNode.parent = currNode;

                                parentNode.left = t5;
                                if(t5!=nil)
                                {
                                    t5.parent = parentNode;
                                }
                                // color is same
                                currNode = parentNode;
                            }
                        // right right subcase
                            else if(grandParentNode.left!=nil&&grandParentNode.right.right==currNode)
                            {
                                break;
                                // do left rotation
                                ///                ggp // used for maintaining contact with tree
                                //                  g
                                //          u               p
                                //       T1    T2       T3       c
                                //                            T4   T5


                                 ///                ggp // used for maintaining contact with tree
                                //                  p
                                //          g               c
                                //       u     T3        T4    T5
                                //    T1    T2
                                node t3 = parentNode.left;
                                if(grandParentNode.parent!=null)
                                {
                                    node ggpNode = grandParentNode.parent;
                                    if(ggpNode.left==grandParentNode)
                                    {
                                        ggpNode.left = parentNode;
                                    }
                                    else
                                    {
                                        ggpNode.right = parentNode;
                                    }
                                    parentNode.parent = ggpNode;

                                    parentNode.left = grandParentNode;
                                    grandParentNode.parent = parentNode;

                                    grandParentNode.right = t3;
                                    if(t3!=nil)
                                    {
                                        t3.parent = grandParentNode;
                                    }
                                    // updating color 
                                    parentNode.color = 1;
                                    grandParentNode.color = 0;
                                    currNode.color = 0;
                                }
                                else
                                {
                                    head = parentNode;
                                    parentNode.parent = null;

                                    parentNode.left = grandParentNode;
                                    grandParentNode.parent = parentNode;

                                    grandParentNode.right = t3;
                                    if(t3!=nil)
                                    {
                                        t3.parent = grandParentNode;
                                    }
                                    // updating color 
                                    parentNode.color = 1;
                                    grandParentNode.color = 0;
                                    currNode.color = 0;
                                }
                                break;
                            }
                    }
                
                }
                else if(grandParentNode==null)
                {
                    // two nnodes and both are red 
                    // its not possible 
                }
                // uncleNode is not used inside so no problem so no need of considering a special case  
            }
            if(currNode==head)
            {
                currNode.color = 1;
            }
            // */

        }
    }

    void print()
    {
        try {
            File f = new File("RBT.dot");
            FileWriter f1 = new FileWriter(f);
            f1.write("digraph G{\n");
            f1.write("node  [style = filled, fillcolor = black, shape = square , fontcolor = white]\n");
            Queue z = new Queue();
            if(head==null)
            {
                f1.close();
                return;
            }
            z.Add(head);
            int j_nil = 0;
            while(!z.isEmpty())
            {
                int o = z.size;
                for(int i = 0 ; i < o;i++)
                {
                    node temp = z.Front();
                    z.Pop();
                    if(temp==nil)
                    {
                        j_nil++;
                        continue;
                    }
                    if(temp.color==1)
                    {
                        f1.write(temp.data+" [style = filled, fillcolor = black, shape = circle , fontcolor = white]\n");
                    }
                    else
                    {
                        f1.write(temp.data+" [style = filled, fillcolor = red, shape = circle , fontcolor = white]\n");
                    }
                    if(temp.left!=null)
                    {
                        z.Add(temp.left);
                    }
                    if(temp.right!=null)
                    {
                        z.Add(temp.right);
                    }
                }
            }
            for(int k = 1; k <=j_nil;k++)
            {
                f1.write("N"+k+" [fontcolor = blue , label =\"\",xlabel = Nil]\n");
            }
            if(head!=null)
                z.Add(head);
            j_nil = 0;
            while(!z.isEmpty())
            {
                int o = z.size;
                for(int i = 0 ; i < o;i++)
                {
                    node temp = z.Front();
                    z.Pop();
                    if(temp==nil)
                    {
                        continue;
                    }
                    if(temp.left!=nil)
                    f1.write(temp.data+" -> "+temp.left.data+"\n");
                    if(temp.right!=nil)
                    f1.write(temp.data+" -> "+temp.right.data+"\n");
                    if(temp.left==nil)
                    {
                        j_nil++;
                        f1.write(temp.data+" -> N"+j_nil+"\n");
                    }
                    if(temp.right==nil)
                    {
                        j_nil++;
                        f1.write(temp.data+" -> N"+j_nil+"\n");
                    }
                    if(temp.left!=null)
                    {
                        z.Add(temp.left);
                    }
                    if(temp.right!=null)
                    {
                        z.Add(temp.right);
                    }
                }
            }
            f1.write("}");
            f1.close();
        } catch (Exception e) {
            System.out.println("ERROR : "+e);
        }
        Queue z = new Queue();
        if(head==null)
        {
            return;
        }
        z.Add(head);
        while(!z.isEmpty())
        {
            int o = z.size;
            for(int i = 0 ; i < o;i++)
            {
                node temp = z.Front();
                z.Pop();
                if(temp==nil)
                {
                    continue;
                }
                System.out.println(temp.data);
                if(temp.left!=null)
                {
                    z.Add(temp.left);
                }
                if(temp.right!=null)
                {
                    z.Add(temp.right);
                }
            }
        }
        return;
    }
    public static void main(String[] args) {
        RBT t = new RBT();
        for(int i = 9 ; i > 0;i--)
        {
            t.add(i);
        }
        t.add_normal(15);
        // t.add(12);
        t.print();
        return;
    }
}



            
