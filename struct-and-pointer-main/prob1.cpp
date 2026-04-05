#include <iostream>
using namespace std;
#include "point.h"
#include "line.h"
#include <string>

int main() {
    // int a, b, c, px, py, result;

    // cin >> a >> b >> c >> px >> py;
    Line l;
    Point p;

    cin >> l.a >> l.b >> l.c >> p.x >> p.y;

    double result = gradient(&l, &p);
    cout << CheckPointPosition(result);
    
}