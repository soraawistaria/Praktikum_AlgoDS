#include "circle.h"
#include "point.h"
#include <cmath>

double distance(const Circle * c, const Point * p) {
    return sqrt( pow((p -> x - c -> centre.x), 2) + pow((p -> y - c -> centre.y), 2) );
    
}

std::string CheckPointPosition(double distance, const Circle * c) {

    if(distance == pow(c -> radius, 2)) {
        return "On Circle";
    } else if (distance < pow(c -> radius, 2)) {
        return "Inside";
    } else{
        return "Outside";
    }
}