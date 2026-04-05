#include "line.h"
#include "point.h"
#include <string>

double gradient(const Line * l, const Point * p) {
    
    return (l -> a * p -> x) + (l -> b * p -> y) + l -> c;
}

std::string CheckPointPosition(double gradient) {

    if(gradient == 0) {
        return "On line";
    } else if (gradient > 0) {
        return "Left";
    } else{
        return "Right";
    }
}