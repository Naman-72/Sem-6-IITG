#include <stdio.h>
#include <math.h>
#include <conio.h>
#include <stdlib.h>

double distance(double x1,double x2,double y1, double y2)
{
    double sum = 0.0;
    sum = (x1-x2)*(x1-x2)+(y1-y2)*(y1-y2);
    return sqrt(sum);
}

int main()
{
    double X[10000];
    double Y[10000];
    int N = 10000;
    for (int i = 0; i < 10000; i++)
    {
        X[i] = rand()%201;
        Y[i] = rand()%201;
    }
    int k = 5;
    int i1 = 0;
    int count = 0;
    int index[k];
    for (int i = 0; i < k; i++)
    {
        index[i1]=-1;   
    }
    // choosing k initial points with ensuring no two points are repeated
    while (count!=k)
    {
        int m = 1;
        int o = rand()%N;
        for (int j = 0; j < i1; j++)
        {
            if(index[j]==o)
            {
                m = 0;
                break;
            }
        }
        if(m==0)
        {
            continue;
        }
        index[i1]=o;
        count++;
        i1++;
    }
    double old_centroid_X[k];
    double old_centroid_Y[k];

    double new_centroid_X[k];
    double new_centroid_Y[k];
    for (int i = 0; i < k; i++)
    {
        old_centroid_X[i] = X[index[i]];
        old_centroid_Y[i] = Y[index[i]];
        new_centroid_X[i] = X[index[i]];
        new_centroid_Y[i] = Y[index[i]];
    }
    int iter = 0;
    while (1)
    {
        // initializing region
        int Region[N];
        for (int i = 0; i < N; i++)
        {
            Region[i]=-1;
        }
        
        // now assigning region
        for (int i = 0; i < N; i++)
        {
            double minDistance = INT_MAX;
            for (int j = 0; j  < k; j++)
            {
                if(distance(old_centroid_X[j],X[i],old_centroid_Y[j],Y[i])<minDistance)
                {
                    minDistance = distance(old_centroid_X[j],X[i],old_centroid_Y[j],Y[i]);
                    Region[i]=j;
                }
            }
            
        }

        // now finding centroid of all the points 
        double sum_X[k];
        double sum_Y[k];
        double counter[k] ;
        for (int i = 0; i < k; i++)
        {
            sum_X[i] = 0;
            sum_Y[i] = 0;
            counter[i]=0;
        }
        for (int i = 0; i < N; i++)
        {
            counter[Region[i]]++;
            sum_X[Region[i]]+=X[i];
            sum_Y[Region[i]]+=Y[i];
        }
        for (int i = 0; i < k; i++)
        {
            new_centroid_X[i] = sum_X[i]/counter[i];  
            new_centroid_Y[i] = sum_Y[i]/counter[i];  
        }

        printf("Iteration No : %d \n",iter);
        for (int i = 0; i < k; i++) {
            printf("Cluster center %d: (%f, %f ) , Count : %d \n", i, old_centroid_X[i], old_centroid_Y[i],counter[i]);
        }
         
        int convergence = 1;
        for (int i = 0; i < k; i++)
        {
            if((new_centroid_X[i]!=old_centroid_X[i])||(new_centroid_Y[i]!=old_centroid_Y[i]))
            {
                convergence = 0;
                break;
            }
        }

        // updating 
        for (int i = 0; i < k; i++)
        {
            old_centroid_X[i] = new_centroid_X[i];
            old_centroid_Y[i] = new_centroid_Y[i];
        }
        iter++;
        if(iter==50)
        {
            break;
        }

        if(convergence==0)
        {   
            continue;
        }
        else
        {
            break;
        }
    }
    for (int i = 0; i < k; i++) {
        printf("Final Cluster centers %d: (%f, %f)\n", i, old_centroid_X[i], old_centroid_Y[i]);
    } 
}