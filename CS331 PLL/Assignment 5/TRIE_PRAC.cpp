#include<bits/stdc++.h>
using namespace std;
#define CHAR_SIZE 128
class Trie
{
private:
    /* data */
public:
    bool isLeaf;
    Trie* character[CHAR_SIZE];
 
    // Constructor
    Trie()
    {
        this->isLeaf = false;
 
        for (int i = 0; i < CHAR_SIZE; i++) {
            this->character[i] = nullptr;
        }
    }
    void insert(string key)
    {
    // start from the root node
    Trie* curr = this;
    for (int i = 0; i < key.length(); i++)
    {
        // create a new node if the path doesn't exist
        if (curr->character[key[i]] == nullptr) {
            curr->character[key[i]] = new Trie();
        }
 
        // go to the next node
        curr = curr->character[key[i]];
    }
 
    // mark the current node as a leaf
    curr->isLeaf = true;
    }
bool search(string key)
{
    // return false if Trie is empty
    if (this == nullptr) {
        return false;
    }
 
    Trie* curr = this;
    for (int i = 0; i < key.length(); i++)
    {
        // go to the next node
        curr = curr->character[key[i]];
 
        // if the string is invalid (reached end of a path in the Trie)
        if (curr == nullptr) {
            return false;
        }
    }
 
    // return true if the current node is a leaf and the
    // end of the string is reached
    return curr->isLeaf;
}
 
    // bool havechildren(Trie* X)
    // {
    //     for (int i = 0; i < char_count; i++)
    //     {
    //         if(X->children[i]!=nullptr)    
    //         {
    //             return true;
    //         }
    //     }
    //     return false;
    // }
    // bool recursive_delete(Trie*X,string s,int i)
    // {
    //     if(i==s.size())
    //     {
    //         X->isleaf = false;
    //         return !(havechildren(X));
    //     }
    //     else
    //     {
    //         bool o = recursive_delete(X,s,i+1);
    //         if(o)
    //         {
    //             free(X->children[s[i]]);
    //             X->children[s[i]]=nullptr;
    //         }
    //         return o&&(!X->isleaf)&&(!havechildren(X));
    //     }
    //     return true;
    // }
    // bool delete_string(Trie*X,string s)
    // {
    //     if(!X->search(s))
    //         return false;
    //     recursive_delete(X,s,0);
    //     return (!X->search(s));
    // }
};

int main()
{
    Trie* head = new Trie();
 
    head->insert("hello");
    cout << head->search("hello") << " ";      // print 1
 
    // head->insert("helloworld");
    // cout << head->search("helloworld") << " "; // print 1
 
    // cout << head->search("helll") << " ";      // print 0 (Not found)
 
    // head->insert("hell");
    // cout << head->search("hell") << " ";       // print 1
 
    // head->insert("h");
    // cout << head->search("h");                 // print 1
 
    // cout << endl;
 
    // head->delete_string(head, "hello");
    // cout << head->search("hello") << " ";      // print 0
 
    // cout << head->search("helloworld") << " "; // print 1
    // cout << head->search("hell");              // print 1
 
    // cout << endl;
 
    // head->delete_string(head, "h");
    // cout << head->search("h") << " ";          // print 0
    // cout << head->search("hell") << " ";       // print 1
    // cout << head->search("helloworld");        // print 1
 
    // cout << endl;
 
    // head->delete_string(head, "helloworld");
    // cout << head->search("helloworld") << " "; // print 0
    // cout << head->search("hell") << " ";       // print 1
 
    // head->delete_string(head, "hell");
    // cout << head->search("hell");              // print 0
 
    // cout << endl;
 
    // if (head == nullptr) {
    //     cout << "Trie empty!!\n";              // Trie is empty now
    // }
 
    // cout << head->search("hell");              // print 0
 
    return 0;
}

