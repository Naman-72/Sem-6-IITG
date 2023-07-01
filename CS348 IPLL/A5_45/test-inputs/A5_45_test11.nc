int printInt(int num);
int printStr(char * c);
int readInt(int *eP);


int main()
{
    /*this is a 
    multi-line comment*/

    //this is a single-line comment

    //arithematic operatior testing
    int a=3;
    int b=5;
    int c=a+b;
    int d=a-b;
    int e=a%b;
    printInt(c);
    printStr("\n");
    printInt(d);
    printStr("\n");
    printInt(e);
    printStr("\n");

    //conditional operatior testing
    int m;
    if(a > b) m = a;
    else m = b;

    //pointer operation testing
    int *x=&a;

    return 0;
}