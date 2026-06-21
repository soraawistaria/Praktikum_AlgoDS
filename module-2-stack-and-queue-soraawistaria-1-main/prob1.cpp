#include "stack.h"
#include <iostream>
using namespace std;
#include <string>

int main() {
    Stack s;
    init(&s);
    int N, angka, a, b, hasil;
    string x;

    cin >> N;
    for (int i = 0; i < N; i++) {
        cin >> x;

        if (x != "+" && x != "-" && x != "*" && x != "/") {
            angka = stoi(x);
            push(&s, angka);

        } else {
            if (isEmpty(&s)) {
                cout << "Stack masih kosong" << endl;
                return 1;
            }
            a = peek(&s); 
            pop(&s);

            if (isEmpty(&s)) {
                cout << "Stack masih kosong" << endl;
                return 1;
            }
            b = peek(&s); 
            pop(&s);

            if (x == "+") hasil = b + a;
            else if (x == "-") hasil = b - a;
            else if (x == "*") hasil = b * a;
            else if (x == "/") {
                if (a == 0){
                    cout << "Gabisa dibagi 0" << endl;
                }
                hasil = b / a;
            }
            push(&s, hasil);
        }   
    }
    cout << peek(&s) << endl;
    // cout << a << " " << b << " " << hasil << endl;
    return 0;
}