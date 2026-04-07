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

    double distances = distance(&c, &p);
    cout << "\n" <<"d : " << distances << " " << pow(c.radius, 2) << endl; 
    cout << CheckPointInCircle(distances, &c);

}