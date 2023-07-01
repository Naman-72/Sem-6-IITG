#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

struct point
{
    double x;
    double y;
};

// declaring global variables
struct point data[1000];         // array for all data points
struct point centroids[10];      // array for all centroids
struct point clusters[10][1000]; // array for all points in each cluster
int cluster_sizes[10] = {0};     // array for storing sizes of clusters
int Max_ITER = 100;              // number of max iterations of recomputing centroids
int NITER = 10;                  // number of max iterations if empty cluster found

// reading input from file
int read_input()
{
    FILE *file = fopen("input.txt", "r");
    int n = 0;
    double a, b;

    while (!feof(file))
    {
        fscanf(file, "%lf %lf", &a, &b);

        struct point p;
        p.x = a;
        p.y = b;

        data[n] = p;
        n++;
    }

    fclose(file);
    return n;
}

// Taking k random data points as centroids
void initial_centroids(int k, int n)
{
    int duplicate[1000] = {0}; // array for checking same number by rand()

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
            printf("%lf %lf\n", centroids[i].x, centroids[i].y);

            break;
        }
    }
    printf("\n");

    return;
}

// Measures distance between two points
double distance(struct point p1, struct point p2)
{
    double a = p1.x - p2.x;
    double b = p1.y - p2.y;

    double ans = a * a + b * b;
    return ans;
}

// Recomputes centroids after assigning data points to cluster
void compute_centroids(int k)
{
    int i;
    for (i = 0; i < k; i++)
    {
        int cluster_size = cluster_sizes[i];
        double x_sum = 0, y_sum = 0;

        int j;
        for (j = 0; j < cluster_size; j++)
        {
            x_sum += clusters[i][j].x;
            y_sum += clusters[i][j].y;
        }

        struct point new_centroid;
        new_centroid.x = x_sum / cluster_size;
        new_centroid.y = y_sum / cluster_size;

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

// Checking for convergence of the centroids
bool check_convergence(int k, struct point *prev)
{
    bool p = false;
    int i;
    for (i = 0; i < k; i++)
    {
        if ((prev[i].x != centroids[i].x) || (prev[i].y != centroids[i].y))
            return p;
    }

    p = true;

    return p;
}

// Makes clusters of the data points
void make_clusters(int k, int n)
{
    int iter = 0;
    struct point prev_centroids[10];

    printf("Running K-Means Clustering..\n");
    while (iter < Max_ITER)
    {
        printf("Iter - %d/%d\n", iter + 1, Max_ITER);
        int sizes[10] = {0};

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
            prev_centroids[i] = centroids[i]; // check later
        }

        compute_centroids(k);

        iter++;
        if (check_convergence(k, prev_centroids))
            break;
    }
    printf("Clustering completed in iteration - %d\n\n", iter);

    return;
}

// Checking if there is an empty cluster
bool check_empty_cluster(int k)
{
    bool p = true;
    int i;
    for (i = 0; i < k; i++)
    {
        if (cluster_sizes[i] <= 0)
            return p;
    }

    p = false;
    return p;
}

// Printing the coordinates of all centroids
void print_centroids(int k)
{
    printf("Final centroids:\n");

    int i;
    for (i = 0; i < k; i++)
    {
        printf("%lf %lf\n", centroids[i].x, centroids[i].y);
    }
    printf("\n");

    return;
}

// Printing the points in each cluster in output file
void print_clusters(int k)
{
    printf("Printing the clusters in output file..\n");
    FILE *file = fopen("output.txt", "w");
    int i;
    for (i = 0; i < k; i++)
    {
        fprintf(file, "Cluster %d-\n", i + 1);
        fprintf(file, "Centroid: %lf %lf\n", centroids[i].x, centroids[i].y);

        int j;
        for (j = 0; j < cluster_sizes[i]; j++)
        {
            fprintf(file, "%lf %lf\n", clusters[i][j].x, clusters[i][j].y);
        }
        fprintf(file, "\n");
    }

    fclose(file);
    return;
}

int main()
{
    int n = read_input();

    // number of clusters
    int k = 3;

    int j = 0;
    while (check_empty_cluster(k) && j < NITER)
    {
        if (j != 0)
            printf("Empty cluster found!\n\n");

        // selecting k random points as centroids
        initial_centroids(k, n);

        // making clusters using the initial centroids
        make_clusters(k, n);

        j++;
    }

    // printing the final clusters in output file
    print_clusters(k);

    return 0;
}
