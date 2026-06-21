#include "single_linked_list.h"
#include <iostream>
using namespace std;

int main () {
    SingleLinkedList sll;
    sll.init();

    int N, K, x;
    cin >> N >> K;

    for (int i = 0; i < N; i++) {
        cin >> x;
        sll.add_back(x);
    }
    int k_awal = K;
    int idx = 0;
    while (sll.size > 1) {
        idx = (idx + K - 1) % sll.size;

        if (sll.get(idx) % 2 == 0) {
            K++;
        } else {
            K--;
        }
        sll.delete_idx(idx);

        if (K <= 0) K = k_awal;

        idx = idx % sll.size;
    }
    sll.display();
}