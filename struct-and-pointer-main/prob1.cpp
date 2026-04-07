#include <iostream>
using namespace std;
#include "point.h"
#include "line.h"
#include <string>

int main() {
    Line l;
    Point p;

    cin >> l.a >> l.b >> l.c >> p.x >> p.y;

    double result = gradient(&l, &p);
    cout << CheckPointPosition(result);
    
}