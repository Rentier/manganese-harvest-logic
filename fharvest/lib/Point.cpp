/*
 * Point.cpp
 *
 *  Created on: Jan 3, 2014
 *      Author: jan-christoph
 */

#include "Point.h"

#include <cstdio>

Point::Point() {
	x = y = 0;
}

Point::Point(int a, int b) {
	x = a;
	y = b;
}

void Point::dump() {
	printf("(%d, %d)\t", x,y);
}




Point::~Point() {}

