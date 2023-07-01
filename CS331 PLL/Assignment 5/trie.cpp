#include<bits/stdc++.h>
using namespace std;
typedef struct trie_data_structure
{
    //  hindi vowels 
    // अ आ इ ई उ ऊ ए ऐ ओ औ अं अः ऋ ॠ 
    // hindi consonants
    /* क ख ग घ ङ च छ ज झ ञ ट ठ ड ढ ण त थ द ध न प फ ब भ म य र ल व श ष स ह क्ष त्र ज्ञ     */
    // 11 vowels + 35 consonants
    map<char,trie_data_structure> A;
    bool is_end;
}  trie;
bool search(string s,trie X)
{
    for (int i = 0; i < s.size(); i++)
    {
        if(X.A.find(s[i])==X.A.end())
        {
            return false;
        }
        X = X.A[s[i]];
    }
    return X.is_end;
}
void insert(string s, trie X)
{
    for (int i = 0; i < s.size(); i++)
    {
        if(X.A.find(s[i])==X.A.end())
        {
            X.A[s[i]] = trie();
            X.A[s[i]].is_end= false;
        }
        X = X.A[s[i]];
    }
    X.is_end= true;
    return;
}
bool recursive_delete(string s, trie X,int i)
{
    if(s.length()==i)
    {
        X.is_end=false;
        return X.A.empty();
    }
    else
    {
        bool o = recursive_delete(s,X.A[s[i]],i+1);
        if(o)
            X.A.erase(s[i]);
        return (!X.is_end)&&o&&(X.A.empty());
    }
    return true;
}
bool delete_str(string s, trie X)
{
    if(search(s,X)==false)
        return false;
    recursive_delete(s,X,0);
    return true;
}
int main()
{
    trie A1;
    insert("abcd",A1);
    insert("defg",A1);
    insert("abc",A1);
    insert("asap",A1);
    cout<<search("asap",A1)<<endl;
    cout<<search("as",A1)<<endl;
    cout<<search("def",A1)<<endl;
    cout<<search("defgh",A1)<<endl;
    cout<<search("defg",A1)<<endl;
    cout<<search("",A1)<<endl;
    return 0;
}