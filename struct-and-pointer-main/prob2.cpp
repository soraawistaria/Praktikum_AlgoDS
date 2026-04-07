#include <iostream>
using namespace std;
#include <string>
#include <cmath>
#include "circle.h"
#include "point.h"


int main() {
    Point p;
    Circle c;
    int cx, cy, r, px, py;

    cx = 0;
    cy = 0;
    r = 5;
    px = 3;
    py = 4;

    int d = sqrt( pow(px, 2) + pow(py, 2) );
    int rr = pow(r, 2);

    if (d == rr) {
        cout << "d : " << d << "   " << "rr : " << r << endl;
        cout << "On Circle";
    } else if ( d < rr) {
        cout << "d : " << d << "   " << "rr : " << r << endl;
        cout << "Inside";
    } else {
        cout << "d : " << d << "   " << "rr : " << r << endl;
        cout << "Outside";
    }
}