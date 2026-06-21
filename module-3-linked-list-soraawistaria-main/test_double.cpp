#include "double_linked_list.h"
#include <iostream>
using namespace std;

// use this file to test your implementation of double linked list
int main(){
    DoubleLinkedList dll;
    dll.init();

    dll.add_back('s');
    dll.add_back('o');
    dll.add_back('r');
    dll.add_back('a');
    dll.add_back('a');

    // dll.delete_back();
    // dll.delete_front();
    dll.delete_idx(4);
    // dll.add_idx('o', 1);

    dll.display();
    // cout << endl;

    // dll.add_front('a');
    // dll.add_front('r');
    // dll.add_front('o');
    // dll.add_front('s');

    // dll.display();
    // dll.clear();
    return 0;
}