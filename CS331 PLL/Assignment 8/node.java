public class node{
    boolean isEnd;
    int val;
    int index;
    node children[];
    String label[];
    node()
    {
        isEnd = false;
        children = new node[128];
        label = new String[128]; 
        for(int i = 0 ;i<128;i++)
        {
            children[i] = null;
            label[i] = "";
        }
    }
    node(int in)
    {
        index =  in;
        isEnd = false;
        children = new node[128];
        label = new String[128]; 
        for(int i = 0 ;i<128;i++)
        {
            children[i] = null;
            label[i] = "";
        }
    }
}