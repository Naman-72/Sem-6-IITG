class Node{
    TreeNode t;
    Node next;
    Node()
    {
        next = null;
    }
    Node(TreeNode a)
    {
        t = a;
    }
}
class Queue{
    Node start;
    int size;
    Queue()
    {
        size = 0;
        start = null;
    }
    void push(TreeNode t)
    {
        size++;
        Node x = new Node(t);
        if(start==null)
        {
            start = x;
            return;
        }
        else
        {
            Node temp = start;
            while(temp.next!=null)
            {
                temp = temp.next;
            }
            temp.next = x;
            return;
        }
    }
    boolean isEmpty()
    {
        if(size!=0)
        {
            return false;
        }
        return true;
    }
    void pop()
    {
        if(start==null)
            return;
        size--;
        start = start.next;
        return;
    }
    TreeNode top()
    {
        if(size==0)
        {
            return null;
        }
        else
        {
            return start.t;
        }
    }
}
public class BinaryTree {
    TreeNode root;
    BinaryTree(){
        root = null;
    }
    void add(int val)
    {
        TreeNode a = new TreeNode(val);
        if(root==null)
        {
            root = a;
            return;
        }
        else
        {
            TreeNode temp = root;
            while(true)
            {
                if(val>temp.data)
                {
                    if(temp.right!=null)
                    {
                        temp = temp.right;
                    }
                    else
                    {
                        temp.right = a;
                        break;
                    }
                }
                else
                {
                    if(temp.left!=null)
                    {
                        temp = temp.left;
                    }
                    else
                    {
                        temp.left = a;
                        break;
                    }
                }
            }
            return;
        }
    }
    boolean find(int val)
    {
        if(root==null)
        {
            return false;
        }
        else
        {
            TreeNode temp = root;
            while(true)
            {
                if(val==temp.data)
                {
                    return true;
                }
                else if(val>temp.data)
                {
                    if(temp.right!=null)
                    {
                        temp = temp.right;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    if(temp.left!=null)
                    {
                        temp = temp.left;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
        }
    }
    void printPreOrder()
    {
        recursivePrintPreOrder(root);
        return;
    }
    void recursivePrintPreOrder(TreeNode root)
    {
        if(root==null)
        {
            return;
        }
        System.out.print(root.data+" ");
        recursivePrintPreOrder(root.left);
        recursivePrintPreOrder(root.right);
        return;
    }
    
    void printInOrder()
    {
        recursivePrintInOrder(root);
        return;
    }
    void recursivePrintInOrder(TreeNode root)
    {
        if(root==null)
        {
            return;
        }
        recursivePrintInOrder(root.left);
        System.out.print(root.data+" ");
        recursivePrintInOrder(root.right);
        return;
    }

    void printPostOrder()
    {
        recursivePrintPostOrder(root);
        return;
    }
    void recursivePrintPostOrder(TreeNode root)
    {
        if(root==null)
        {
            return;
        }
        recursivePrintPostOrder(root.left);
        recursivePrintPostOrder(root.right);
        System.out.print(root.data+" ");
        return;
    }
    void levelOrder()
    {
        TreeNode temp = root;
        Queue Q = new Queue();
        Q.push(temp);
        while(!Q.isEmpty())
        {
            int s = Q.size;
            for(int i = 0; i < s; i++)
            {
                TreeNode x = Q.top();
                System.out.print(x.data+" ");
                Q.pop();
                if(x.left!=null)
                {
                    Q.push(x.left);
                }
                if(x.right!=null)
                {
                    Q.push(x.right);
                }
            }
            System.out.println();
        }
        return;
    }
}
