while (1)
    // {        
    //     // finding distance from every point and assigning region to every point
    //     int region[N];
    //     for (int i = 0; i < N; i++)
    //     {
    //         double min_dist = Infinity;
    //         for (int j = 0; j < k; j++)
    //         {
    //             if(distance(A,centroid,N,M,i,j)<min_dist)
    //             {
    //                 min_dist = distance(A,centroid,N,M,i,j);
    //                 region[i] = j;
    //             }
    //         }
    //     }

    //     // Now allocating centroid 
    //     int counter[k] ;
    //     for (int i = 0; i < k; i++)
    //     {
    //         counter[i] = 0;
    //     }
        
    //     double **sum= (double **) malloc (k* sizeof (double*));
    //     for (int i = 0; i < k; i++)
    //         sum[i] = (double*) malloc (M * sizeof (double));

    //     for (int i = 0; i < k; i++)
    //     {
    //         for (int j = 0; j < M; j++)
    //         {
    //             sum[i][j] = 0;   
    //         }
    //     }
    //     for (int i = 0; i < N; i++)
    //     {
    //         counter[region[i]]++;
    //         for (int j = 0; j < M; j++)
    //         {
    //             sum[region[i]][j]+=A[i][j];
    //         }    
    //     }
    //     for (int i = 0; i < k; i++)
    //     {
    //         for (int j = 0; j < M; j++)
    //         {
    //             sum[i][j]= sum[i][j]/counter[i];
    //         }    
    //     }
    //     int check = 0;
    //     for (int i = 0; i < k; i++)
    //     {
    //         for (int j = 0; j < M; j++)
    //         {
    //             if((sum[i][j]!=centroid[i][j]))
    //             {
    //                 check = 1;
    //                 break;
    //             }
    //         }    
    //         if(check)
    //             break;
    //     }
    //     if(check)
    //     {
    //         // no convergence
    //         for (int i = 0; i < k; i++)
    //         {
    //             for (int j = 0; j < M; j++)
    //             {
    //                 centroid[i][j] = sum[i][j];
    //             }    
    //         }
    //     }
    //     else
    //     {
    //         break;
    //     }
    //     iter++;
    //     if(iter>=100)
    //     {
    //         break;
    //     }
    // }
    // for (int i = 0; i < k; i++)
    // {
    //     printf("Centroid %d : ",i);
    //     for (int j = 0; j < M; j++)
    //     {
    //         printf("%lf,",centroid[i][j]);
    //     }
    //     printf("\n");
    // }