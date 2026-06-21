#include "double_linked_list.h"
#include <iostream>
using namespace std;

int main() {
    DoubleLinkedList dll;
    int N, R;
    char C;
    dll.init();

    cin >> N >> R;
    for (int i=0; i < N; i++) {
        cin >> C;
        dll.add_back(C);
    }
    int X[R], Y[R];
    for (int i=0; i<R; i++) {
        cin >> X[i] >> Y[i];
    }

    cout << endl;
    Node * alpha = dll.head;
    Node * beta = dll.tail;
    for (int i=0; i<R; i++) {

        for (int j=0; j < X[i] ; j++) {
            alpha = alpha->next;
        }
        for (int k=0; k < Y[i] ;k++) {
            beta = beta->prev;
        }
        
        if (alpha->next == beta || alpha->prev == beta) {
            char swap_beta = beta->data;
            beta->data = alpha->data;
            alpha->data = swap_beta;
        } else if (alpha == beta) {
            Node * target = dll.head;
            int idx = 0;

            while (target != alpha) {
                target = target->next;
                idx++;
            }
            alpha = target->next;
            beta = target->prev;
            dll.delete_idx(idx);
        }
    }
    dll.display();
}