#include <stdio.h>
#include <math.h>
#include <conio.h>
#include <stdlib.h>

#define N 1000
#define K 10
#define MAX_ITER 50



int main()
{
    FILE *fp;
    fp  = fopen ("abc.txt", "w");
    for (int i = 0; i < 10000; i++)
    {
        fprintf(fp,"%d ,",rand()%201);
    }
    fclose (fp);
}