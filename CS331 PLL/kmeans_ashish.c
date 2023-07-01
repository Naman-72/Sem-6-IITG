#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define N 1000      // number of data points
#define K 10        // number of clusters
#define MAX_ITER 50 // maximum number of iterations

// function to compute Euclidean distance between two points
double distance(double *p1, double *p2, int dim) {
    double sum = 0.0;
    for (int i = 0; i < dim; i++) {
        sum += (p1[i] - p2[i]) * (p1[i] - p2[i]);
    }
    return sqrt(sum);
}

int main() {
    /*int K , MAX_ITER ;
    // generate N random data points with 2 dimensions
    printf("enter k:") ;
    scanf("%d", &K) ;
    printf("enter iter:");
    scanf("%d", &MAX_ITER) ;*/

    double data[N][2];
    for (int i = 0; i < N; i++) {
        data[i][0] = (double)rand() / RAND_MAX;
        data[i][1] = (double)rand() / RAND_MAX;
    }

    // initialize K random cluster centers
    double centers[K][2];
    for (int i = 0; i < K; i++) {
        int idx = rand() % N;
        centers[i][0] = data[idx][0];
        centers[i][1] = data[idx][1];
    }

    // iterate until convergence or maximum number of iterations reached
    int iter = 0;
    while (iter < MAX_ITER) {
        // assign each data point to the nearest cluster center
        double centers_old[K][2]; 
        int assignments[N];
        for (int i = 0; i < N; i++) {
            double min_dist = INFINITY;
            int min_idx = -1;
            for (int j = 0; j < K; j++) {
                double dist = distance(data[i], centers[j], 2);
                if (dist < min_dist) {
                    min_dist = dist;
                    min_idx = j;
                }
            }
            assignments[i] = min_idx;
        }

        // update the cluster centers as the mean of the assigned data points
        for (int i = 0; i < K; i++) {
            double sum_x = 0.0;
            double sum_y = 0.0;
            int count = 0;
            for (int j = 0; j < N; j++) {
                if (assignments[j] == i) {
                    sum_x += data[j][0];
                    sum_y += data[j][1];
                    count++;
                }
            }
            if (count > 0) {
                centers_old[i][0] = centers[i][0];
                centers_old[i][1] = centers[i][1];
                centers[i][0] = sum_x / count;
                centers[i][1] = sum_y / count;
            }
        }

        // check for convergence
        int changed = 0;
        for (int i = 0; i < K; i++) {
            if (distance(centers[i], centers_old[i], 2) > 0.001) {
                changed = 1;
                break;
            }
        }
        if (!changed) {
            break;
        }

        iter++;
    }

    // print the final cluster centers
    for (int i = 0; i < K; i++) {
        printf("Cluster center %d: (%f, %f)\n", i, centers[i][0], centers[i][1]);
    }

    return 0;
}
