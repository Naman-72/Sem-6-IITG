package JavaDs;

public class DSU {
    private Array<Integer>parent,rank;

    public DSU(int n)
    {
        parent = new Array<>();
        rank = new Array<>();
        for(int i = 0;i <= n;i++) 
        {
            rank.push_back(0);
            parent.push_back(i);
        }
    }

    public int findPar(int node)
    {
        if(node == parent.get(node)) return node;
        else 
        {
            parent.set(node, findPar(parent.get(node)));
            return parent.get(node);
        }
    }

    public void union(int u,int v)
    {
        u = findPar(u);
        v = findPar(v);

        if(rank.get(u) < rank.get(v)) parent.set(u,v);
        else if(rank.get(u) > rank.get(v)) parent.set(v,u);
        else
        {
            parent.set(v,u);
            rank.set(u,rank.get(u) + 1);
        }
    }
}
