void o()
{
    int i;
    for (i = 0; i < 10; i = i + 1)
        {

        } 
    return;
}
// multiple int main also followed  as symbol table not there
int main() {
int x;
int y;
int z;
readInt(&x);
readInt(&y);
z = x + y;
printInt(x);
printStr("+");
printInt(y);
printStr(" = ");
printInt(z);
return 0;
}
// Add two numbers from input
int main() {
int x;
int y;
int z;
readInt(&x);
readInt(&y);
z = x + y;
printInt(x);
printStr("+");
printInt(y);
printStr(" = ");
printInt(z);
return 0;
}
// Swap two numbers
void swap(int*, int*);
int main() {
int x;
int y;
readInt(&x);
readInt(&y);
printStr("Before swap:\n");
printStr("x = "); printInt(x);
printStr(" y = "); printInt(y);
swap(&x, &y);
printStr("\nAfter swap:\n");
printStr("x = "); printInt(x);
printStr(" y = "); printInt(y);
return 0;
}
void swap(int *p, int *q) {
int t;
t = *p;
*p = *q;
*q = t;
return;
}
// Find factorial by iteration
int main() {
int n;
int i = 0;
int r = 1;
readInt(&n);
for(i = 1; i <= n; i = i + 1)
r = r * i;
printInt(n);
printStr("! = ");
printInt(r);
return 0;
}
int arr[10]; // Sorted array to search
// A recursive binary search function. It returns location of x
// in given array arr[l..r] is present, otherwise -1
int binarySearch(int l, int r, int x) {
if (r >= l) {
int mid = l + (r - l) / 2;
// If the element is present at the middle itself
if (arr[mid] == x)
return mid;
// If element is smaller than mid, then it can only be present in left subarray
if (arr[mid] > x)
return binarySearch(l, mid - 1, x);
// Else the element can only be present in right subarray
return binarySearch(mid + 1, r, x);
}
// We reach here when element is not present in array
return -1;
}
int main() {
int n = 5; // Number of elements
arr[0] = 2;
arr[1] = 3;
arr[2] = 4;
arr[3] =10;
arr[4] = 40;
int x = 10; // Key to search
int result = binarySearch(0, n - 1, x);
if (result == -1)
printStr("Element is not present in array");
else {
printStr("Element is present at index ");
printInt(result);
}
return 0;
}
int printInt(int x) {
return printf("%d", x);
}
int readInt(int *n) {
return scanf("%d", n);
}
int printStr(char *s) {
return printf("%s", s);
}
int main()
{
    // TEST FOR COMMENTS
    /*
        MULTI LINE TEST
    */
   void* arpan;
   int line;
   int a = 1;
   arpan = &a;

   int* ptr = &a;
   line = *ptr;

    char arpan_2 = '\0';

    int apple[4];
    apple[0] = 1;
    apple[1] = 5;
    apple[2] = 3;
    apple[3] = 4;

    char* arpanlove = "Arpan love ";
    {
        // will it work?
    }
    a = (1)? 50 : 25; 
    
    o();    
   return 0;
}


