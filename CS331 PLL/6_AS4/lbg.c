#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>
#include <float.h>
#include <math.h>

#define MAX_Data 20000               // max number of data points allowed
#define MAX_Centroids 200             // max number of clusters allowed
#define NUM_Dimensions 12            // dimensionality of given data
#define M_max 8                     // given value of M

struct point
{
    double coordinates[20];
};

// declaring global variables
int num_dimensions = NUM_Dimensions;
struct point data[MAX_Data];         // array for all data points
struct point centroids[MAX_Centroids];       // array for all centroids
struct point clusters[MAX_Centroids][MAX_Data]; // array for all points in each cluster
int cluster_sizes[MAX_Centroids] = {0};      // array for storing sizes of clusters
int Max_ITER = 200;               // number of max iterations of recomputing centroids
double epsilon = 0.01;
int m = 1;
double alpha = 0.001;
double prev_distort = 0;
double new_distort = 0;

// reading input from file
int read_input()
{
    FILE *file = fopen("universe.txt", "r");
    int n = 0;
    double a;

    while (!feof(file))
    {
        struct point p;

        int i;
        for (i = 0; i < num_dimensions; i++)
        {
            fscanf(file, "%lf", &a);
            p.coordinates[i] = a;
        }

        data[n] = p;
        n++;
    }

    fclose(file);
    return n;
}

// Taking k random data points as centroids
void initial_centroids(int k, int n)
{
    int duplicate[MAX_Data] = {0}; // array for checking same number by rand()

    // Use current time as seed for random generator
    srand(time(0));

    printf("Initial centroids:\n");

    int i;
    for (i = 0; i < k; i++)
    {
        while (1)
        {
            int num = rand() % n;
            if (duplicate[num] == 1)
                continue;

            centroids[i] = data[num];
            duplicate[num] = 1;

            int j;
            for (j = 0; j < num_dimensions; j++)
                printf("%lf ", centroids[i].coordinates[j]);
            printf("\n");

            break;
        }
    }
    printf("\n");

    return;
}

void split_centroids(int k, int n)
{
    m *= 2;

    printf("Initial centroids after Splitting:\n");

    int i;

    for (i = k; i < m; i++)
    {
        centroids[i] = centroids[m - i - 1];
    }

    for (i = 0; i < k; i++)
    {
        centroids[i].coordinates[0] += (centroids[i].coordinates[0]) * epsilon;
    }

    for (i = k; i < m; i++)
    {
        centroids[i].coordinates[0] -= (centroids[i].coordinates[0]) * epsilon;
    }

    for (i = 0; i < m; i++)
    {
        for (int j = 0; j < num_dimensions; j++)
            printf("%lf ", centroids[i].coordinates[j]);
        printf("\n");
    }

    printf("\n");

    return;
}

// Measures distance between two points
double distance(struct point p1, struct point p2)
{
    double ans = 0;

    int i;
    for (i = 0; i < num_dimensions; i++)
    {
        double a = p1.coordinates[i] - p2.coordinates[i];
        ans = ans + a * a;
    }

    return ans;
}

double compute_distortion(int k)
{
    int i;
    double distort = 0;

    for (i = 0; i < k; i++)
    {
        int cluster_size = cluster_sizes[i];
        for (int j = 0; j < cluster_size; j++)
        {
            //double d = distance(clusters[i][j], centroids[i]);
            //distort += sqrt(d);
            distort += distance(clusters[i][j], centroids[i]);
        }
    }

    return distort;
}

// Recomputes centroids after assigning data points to cluster
void compute_centroids(int k)
{
    int i;
    for (i = 0; i < k; i++)
    {
        int cluster_size = cluster_sizes[i];
        struct point new_centroid;

        int m;
        for (m = 0; m < num_dimensions; m++)
        {
            double x_sum = 0;
            int j;
            for (j = 0; j < cluster_size; j++)
            {
                x_sum += clusters[i][j].coordinates[m];
            }

            new_centroid.coordinates[m] = x_sum / cluster_size;
        }

        centroids[i] = new_centroid;
    }

    return;
}

// Finds the closest cluster of any point
int closest_cluster(struct point p, int k)
{
    int i = 0, c = 0;
    double min_dist = -1.0;
    double f = -1.0;

    for (i = 0; i < k; i++)
    {
        double d = distance(p, centroids[i]);

        if (min_dist == f)
        {
            min_dist = d;
            c = i;
        }
        else if (min_dist > d)
        {
            min_dist = d;
            c = i;
        }
    }

    return c;
}

bool check_distortion()
{
    bool p = false;

    if (abs(prev_distort - new_distort) / new_distort < alpha)
    {
        p = true;
    }

    return p;
}

// Makes clusters of the data points
void make_clusters(int k, int n)
{
    int iter = 0;
    struct point prev_centroids[MAX_Centroids];

    printf("m = %d\n",k);
    printf("Distortion values..\n");

    while (iter < Max_ITER)
    {
        printf("Iter - %d/%d : ", iter + 1, Max_ITER);
        int sizes[MAX_Centroids] = {0};

        int i;
        for (i = 0; i < n; i++)
        {
            int j = closest_cluster(data[i], k);
            int s = sizes[j];

            clusters[j][s] = data[i];
            sizes[j]++;
        }

        for (i = 0; i < k; i++)
        {
            cluster_sizes[i] = sizes[i];
            prev_centroids[i] = centroids[i];
        }

        if (k == 1)
        {
            prev_distort = compute_distortion(k);
        }
        else
        {
            prev_distort = new_distort;
        }

        compute_centroids(k);

        new_distort = compute_distortion(k);

        iter++;
        printf("Distortion : %lf , Average Distortion : %lf \n", new_distort,new_distort/n);

        if (check_distortion())
            break;
    }
    printf("Convergence completed in iteration - %d\n\n", iter);
    printf("\n");

    return;
}

// Printing the coordinates of all centroids
void print_centroids(int k)
{
    printf("Final centroids:\n");

    int i;
    for (i = 0; i < k; i++)
    {
        int j;
        for (j = 0; j < num_dimensions; j++)
        {
            printf("%lf ", centroids[i].coordinates[j]);
        }

        printf("\n");
    }
    printf("\n");

    return;
}

// Printing the points in each cluster in output file
void print_clusters(int k)
{
    printf("Printing the clusters in output file..\n");
    FILE *file = fopen("output.txt", "w");

    fprintf(file, "Final Distortion: %lf\n\n", new_distort);

    int i;
    for (i = 0; i < k; i++)
    {
        fprintf(file, "Cluster %d-\n", i + 1);
        fprintf(file, "Centroid: ");

        int j;
        for (j = 0; j < num_dimensions; j++)
        {
            fprintf(file, "%lf ", centroids[i].coordinates[j]);
        }
        fprintf(file, "\n");

        for (j = 0; j < cluster_sizes[i]; j++)
        {
            int m;
            for (m = 0; m < num_dimensions; m++)
            {
                fprintf(file, "%lf ", clusters[i][j].coordinates[m]);
            }
            fprintf(file, "\n");
        }
        fprintf(file, "\n");
    }

    fclose(file);
    return;
}

int main()
{
    int n = read_input();

    int M = M_max;

    // number of clusters
    int k = 1;

    // selecting k random points as centroids
    initial_centroids(k, n);

    // making clusters using the initial centroids
    make_clusters(k, n);

    while (m < M)
    {
        split_centroids(k, n);

        k *= 2;

        // making clusters using the initial centroids
        make_clusters(k, n);
    }
    
    // printing the final centroids
    print_centroids(k);

    // printing the final clusters in output file
    print_clusters(k);

    return 0;
}
