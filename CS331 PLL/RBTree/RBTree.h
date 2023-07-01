#include <iostream>
#ifndef RBTREE_H
#define RBTREE_H
#include "RBNode.h"
#define red 'r'
#define black 'b'
using namespace std;
class RBTree
{
public:
    RBTree();
    RBTree(int);
    RBNode*getRoot();
    RBNode*getLeaf();
    bool leftRotate(RBNode*,RBNode*);
    bool rightRotate(RBNode*,RBNode*);
    bool insertE(int);
    void print();
    void printRBT();
    void printPreOrder();
    void printInOrder();
    int succ(int);
    int pred(int);
    void deleteE(int);
    void printPostOrder();
    int maximum(RBNode*);
    int maximumRBT();
    int minimum(RBNode*);
    int minimumRBT();
    void printRBT(RBNode*);
    RBNode* searchE(int);
    virtual ~RBTree();
protected:

private:
    RBNode* root;
    RBNode* leaf;
    void printPreOrder(RBNode*);
    void printInOrder(RBNode*);
    void printPostOrder(RBNode*);
    RBNode* searchElement(int,RBNode*);
    void print(RBNode*);
};

#endif // RBTREE_H
