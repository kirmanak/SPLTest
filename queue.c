#include <stdio.h>

/*
 * Реализуйте очередь на основе односвязного списка в C.
 */

struct node {
  struct node *next;
  int value;
};

struct queue {
  struct node *front;
  struct node *back;
};

// we need a pointer to the queue to change back (and front, if needed)
void enqueue(struct queue *q, int val) {
  struct node new;
  new.value = val;
  if (q == NULL) {
    new.next = NULL;
    struct queue tmp;
    q = &tmp;
    q->front = &new;
    q->back = &new;
  } else {
    new.next = q->back;
    q->back = &new;
  }
}

// we need a pointer to the queue to change front
int dequeue(struct queue* q) {
  if (q == NULL) return 0; // What should I return? 
  struct node *new_front = q->back; 
  // looking for the node which before last one
  // it is O(n) operations, it is stupid!
  for (;new_front->next != q->front; new_front = new_front->next);
  new_front->next = NULL;
  int val = q->front->value;
  q->front = new_front;
  return val;
}
