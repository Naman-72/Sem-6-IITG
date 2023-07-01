#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<math.h>
#include<float.h>

#define N 1000
#define M 12
#define e 0.01
#define Infinity DBL_MAX

typedef struct 
{
    int n;
    double* coordinate;

} point;


int main()
{
    FILE* dataset;
    dataset = fopen("input1.txt","r");
    
    
    // dataset input
    point A[N];
    for (int i = 0; i < N; i++)
    {
        A[i].n = M;
        A[i].coordinate = (double*)malloc(M*sizeof(double));
        for (int j = 0; j < M; j++)
        {
          fscanf(dataset,"%lf ",&A[i].coordinate[j]);   
        }
    }
    

    // finding centroid 
    point centroids[1];
    // cent => centroid coordinate
    double cent[M];
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
            cent[j]+=A[i].coordinate[j];
        }
    }
    int size = 1;
    // centroid calculator
    for (int j = 0; j < M; j++)
    {
        cent[j] = cent[j]/M;
    }
    // centroid calculated 
    printf("Initial Centroid : (");
    for (int i = 0; i < M; i++)
    {
        printf("%lf, ",cent[i]);
    }
    printf(")\n");
    

    
    // splitting centroid along y
    {
        point* newptr;
        newptr = (point*)malloc(2*size*sizeof(point));
        for (int i = 0; i < size; i++)
        {
            for (int j = 0; i < ; i++)
            {
                /* code */
            }
            
            new_xptr[2*i] = xptr[i];
            new_yptr[2*i] = yptr[i]*(1+e);
            new_xptr[2*i+1] = xptr[i];
            new_yptr[2*i+1] = yptr[i]*(1-e);
        }
        free(xptr);
        free(yptr);
        xptr = new_xptr;
        yptr = new_yptr;
        size=2*size;
        new_xptr = NULL;
        new_yptr = NULL;
        kmeans(xptr,yptr,X,Y,size);
    }

    free(xptr);
    free(yptr);
    return 0;
}