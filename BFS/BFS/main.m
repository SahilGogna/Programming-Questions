//
//  main.m
//  BFS
//
//  Created by Sahil Gogna on 2018-10-08.
//  Copyright © 2018 Sahil Gogna. All rights reserved.
//

#import <Foundation/Foundation.h>
#define N 20
typedef int* vi;
typedef vi* vii; // int**


void enqeueue(int arr[N], int *qsize, int item){
    if(*qsize < N){
        arr[(*qsize)++]=item; // if the size is less just increase the size to put the items, if we have enough space
    }
}

int deqeueue(int arr[N], int *qsize){
    if(*qsize >0) {
        int temp =arr[0];// saving the first element to not to loose it
        for(int i=0; i< *qsize -1; i++)
            arr[i]= arr[i + 1];
        (*qsize)--;//pop out the items
        return temp;
    }
    return -1;
}

void printQ(int arr[N], int qsize){
    for(int i=0; i<qsize; i++)
        printf("%d, ", arr[i]);
    printf("\n");
}

//method to initialize matrix with the value -1 in the matrix
void initMatrix(vii matrix, int size, int value){
    for(int i=0; i<size; i++)
        for(int j=0; j<size; j++)
            matrix[i][j] = value;
}

// this method creates a square  matrix of size*size
vii createMatrix(int size){
    vii matrix = (vii)malloc(size * sizeof(vi));
    for(int i=0; i< size; i++)
        matrix[i] = (vi)malloc(size * sizeof(int));
    return matrix;
}

// u is the starting vertex for the edge that we are adding (source)
// v is the ending vertex for the edge that we are adding (destination)
// w is the weight of the edge that we are adding
void addEdge(vii graph, int u, int v, int w){
    graph[u][v] = w;
    graph[v][u] = w;
}

//method to print matrix
void printMatrix(vii matrix, int size){
    for(int i=0; i<size; i++){
        for(int j=0; j<size; j++)
            printf("%d ",matrix[i][j]);
        printf("\n");
    }
}

void findPath(vii graph,int graphSize, int source){
    int arr[10] = {0};  // this is our queue
    int qSize = 0;      // points to current position in the queue
    int dist[5] = {0}; // stores shortest distance
    int prev[5] = {0}; // stores previous visited node for a particular node
    int visited[5] ={0}; // stores if a node is visited or not
    for(int i=0; i< 5; i++){   // making every value in distance array infinity and prev matrix as undefined
        dist[i] = INT_MAX;
        prev[i] = -1;
    }
    enqeueue(arr,&qSize,0); // enqueue source in the matrix
    enqeueue(arr,&qSize,1);
    enqeueue(arr,&qSize,2);
    enqeueue(arr,&qSize,3);
    enqeueue(arr,&qSize,4);
    dist[0] = 0;            // dist of souce from itself is 0
    while(qSize!=0){        // while queue is not empty
        int currentVertex = deqeueue(arr, &qSize);    // current vertex is dequeue value from queue
        for(int i=0;i<graphSize;i++){       // loop to enqueue neighbouring vertices of current vertex
            if(graph[currentVertex][i] != INT_MAX ){
                if(dist[i] > (dist[currentVertex] + graph[currentVertex][i])){
                    dist[i] = dist[currentVertex] + graph[currentVertex][i];
                    prev[i] = currentVertex;
                }
            }
        }
    }
    for(int l=0; l<5;l++){
    printf("node -> %d distance-> %d previous-> %d \n",l,dist[l], prev[l]);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int size=5;
        vii matrix = createMatrix(size);
        initMatrix(matrix, size, INT_MAX);
        addEdge(matrix, 0, 1, 6);
        addEdge(matrix, 1, 0, 6);
        addEdge(matrix, 0, 2, 1);
        addEdge(matrix, 2, 0, 1);
        addEdge(matrix, 2, 1, 2);
        addEdge(matrix, 1, 2, 2);
        addEdge(matrix, 2, 3, 1);
        addEdge(matrix, 3, 2, 1);
        addEdge(matrix, 1, 3, 2);
        addEdge(matrix, 3, 1, 2);
        addEdge(matrix, 1, 4, 5);
        addEdge(matrix, 4, 1, 5);
        addEdge(matrix, 3, 4, 5);
        addEdge(matrix, 4, 3, 5);
//        printMatrix(matrix, 5);
        findPath(matrix,5, 0);
    }
    return 0;
}
