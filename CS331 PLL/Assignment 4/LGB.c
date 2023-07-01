#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<math.h>
#include<float.h>

#define N 300
#define e 0.01
#define infinity DBL_MAX

double calculate_distance(double x1,double y1, double x2, double y2)
{
    double sum = 0;
    sum = (x1-x2)*(x1-x2)+(y1-y2)*(y1-y2);
    return sqrt(sum);
}

typedef struct{
    int n;
    double* data;
} data_val;
void kmeans(double* xptr, double* yptr , double*X, double* Y, int size)
{
    {
        int region[N];
        
        // allocate groups 
        for (int i = 0; i < N; i++)
        {
            double minDistance = DBL_MAX;
            for (int j = 0; j  < size; j++)
            {
                if(distance(X[i],Y[i],xptr[j],yptr[j])<minDistance)
                {
                    minDistance = distance(X[i],Y[i],xptr[j],yptr[j]);
                    region[i]=j;
                }
            }
        }

        // new centroid find 
        int counter[size];
        double sum_x[size];
        double sum_y[size];
        // initailizing the no of points per region and initializing the sum for finding centroid new to 0
        for (int i = 0; i < size; i++)
        {
            counter[i] = 0;
            sum_x[i] = 0;
            sum_y[i] = 0;
        }
        // counting 
        for (int i = 0; i < N; i++)
        {
            counter[region[i]]++;
            sum_x[region[i]]+= X[i];
            sum_y[region[i]]+= Y[i];
        }
        // finding new centroid       
        for (int i = 0; i < size; i++)
        {
            xptr[i] = sum_x[i]/counter[i];
            yptr[i] = sum_y[i]/counter[i];
        }
        
    }

}

int main()
{
    FILE* dataset;
    dataset = fopen("input1.txt","r");
    double X[N];
    double Y[N];
    
    for (int i = 0; i < N; i++)
    {
        fscanf(dataset,"%lf %lf",&X[i],&Y[i]);
    }
    
    // finding centroid 
    double* xptr;
    xptr = (double*)malloc(sizeof(double));
    double* yptr;
    yptr = (double*)malloc(sizeof(double));

    double xsum = 0;
    double ysum = 0;

    for (int i = 0; i < N; i++)
    {
        xsum+=X[i];
        ysum+=Y[i];
    }
    int size = 1;
    // centroid calculator
    xptr[0] = xsum/N;
    yptr[0] = ysum/N;
    printf("Initial Centroid : %lf %lf",xptr[0],yptr[0]);
    // centroid calculated 

    // splitting centroid along y
    {
        double* new_xptr ;
        double* new_yptr ;
        new_xptr = (double*)malloc(2*size*sizeof(double));
        new_yptr = (double*)malloc(2*size*sizeof(double));
        for (int i = 0; i < size; i++)
        {
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