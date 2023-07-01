#include<bits/stdc++.h>
using namespace std;

class treenode{
  public:
    int value;
    treenode* left;
    treenode* right;  
    treenode()
    {
        left = nullptr;
        right = nullptr;
    }
    treenode(int val)
    {
        value = val;
        left = nullptr;
        right = nullptr;
    }
};

class bst
{
private:
    /* data */
public:
    treenode* root;
    bst()
    {
        root = nullptr;
    }
    bool isTreeEmpty()
    {
        return (root==nullptr);
    }
    void insert(treenode*x, int val)
    {
        if(!x)
        {
            x = new treenode(val);
            root = x;
            return;
        }
        else
        {
            if(x->value>val)
            {
                if(x->right)
                {
                    insert(x->right,val);
                }
                else
                {
                    x->right = new treenode(val);
                }
            }
            else
            {
                if(x->left)
                {
                    insert(x->left,val);
                }
                else
                {
                    x->left = new treenode(val);
                }
            }
        }
        return;
    }
    bool search(int x)
    {
        if(isTreeEmpty())
        {
            return false;
        }
        treenode* curr = root;
        while (curr!=nullptr)
        {
            if(curr->value==x)
            {
                return true;
            }
            else if(curr->value>x)
            {
                curr = curr->left;
            }
            else
            {
                curr = curr->right;
            }
        }
        return false;
    }

    // treenode* deletion treenode*r , int v
    // check if < 
    // delete from left subtree
    // if >
    // right 
    // if equal then
    // if 0 kids // if 1 kids
    // if 2 kids // replace with min value(r->right) and now delete min value node // succ replace
};


int main()
{
    return 0;
}