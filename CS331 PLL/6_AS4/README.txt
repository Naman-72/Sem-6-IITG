K-Means Clustering

How to Run :
1) gcc kmeans.c
2) ./a.out

Assumptions :
1. 'universe.txt' is input file and it must be present in same directory as of code for running.
2. Each line in input file contains one data point and the coordinates are space separated. 
3. Max number of data points is 20000 and the maximum number of centroids allowed is 200. The number of dimensions in input vector is 
   taken as 12 and currently the number of clusters is taken to be 8. To update their values, we need to modify the #define commands 
   in kmeans.c
4. The clusters along with their centroids are printed in 'output.txt'.

-----------------------------------------------------------------------------------------------------------------------------

LBG Algorithm (Implemented via the flowchart provided)

How to Run : 
1) gcc lbg.c
2) ./a.out

Assumptions :
1. 'universe.txt' is input file and it must be present in same directory as of code for running.
2. Each line in input file contains one data point and the coordinates are space separated. 
3. Max number of data points is 20000 and the maximum number of centroids allowed is 200. The number of dimensions in input vector is 
   taken as 12 and currently the value of M is taken to be 8. To update their values, we need to modify the #define commands 
   in kmeans.c . Value of alpha is 0.001 and epsilon is 0.01 and can be modified in the lbg.c file.
4. The final distortion and clusters along with their centroids are printed in 'output.txt'.

-----------------------------------------------------------------------------------------------------------------------------
