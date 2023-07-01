#include <iostream>
#include "RBNode.h"
#include "RBTree.h"
#define red 'r'
#define black 'b'
using namespace std;
int main()
{
    cout << "Hello world!" << endl;
    RBTree A;

    A.insertE(1);
    A.insertE(2);
    A.insertE(3);
    A.insertE(4);
    A.insertE(10);
    A.insertE(11);
    A.insertE(12);
    A.insertE(13);
    //cout<<A.getRoot()->getData()<<endl;
    A.insertE(14);
    A.insertE(15);
    A.insertE(5);
   A.insertE(6);
    //A.insertE(7);
  //  A.insertE(8);
   A.printRBT();
    cout<<endl;
    A.print();
       cout<<endl;
    A.printPreOrder();
    cout<<endl;
    A.printPostOrder();
    cout<<endl;
    A.printInOrder();
    return 0;
}

    /*
    A.insertE(1);
    A.insertE(2);
    A.insertE(12);
    A.insertE(10);
    */
   // cout<<A.searchE(10)->getColor()<<endl;
   // cout<<A.searchE(10)->getRightC()->getColor()<<endl;
   // cout<<A
    //cout<<A.searchE(12)->getColor()<<endl;
/*    cout<<A.searchE(12)->getRightC()->getColor()<<endl;
    cout<<A.searchE(12)->getLeftC()->getColor()<<endl;
  */

  //  cout<<A.searchE(1)->getColor()<<endl;
    //cout<<A.searchE(1)->getLeftC()->getColor()<<endl;
/*    cout<<A.getRoot()->getData()<<endl;
    cout<<A.getRoot()->getColor()<<endl;
    cout<<A.getRoot()->getLeftC()->getColor()<<endl;
    cout<<A.getRoot()->getRightC()->getColor()<<endl;
    cout<<A.getRoot()->getLeftC()->getData()<<endl;
    cout<<A.getRoot()->getLeftC()->getColor()<<endl;
    cout<<A.getRoot()->getLeftC()->getLeftC()->getColor()<<endl;
    cout<<A.getRoot()->getLeftC()->getRightC()->getColor()<<endl;
    cout<<A.getRoot()->getRightC()->getData()<<endl;
    cout<<A.getRoot()->getRightC()->getColor()<<endl;
    cout<<A.getRoot()->getRightC()->getLeftC()->getColor()<<endl;
    cout<<A.getRoot()->getRightC()->getRightC()->getColor()<<endl;
    cout<<A.getRoot()->getLeftC()->getLeftC()->getData()<<endl;
    cout<<A.getRoot()->getLeftC()->getLeftC()->getColor()<<endl;
    cout<<A.getRoot()->getLeftC()->getLeftC()->getLeftC()->getColor()<<endl;
    cout<<A.getRoot()->getLeftC()->getLeftC()->getRightC()->getColor()<<endl;
  */
   // cout<<A.searchE(1)->getRightC()->getColor()<<endl;
 /*  A.insertE(2);
    A.insertE(22);
   */
    /*RBNode* ptr = new RBNode(20);
    ptr->setData(100);
    ptr->setColor(black);
    RBNode* ptr2 = new RBNode(20);
    ptr->setLeftC(ptr2);
    ptr2->setParent(ptr);
    cout<<ptr->getData()<<" "<<ptr->getColor()<<" "<<endl;
    cout<<ptr->getLeftC()->getData()<<" "<<ptr->getLeftC()->getColor()<<" "<<endl;
    ptr->setData(10);
    ptr->setColor(red);
    cout<<ptr2->getParent()->getData()<<" "<<ptr2->getParent()->getColor()<<" ";
    */
