#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

struct Record {
    float *cell;
    int cluster;
};

struct Info {
    int featureCount;
    int recordCount;
    int clusterCount;
    int M;
    float alpha;
    float epsilon;
} programInfo;

void initRecord(struct Record *rec) {
    rec->cell = (float *)calloc(programInfo.featureCount, sizeof(float));
    rec->cluster = -1;
}

void setCluster(struct Record *rec, int cluster) {
    rec->cluster = cluster;
}

void setValues(struct Record *rec, float *values) {
    int i;
    for(i=0 ; i<programInfo.featureCount ; i++) {
        rec->cell[i]=values[i];
    }
}

void copyRecord(struct Record *to, struct Record *from) {
    int i;
    for(i=0 ; i<programInfo.featureCount ; i++) {
        to->cell[i]=from->cell[i];
    }
    to->cluster=from->cluster;
}

void printValues(struct Record *rec) {
    int i;
    for(i=0 ; i<programInfo.featureCount ; i++) {
        printf("%0.2f, ", rec->cell[i]);
    }
    printf("\n");
}

float distance(struct Record *rec1, struct Record *rec2) {
    float temp=0;
    float sum=0;
    int i;
    for(i=0 ; i<programInfo.featureCount ; i++) {
        temp=rec1->cell[i]-rec2->cell[i];
        temp*=temp;
        sum=sum+temp;
    }
    temp=(float)sqrt(sum);
    return temp;
}

void addEpsilon(struct Record *rec) {
    int i;
    for(i=0 ; i<programInfo.featureCount ; i++) {
        rec->cell[i]+=programInfo.epsilon;
    }
}

void totalRecords(FILE *file) {
    int count=0;
    int nofFeatures=1;
    char c;
    int countFeatures=0;
    for (c = getc(file); c != EOF; c = getc(file)) {
        if(countFeatures==0 && c == ',') nofFeatures++;
        if (c == '\n') {
            countFeatures=1;
            count = count + 1;
        }
    }
    programInfo.featureCount=nofFeatures;
    programInfo.recordCount=count-1;
    
}

void readFile(FILE *file, struct Record *data) {
    char line[100];
    float temp[programInfo.featureCount];
    int i=0, j=0;
    char *token;
    char c;
    for (c = getc(file); c != EOF; c = getc(file)) {
        if(c=='\n') break;
    }
    
    while(fscanf(file, "%100s[^\n]", line)!=EOF) {
        // printf("%s\n", line);
        j=0;
        token = strtok(line, ",");
        while(token!=NULL) {
            temp[j++]=atof(token);
            token = strtok(NULL, ",");
            // printf("%f ", temp[j-1]);
        }
        setValues(&data[i++], temp);
        // printf("\n");
    }
}

void printCentroid(struct Record *centroid) {
    for(int i=0 ; i<programInfo.clusterCount ; i++) {
        printValues(centroid+i);
    }
    printf("\n");
}

void randomKCentroids(struct Record *ret, struct Record *data) {
    srand((unsigned) time(0));
    for(int i=0 ; i<programInfo.clusterCount ; i++) {
        int temp=rand()%programInfo.recordCount;
        copyRecord(ret+i, data+temp);
    }
}

void assignCentroid(struct Record *centroid, struct Record *data) {
    int i;
    int j;
    for(i=0 ; i<programInfo.recordCount ; i++) {
        float minD=distance(data+i, centroid);
        int minC=0;
        float temp=0;
        for(j=0 ; j<programInfo.clusterCount ; j++) {
            temp=distance(data+i, centroid+j);
            if(temp<minD) {
                minC=j;
                minD=temp;
            }
        }
        data[i].cluster=minC;
    }
}

void normalise(struct Record *data) {
    float min[programInfo.featureCount];
    float max[programInfo.featureCount];
    int i, j;
    for(i=0 ; i<programInfo.featureCount ; i++) {
        min[i]=data[0].cell[i];
        max[i]=data[0].cell[i];
    }
    for(i=0 ; i<programInfo.recordCount ; i++) {
        for(j=0 ; j<programInfo.featureCount ; j++) {
            if(data[i].cell[j]<min[j]) min[j]=data[i].cell[j];
            if(data[i].cell[j]>max[j]) max[j]=data[i].cell[j];
        }
    }
    for(i=0 ; i<programInfo.recordCount ; i++) {
        for(j=0 ; j<programInfo.featureCount ; j++) {
            data[i].cell[j]=(data[i].cell[j]-min[j])/max[j];
        }
    }

}

void calculateCentroids(struct Record *centroid, struct Record *data) {
    float sum[programInfo.clusterCount][programInfo.featureCount];
    int count[programInfo.clusterCount];
    int i, j;
    for(i=0 ; i<programInfo.clusterCount ; i++) {
        for(j=0 ; j<programInfo.featureCount ; j++) {
            sum[i][j]=0;
        }
        count[i]=0;
    }
    float temp, tempData;
    for(i=0 ; i<programInfo.recordCount ; i++) {
        count[data[i].cluster]++;
        for(j=0 ; j<programInfo.featureCount ; j++) {
            temp=sum[data[i].cluster][j];
            tempData=data[i].cell[j];
            // if((temp+tempData<temp && temp>0) || (temp+tempData>temp && temp<0)) {
            //     sum[data[i].cluster][j]=sum[data[i].cluster][j]/count[data[i].cluster];
            // }
            sum[data[i].cluster][j]+=data[i].cell[j];
        }
    }
    for(i=0 ; i<programInfo.clusterCount ; i++) {
        for(j=0 ; j<programInfo.featureCount ; j++) {
            centroid[i].cell[j]=sum[i][j]/count[i];
        }
    }
}

float calculateDistortion(struct Record *centroid, struct Record *data) {
    int i, j;
    float distortion=0;
    for(i=0 ; i<programInfo.recordCount ; i++) {
        distortion+=distance(centroid+data[i].cluster, data+i);
    }
    return distortion;
}

int checkConvergence(struct Record *centroid, struct Record *data, float dist1, float *dist2) {
    *dist2=calculateDistortion(centroid, data);
    if((*dist2-dist1)/dist1<programInfo.alpha) return 1;
    else return 2;
}

void splitCentroid(struct Record *centroid) {
    int n=programInfo.clusterCount;

    printf("Splitting: %d\n", n);
    int i, j;
    n*=2;
    for(i=0 ; i<programInfo.clusterCount ; i++) {
        copyRecord(centroid+n-i-1, centroid+i);
    }
    for(i=0 ; i<programInfo.clusterCount ; i++) {
        for(j=0 ; j<programInfo.featureCount ; j++) centroid[i].cell[j]+=programInfo.epsilon;
        for(j=0 ; j<programInfo.featureCount ; j++) centroid[n-i-1].cell[j]-=programInfo.epsilon;
    }
    programInfo.clusterCount*=2;
}



void KMeans(struct Record *data, struct Record *centroid) {
    printf("kmeans\n");
    int i, j;
    assignCentroid(centroid, data);
    float D=calculateDistortion(centroid, data);
    float D_dash;
    for(i=0 ; i<100 ; i++) {
        calculateCentroids(centroid, data);
        assignCentroid(centroid, data);
        int converged=checkConvergence(centroid, data, D, &D_dash)==1;
        if(converged==1) {
            break;
        }
        D=D_dash;
    }
}



int main(int argc, char *argv[]) {
    if(argc<2) {
        printf("Enter file name!");
        exit(0);
    }
    if(argc<3) {
        printf("Enter max number of clusters!");
        exit(0);
    }
    if(argc<4) {
        printf("Enter value of alpha!");
        exit(0);
    }
    int nofFeatures=0;
    if(argc>4) {
        nofFeatures=atoi(argv[4]);
    }

    programInfo.M = atoi(argv[2]);
    programInfo.alpha = atof(argv[3]);
    programInfo.clusterCount=1;
    programInfo.epsilon = 0.01;

    int i, j;

    FILE *file;
    file = fopen(argv[1], "r");
    if(file == NULL) {
        printf("Could not open file");
        exit(0);
    }
    totalRecords(file);
    fclose(file);

    if(nofFeatures!=0) programInfo.featureCount=nofFeatures;

    struct Record data[programInfo.recordCount];
    for(i=0 ; i<programInfo.recordCount ; i++) {
        initRecord(&data[i]);
    }

    file = fopen(argv[1], "r");
    if(file == NULL) {
        printf("Could not open file");
        exit(0);
    }
    readFile(file, data);
    struct Record centroid[programInfo.M];

    for(i=0 ; i<programInfo.M ; i++) initRecord(centroid+i);

    randomKCentroids(centroid, data);
    printf("cluster size: %d\n", programInfo.clusterCount);
    printCentroid(centroid);

    while(programInfo.clusterCount<programInfo.M) {
        if(programInfo.clusterCount<programInfo.M) {
            printf("m<M\n");
        }
        splitCentroid(centroid);
        printf("Splitted: \n");
        printCentroid(centroid);
        KMeans(data, centroid);
        printf("cluster size: %d\n", programInfo.clusterCount);
        printCentroid(centroid);

    }
    printCentroid(centroid);

    fclose(file);
    return 1;
}