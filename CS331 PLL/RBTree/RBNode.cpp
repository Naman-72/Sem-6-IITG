#include<iostream>
#include "RBNode.h"
#define red 'r'
#define black 'b'
using namespace std;

RBNode::RBNode()
{
    parent = nullptr;
    leftC = nullptr;
    rightC = nullptr;
    data = 0;
    color = red;
}
RBNode::RBNode(int a)
{
    data = a;
    color = red;
    parent = nullptr;
    leftC = nullptr;
    rightC = nullptr;
}
int RBNode::getData()
{
    return data;
}
char RBNode::getColor()
{
    return color;
}
RBNode* RBNode::getLeftC()
{
    return leftC;
}
RBNode* RBNode::getRightC()
{
    return rightC;
}
RBNode* RBNode::getParent()
{
    return parent;
}
bool RBNode::setData(int a)
{
    data = a;
    return true;
}
bool RBNode::setColor(char a)
{
    color = a;
    return true;
}
bool RBNode::setLeftC(RBNode*ptr)
{
    leftC = ptr;
    return true;
}
bool RBNode::setRightC(RBNode*ptr)
{
    rightC = ptr;
    return true;
}
bool RBNode::setParent(RBNode*ptr)
{
    parent= ptr;
    return true;
}
RBNode::~RBNode()
{
    //dtor
}
