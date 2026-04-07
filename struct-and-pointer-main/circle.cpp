#include "circle.h"
#include "point.h"
#include <cmath>

double distance(const Circle * c, const Point * p) {
    return sqrt( pow((p -> x - c -> centre.x), 2) + pow((p -> y - c -> centre.y), 2) );
    
}

std::string CheckPointInCircle(double distance, const Circle * c) {

        if(distance == c -> radius) {
        return "On Circle";
    } else if (distance < c -> radius) {
        return "Inside";
    } else{
        return "Outside";
    }
}