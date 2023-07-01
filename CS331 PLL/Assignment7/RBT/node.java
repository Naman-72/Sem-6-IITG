public class node{
    int data;
    node left;
    node right;
    node parent;
    int color;
    // red : 0 , black : 1
    node ()
    {
        left = null;
        right = null;
        parent = null;
        color = 0; // initial a new node is red
    }
    node (int val)
    {
        data = val;
        left = null;
        right = null;
        parent = null;
        color = 0; // initial a new node is red
    }
}