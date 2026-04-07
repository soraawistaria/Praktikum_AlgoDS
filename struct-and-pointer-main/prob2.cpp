#include <iostream>
using namespace std;
#include <string>
#include <cmath>
#include "circle.h"
#include "point.h"

int main() {
    Point p;
    Circle c;

    cin >> c.centre.x >> c.centre.y >> c.radius >> p.x >> p.y;
 
    // int d = sqrt( pow(px, 2) + pow(py, 2) );
    // int rr = pow(r, 2);

    // if (d == rr) {
    //     cout << "d : " << d << "   " << "rr : " << r << endl;
    //     cout << "On Circle";
    // } else if ( d < rr) {
    //     cout << "d : " << d << "   " << "rr : " << r << endl;
    //     cout << "Inside";
    // } else {
    //     cout << "d : " << d << "   " << "rr : " << r << endl;
    //     cout << "Outside";
    // }
}