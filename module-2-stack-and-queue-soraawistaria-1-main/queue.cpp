#include "queue.h"

void init(Queue* q) {
    q->front = q->data;
    q->rear = q->data - 1;
}

bool isEmpty(const Queue* q) {
    return q->front > q->rear;
}

bool isFull(const Queue* q) {
    return q->rear == (q->data + (MAX -1));
}

void enqueue(Queue* q, int value) {
    if (!isFull(q)) {
        q->rear++;
        if(q->rear == q->data + MAX) {
            q->rear = q->data;
        }

        *q->rear = value;
    }
}

void dequeue(Queue* q) {
    if (!isEmpty(q)) {
        q->front++;

        if(q->front == q->data + MAX) {
            q->front = q->data;
        }
    }
}

int front(const Queue* q) {
    if(!isEmpty(q)){
        return *(q->front);
    }
    return -1;
}

int back(const Queue* q) {
    if(!isEmpty(q)){
        return *(q->rear);
    }
    return -1;
}