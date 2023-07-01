#include "RBTree.h"
#include "RBNode.h"
#define red 'r'
#define black 'b'
RBTree::RBTree()
{
    root = nullptr;
    leaf = new RBNode;
    leaf->setData(0);
    leaf->setLeftC(nullptr);
    leaf->setRightC(nullptr);
    leaf->setParent(nullptr);
    leaf->setColor(black);
}
void RBTree::print()
{
    if(root==nullptr)
    {
        return;
    }
    print(root);
    return ;
}
void RBTree::print(RBNode*ptr)
{
   RBNode* start = ptr;
   if(start==leaf)
   {
       return;
   }
   print(start->getLeftC());
   cout<<start->getData()<<" ";
   print(start->getRightC());
   return;
}
void RBTree::printPreOrder()
{
    if(root==nullptr)
    {
        return;
    }
    printPreOrder(root);
    return;
}
void RBTree::printPostOrder()
{
    if(root==nullptr)
    {
        return;
    }
    printPostOrder(root);
    return;
}
void RBTree::printInOrder()
{
    if(root==nullptr)
    {
        return;
    }
    printInOrder(root);
    return;
}
void RBTree::printPreOrder(RBNode*ptr)
{
    RBNode* start = ptr;
    if(start==leaf)
    {
        return;
    }
    cout<<start->getData()<<" ";
    printPreOrder(start->getLeftC());
    printPreOrder(start->getRightC());
    return ;
}
void RBTree::deleteE(int a)
{
    RBNode* ptr = searchE(a);
    if(ptr==nullptr)
    {
        return ;
    }
    if(((ptr->getLeftC()==leaf)||(ptr->getRightC()==leaf))&&(ptr->getColor()==red))
    {
        RBNode* ptr2 = ptr->getParent();
        if(ptr2->getData()>ptr->getData())
        {
           ptr2->setLeftC(leaf);
        }
        else
        {
           ptr2->setRightC(leaf);
        }
        ptr->setParent(nullptr);
        return ;
    }
return;
}
void RBTree::printPostOrder(RBNode*ptr)
{
    RBNode* start = ptr;
    if(start==leaf)
    {
        return;
    }
    printPostOrder(start->getLeftC());
    printPostOrder(start->getRightC());
    cout<<start->getData()<<" ";
    return ;
}
void RBTree::printInOrder(RBNode*ptr)
{
    RBNode* start = ptr;
    if(start==leaf)
    {
        return;
    }
    printInOrder(start->getLeftC());
    cout<<start->getData()<<" ";
    printInOrder(start->getRightC());
    return ;
}
int RBTree::maximum(RBNode*a)
{
    if(a==nullptr)
    {
        return -1;
    }
    RBNode* start = a;
    while(start!=leaf)
    {
        if(start->getRightC()==leaf)
        {
            return start->getData();
        }
        else
        {
            start = start->getRightC();
        }
    }
    return -1;
}
int RBTree::maximumRBT()
{
    return maximum(root);
}
int RBTree::minimum(RBNode*a)
{
     if(a==nullptr)
    {
        return -1;
    }
    RBNode* start = a;
    while(start!=leaf)
    {
        if(start->getLeftC()==leaf)
        {
            return start->getData();
        }
        else
        {
            start = start->getLeftC();
        }
    }
    return -1;
}
int RBTree::minimumRBT()
{
    return minimum(root);
}
int RBTree::succ(int a)
{
    int answer = -1;
    if(searchE(a)==nullptr)
    {
        return -1;
    }
    if(a==maximumRBT())
    {
        return -1;
    }
    RBNode* ptr = searchE(a);
    if(ptr->getRightC()!=leaf)
    {
        return minimum(ptr->getRightC());
    }
    else
    {
       RBNode* ptr2 = ptr->getParent();
       while(ptr2!=nullptr)
       {
           if(ptr2->getData()>ptr->getData())
           {
               return ptr2->getData();
           }
           else
           {
               ptr2 = ptr2->getParent();
           }
       }
    }
   return answer;
}
int RBTree::pred(int a)
{
   int answer = -1;
    if(searchE(a)==nullptr)
    {
        return -1;
    }
    if(a==minimumRBT())
    {
        return -1;
    }
    RBNode* ptr = searchE(a);
    if(ptr->getLeftC()!=leaf)
    {
        return maximum(ptr->getLeftC());
    }
    else
    {
       RBNode* ptr2 = ptr->getParent();
       while(ptr2!=nullptr)
       {
           if(ptr2->getData()<ptr->getData())
           {
               return ptr2->getData();
           }
           else
           {
               ptr2 = ptr2->getParent();
           }
       }
    }
   return answer;
}
bool RBTree::insertE(int a)
{
    if(searchE(a)!=nullptr)
    {
        return false;
    }
    RBNode*C=new RBNode(a);
    C->setLeftC(leaf);
    C->setRightC(leaf);
    C->setData(a);
    C->setParent(nullptr);
    if(root==nullptr)
    {
        root=C;
        C->setColor(black);
        return true;
    }
    RBNode* start = root;
    while(start!=nullptr)
    {
        if(start->getData()>a)
        {
            if(start->getLeftC()==leaf)
            {
                start->setLeftC(C);
                C->setParent(start);
                break;
            }
            else
            {
                start = start->getLeftC();
            }
        }
        else
        {
            if(start->getRightC()==leaf)
            {
                start->setRightC(C);
                C->setParent(start);
                break;
            }
            else
            {
                start=start->getRightC();
            }
        }
    }
    C=searchE(a);
    RBNode* P = C->getParent();
    RBNode* G = P->getParent();
    if(P->getColor()==black)
    {
        return true;
    }
    while(P->getColor()!=black)
    {
        //if P == Red then always GrandParent Will Exists ->Reason Root Always Black
        if(P->getColor()==black)
        {
            return true;
        }
        RBNode* U ;
        if(G!=nullptr)
        {
            if(G->getLeftC()==P)
            {
                U = G->getRightC();
            }
            else
            {
                U = G->getLeftC();
            }
        }
        if((P==G->getLeftC())&&(U->getColor()==red))
        {
          P->setColor(black);
          U->setColor(black);
          if(G==root)
          {
              root->setColor(black);
              return true;
          }
          else
          {
              G->setColor(red);
          }
          C=G;
          P=C->getParent();
          G=P->getParent();
          root->setColor(black);
          continue;
        }

        if((C==P->getLeftC())&&(P==G->getLeftC())&&(U->getColor()==black))
        {
            P->setColor(black);
            G->setColor(red);
            rightRotate(G,P);
            root->setColor(black);
            return true;
        }
        if((C==P->getRightC())&&(P==G->getLeftC())&&(U->getColor()==black))
        {
            leftRotate(P,C);
           root->setColor(black);
           RBNode* t = C;
           C = P;
           P = t;            continue;
        }
       // if((C==P->getRightC())&&(P==G->getLeftC()))
       // {
       // }
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        if((P==G->getRightC())&&(U->getColor()==red))
        {
          P->setColor(black);
          U->setColor(black);
          if(G==root)
          {
              root->setColor(black);
              return true;
          }
          else
          {
              G->setColor(red);
          }
          C=G;
          P=C->getParent();
          G=P->getParent();
          root->setColor(black);
          continue;
        }
        if((C==P->getRightC())&&(P==G->getRightC())&&(U->getColor()==black))
        {
           G->setColor(red);
           P->setColor(black);
           leftRotate(G,P);
           root->setColor(black);
           return true;
        }
        if((C==P->getLeftC())&&(P==G->getRightC())&&(U->getColor()==black))
        {
           rightRotate(P,C);
           root->setColor(black);
           RBNode* t = C;
           C = P;
           P = t;
            continue;
        }
    }
    return true;
}
bool RBTree::rightRotate(RBNode*Parent,RBNode*Child)
{
    if(Parent==nullptr)
    {
        return false;
    }
    if(Child==nullptr)
    {
        return false;
    }
    RBNode*ptr1;
    RBNode*ptr2;
    if(Parent==root)
    {
        root=Child;
        Child->setParent(nullptr);
        ptr1 = Child->getRightC();
        Parent->setLeftC(ptr1);
        ptr1->setParent(Parent);
        Child->setRightC(Parent);
        Parent->setParent(Child);
        return true;
    }
    else
    {
        ptr2=Parent->getParent();
        Child->setParent(ptr2);
        ptr1=Child->getRightC();
        Parent->setLeftC(ptr1);
        ptr1->setParent(Parent);
        Child->setRightC(Parent);
        Parent->setParent(Child);
        if(ptr2->getData()>=Child->getData())
        {
            ptr2->setLeftC(Child);
        }
        else
        {
            ptr2->setRightC(Child);
        }
        return true;
    }
}
bool RBTree::leftRotate(RBNode*Parent,RBNode*Child)
{
    if(Parent==nullptr)
    {
        return false;
    }
    if(Child==nullptr)
    {
        return false;
    }
    RBNode* ptr1;
    RBNode* ptr2;
    if(Parent==root)
    {  //cout<<"ok"<<endl;
   // printRBT();
   // cout<<Child->getData()<<" "<<Parent->getData()<<" "<<endl;
        Parent->setParent(Child);
        ptr1=Child->getLeftC();
        Child->setLeftC(Parent);
        Parent->setRightC(ptr1);
        ptr1->setParent(Parent);
        Child->setParent(nullptr);
        root=Child;
        return true;
    }
    else
    {
        ptr2=Parent->getParent();
       // cout<<ptr2->getData();
        Parent->setParent(Child);
        ptr1=Child->getLeftC();
        Child->setLeftC(Parent);
        Parent->setRightC(ptr1);
        ptr1->setParent(Parent);
        Child->setParent(ptr2);
        if(ptr2->getData()>=Child->getData())
        {
            ptr2->setLeftC(Child);
        }
        else
        {
            ptr2->setRightC(Child);
        }
       // cout<<endl<<"left rotate"<<endl;
        return true;
    }
}
RBTree::RBTree(int a)
{
    root = new RBNode(a);
    root->setLeftC(leaf);
    root->setRightC(leaf);
}
RBNode* RBTree::getRoot()
{
    return root;
}
RBNode* RBTree::getLeaf()
{
    return leaf;
}
RBNode* RBTree::searchE(int a)
{
    RBNode* start = root;
    while(start!=nullptr)
    {
        if(start->getData()==a)
        {
            return start;
        }
        if(start->getData()>a)
        {
            if(start->getLeftC()!=leaf)
            {
                start= start->getLeftC();
                continue;
            }
            else
            {
                return nullptr;
            }
        }
        else
        {
            if(start->getRightC()!=leaf)
            {
                start = start->getRightC();
                continue;
            }
            else
            {
                return nullptr;
            }
        }
    }
    return nullptr;
}
void RBTree::printRBT()
{
    if(root==nullptr)
    {
        cout<<"fail";
        return ;
    }
    printRBT(root);
}
void RBTree::printRBT(RBNode* ptr)
{
    if(ptr==leaf)
    {
        return;
    }
    printRBT(ptr->getLeftC());
    cout<<ptr->getData()<<" "<<ptr->getColor()<<" "<<ptr->getLeftC()->getData()<<ptr->getLeftC()->getColor()<<" "<<ptr->getRightC()->getData()<<ptr->getRightC()->getColor()<<"  ";
    if(ptr->getParent()!=nullptr)
    {
        cout<<ptr->getParent()->getData()<<ptr->getParent()->getColor()<<endl;
    }
    else
    {
        cout<<endl;
    }
    printRBT(ptr->getRightC());
    return;
}
RBTree::~RBTree()
{
    delete leaf;
    //dtor
}
