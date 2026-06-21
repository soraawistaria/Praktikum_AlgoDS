#include "queue.h"
#include <iostream>
using namespace std;

int main() {
    Queue q;
    init(&q);
    int N, k;

    cin >> N >> k;
    int A[N];

    for (int i = 0; i < N; i++) {
        cin >> A[i];
    }

    int hasil = 0;
    for (int i = 0; i < k; i++){
        enqueue(&q, A[i]);
        hasil += A[i];
    }
    cout << hasil << " ";

    for (int i = k; i < N; i++) {
        int dihapus = front(&q);

        dequeue(&q);
        enqueue(&q, A[i]);

        hasil = hasil - dihapus + A[i];

        cout << hasil << " ";
    }
    return 0;


}