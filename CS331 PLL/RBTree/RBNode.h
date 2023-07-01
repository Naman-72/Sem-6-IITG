#ifndef RBNODE_H
#define RBNODE_H

class RBNode
{
public:
    RBNode();
    RBNode(int);
    int getData();
    char getColor();
    RBNode* getLeftC();
    RBNode* getRightC();
    RBNode* getParent();
    bool setData(int);
    bool setColor(char);
    bool setLeftC(RBNode*);
    bool setParent(RBNode*);
    bool setRightC(RBNode*);
    virtual ~RBNode();

protected:

private:
    int data;
    char color;
    RBNode* leftC;
    RBNode* rightC;
    RBNode* parent;
};

#endif // RBNODE_H
