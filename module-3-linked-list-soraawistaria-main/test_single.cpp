#include "single_linked_list.h"

// use this file to test your implementation of single linked list

int main () {
    SingleLinkedList sll;
    sll.init();

    sll.add_front(12);
    sll.add_front(13);
    sll.add_back(9);

    sll.display();

    sll.delete_idx(1);

    sll.display();
}