#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<math.h>
#include<float.h>

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

double kmeans(double** codebook, int size, int n , int m, double** A)
{
    int region[n];
    for (int i = 0; i < n; i++)
    {
        region[i] = -1;
    }
    
    // assigning regions to the points
    for (int i = 0; i < n; i++) // A
    {
        double min_distance = Infinity;
        for (int j = 0; j < size; j++) // newcodebook
        {
            if(distance(A,codebook,n,m,i,j)<min_distance)        
            {
                min_distance = distance(A,codebook,n,m,i,j);
                region[i] = j;
            }
        }
    }

    // make new codebook
    // for (int i = 0; i < n; i++)
    // {
    //     printf("%d : %d\n",i,region[i]);
    // }
    // return 0;
    
    // X is used to find coordinate for centroid of the cluster
    double **X = (double **) malloc (size * sizeof (double*));
    for (int i = 0; i < size; i++)
        X[i] = (double*) malloc (m * sizeof (double));

    int counter[size];
    for (int i = 0; i < size; i++)
    {
        counter[i] = 0;
        for (int j = 0; j < m; j++)
        {
            X[i][j] = 0;
        }
    }
    for (int i = 0; i < n; i++)
    {
        counter[region[i]]++;
        for (int j = 0; j < m; j++)
        {
            X[region[i]][j]+=A[i][j];
        }
    }
    for (int i = 0; i < size; i++)
    {
        printf("%d : %d : %lf\n",i,counter[i],X[i][0]);
    }
    
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < m; j++)
        {
            X[i][j]=X[i][j]/counter[i];
            // printf("%lf,",X[i][j]);
        }
        // printf("\n");
    }
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j  < M; j++)
        {
            codebook[i][j] = X[i][j];
            printf("%lf,",codebook[i][j]);
        }
        printf("\n");
    }
    for (int i = 0; i < n; i++) // A
    {
        double min_distance = Infinity;
        for (int j = 0; j < size; j++) // newcodebook
        {
            if(distance(A,X,n,m,i,j)<min_distance)        
            {
                min_distance = distance(A,X,n,m,i,j);
                region[i] = j;
            }
        }
    }
    double NewDistortion = 0;
    for (int i = 0; i < n; i++)
    {
        NewDistortion += distance(A,codebook,n,m,i,region[i]);
    }
    printf("%lf \n",NewDistortion);
    return NewDistortion;
}

int main()
{
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
    
    // finding centroid 
    // cent => centroid coordinate
    double cent[M];
    for (int i = 0; i < M; i++)
    {
        cent[i] = 0;
    }
    int size = 1;
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
            cent[j]= cent[j]+A[i][j];
        }
    }
    for (int j = 0; j < M; j++)
    {
        cent[j]= cent[j]/N;
    }
    // centroid calculated 
    printf("Initial Centroid : (");
    for (int i = 0; i < M-1; i++)
    {
        printf("%lf, ",cent[i]);
    }
    
    printf("%lf)\n",cent[M-1]);

    double **codebook = (double **) malloc (1*sizeof (double*));
    codebook[0] = (double*) malloc (M * sizeof (double));
    
    for (int i = 0; i < M; i++)
    {
        codebook[0][i] = cent[i];
        // debugging 
        // printf("%lf, ",codebook[0][i]);
    }

    // splitting centroid along x
    double old_distortion = 0;
    for (int i = 0; i < N; i++)
    {
        double curr = 0;
        for (int j = 0; j < M; j++)
        {
            curr+=(A[i][j]-codebook[0][j])*(A[i][j]-codebook[0][j]);
        }
        old_distortion+=sqrt(curr);
    
    }
    printf("Distortion : %lf\n",old_distortion);    
    
    while (1)
    {
        double **newCodebook = (double **) malloc (2*size * sizeof (double*));
        for (int i = 0; i < 2*size; i++)
            newCodebook[i] = (double*) malloc (M * sizeof (double));

        for (int i = 0; i < size; i++)
        {
            newCodebook[2*i][0] = codebook[i][0]*(1+e);
            newCodebook[2*i+1][0] = codebook[i][0]*(1-e);
            for (int j = 1; j < M; j++)
            {
                newCodebook[2*i][j] = codebook[i][j];
                newCodebook[2*i+1][j] = codebook[i][j];
            }
        }    
        for (int i = 0; i < size; i++)
        {
            free(codebook[i]);
        }
        free(codebook);
        size=2*size;
        codebook = (double **) malloc (size * sizeof (double*));
        for (int i = 0; i < size; i++)
            codebook[i] = (double*) malloc (M * sizeof (double));
        
        printf("New Points after Splitting : \n");
        for (int i = 0; i < size; i++)
        {
            printf("(");
            for (int j = 0; j < M; j++)
            {
                codebook[i][j] = newCodebook[i][j];
                printf("%lf,",codebook[i][j]);
            }
            printf(")\n");
        }    

        double new_distortion = kmeans(newCodebook,size,N,M,A);
        printf("After Applying K means Iter1 : \n");
        for (int i = 0; i < size; i++)
        {
            printf("(");
            for (int j = 0; j < M; j++)
            {
                codebook[i][j] = newCodebook[i][j];
                printf("%lf,",newCodebook[i][j]);
            }
            printf(")\n");
        }    
        printf("Distortion : %lf \n",new_distortion);
        int noofiter = 1;

        while (abs(old_distortion-new_distortion)/old_distortion > 1e-3)
        {
            noofiter++;
            old_distortion = new_distortion;
            new_distortion = kmeans(newCodebook,size,N,M,A);
            printf("After Applying K means Iter%d : \n",noofiter);
            for (int i = 0; i < size; i++)
            {
                printf("(");
                for (int j = 0; j < M; j++)
                {
                    codebook[i][j] = newCodebook[i][j];
                    printf("%lf,",newCodebook[i][j]);
                }
                printf(")\n");
            }    
            printf("Distortion : %lf \n",new_distortion);
            if(noofiter>=200)
            {
                break;
            }
        }
        for (int i = 0; i < size; i++)
        {
            printf("Centroid %d : (", i);
            for (int j = 0; j < M; j++)
            {
                printf(" %lf ",newCodebook[i][j]);
            }
            printf(")\n");
        }
        if(size>=8)
        {
            break;
        }
        for (int i = 0; i < size; i++)
            free(newCodebook[i]);
        free(newCodebook);
    }
    free(codebook[0]);
    free(codebook);
    for (int i = 0; i < N; i++)
    {
        free(A[i]);
    }
    free(A);
    return 0;
}