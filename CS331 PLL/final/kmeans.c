#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<math.h>
#include<float.h>
#include<time.h>

#define N 17000
#define M 12
#define e 0.01
#define Infinity DBL_MAX
#define maxiter 200

double distance(double**A , double** codebook, int n , int m , int a , int b)
{
    double sum = 0;
    for (int i = 0; i < m; i++)
    {
        sum+=(A[a][i]-codebook[b][i])*(A[a][i]-codebook[b][i]);
    }
    return sqrt(sum);
}

int main()
{
    int k = 8;
    // scanf("Enter the value of k : %d",&k);
    FILE* dataset;
    dataset = fopen("universe.txt","r");
    // dataset input
    double **A= (double **) malloc (N* sizeof (double*));
    for (int i = 0; i < N; i++)
        A[i] = (double*) malloc (M * sizeof (double));


    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
          fscanf(dataset,"%lf",&A[i][j]);   
        }
    }
    // for (int i = 0; i < N; i++)
    // {
    //     for (int j = 0; j < M; j++)
    //     {
    //       printf("%lf ",A[i][j]);   
    //     }
    //     printf("\n");
    // }
    // choosing k random points 
    int count = 0;
    // choosing k random points and ensuring none of them is repeated
    double **centroid= (double **) malloc (k* sizeof (double*));
    for (int i = 0; i < k; i++)
        centroid[i] = (double*) malloc (M * sizeof (double));
    int initial_index[k];

    srand(time(NULL));
    //rand() is automatically seeded with the a value of 1 if you do not call srand().
    //You can set the "seed" of the random generator with the srand function(only call srand once in a program) One common way to get different sequences from the rand() generator is to set the seed to the current time or the id of the process:
    // srand(time(NULL)); or srand(getpid()); at the start of the program

    while (count!=k)
    {
        int o = rand()%N;
        int m = 0;
        for (int i = 0; i < count; i++)
        {
            if(o==initial_index[i])
            {
                m = 1;
                break;
            }
        }
        if(m==1)
        {
            continue;
        }
        initial_index[count] = o;
        count++;  
    }
    printf("Initial Centroid : \n");
    for (int i = 0; i < k; i++)
    {
        // printf("%d,",initial_index[i]);
        for (int j = 0; j < M; j++)
        {
            centroid[i][j] = A[initial_index[i]][j];
        }
    }
    for (int i = 0; i < k; i++)
    {
        printf("Centroid %d : (",i);
        for (int j = 0; j < M; j++)
        {
            if(j<M-1)
            {
                printf(" %lf,",centroid[i][j]);
            }
            else
            {
                printf("%lf )",centroid[i][j]);
            }
        }
        printf("\n");
    }
    printf("\n");
    int iter = 0;
    while (1)
    {        
        // finding distance from every point and assigning region to every point
        int region[N];
        for (int i = 0; i < N; i++)
        {
            double min_dist = Infinity;
            for (int j = 0; j < k; j++)
            {
                if(distance(A,centroid,N,M,i,j)<min_dist)
                {
                    min_dist = distance(A,centroid,N,M,i,j);
                    region[i] = j;
                }
            }
        }
        
        // Now allocating centroid 
        int counter[k] ;
        for (int i = 0; i < k; i++)
        {
            counter[i] = 0;
        }
        for (int i = 0; i < N; i++)
        {
            counter[region[i]]++;
        }
        // for (int i = 0; i < k; i++)
        // {
        //     printf("%d : %d\n",i,counter[i]);
        // }
            
        double **sum= (double **) malloc (k* sizeof (double*));
        for (int i = 0; i < k; i++)
            sum[i] = (double*) malloc (M * sizeof (double));

        for (int i = 0; i < k; i++)
        {
            for (int j = 0; j < M; j++)
            {
                sum[i][j] = 0;   
            }
        }
        for (int i = 0; i < N; i++)
        {
            for (int j = 0; j < M; j++)
            {
                sum[region[i]][j]+=A[i][j];
            }    
        }
        for (int i = 0; i < k; i++)
        {
            for (int j = 0; j < M; j++)
            {
                sum[i][j]= sum[i][j]/counter[i];
            }    
        }
        int check = 0;
        for (int i = 0; i < k; i++)
        {
            for (int j = 0; j < M; j++)
            {
                if((sum[i][j]!=centroid[i][j]))
                {
                    check = 1;
                    break;
                }
            }    
            if(check)
            {
                break;
            }
        }
        // updating new centroids
        if(check)
        {
            // no convergence
            for (int i = 0; i < k; i++)
            {
                for (int j = 0; j < M; j++)
                {
                    centroid[i][j] = sum[i][j];
                }    
            }
        }
        else
        {
            printf("Convergence \n");
            break;
        }
        printf("After Iteration %d :\n",iter);
        for (int i = 0; i < k; i++)
        {
            printf("Centroid %d : (",i);
            for (int j = 0; j < M; j++)
            {
                if(j!=M-1)
                printf(" %lf,",centroid[i][j]);
                if(j==M-1)
                {
                    printf("%lf )",centroid[i][j]);
                }
            }
            printf("\n");
        }
        printf("\n");
        iter++;
        if(iter>=100)
        {
            break;
        }
    }
    printf("Final Centroids :\n");
    for (int i = 0; i < k; i++)
    {
        printf("Centroid %d : (",i);
        for (int j = 0; j < M; j++)
        {
            if(j!=M-1)
            printf(" %lf,",centroid[i][j]);
            if(j==M-1)
            {
                printf("%lf )",centroid[i][j]);
            }
        }
        printf("\n");
    }
    return 0;
}