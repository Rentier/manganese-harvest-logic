import cython

import numpy as np
cimport numpy as np

cdef extern from "inttypes.h":
	ctypedef int int32_t  

cdef extern from "fast_harvest.h":
	void start_harvest(int32_t * data , int32_t x, int32_t y, int32_t t, int32_t n)

def harvest(np.ndarray[np.int32_t, ndim=3, mode="c"] data not None, 
	        int goal_x, 
	        int goal_y, 
	        int steps, 
	        int number_of_robots): 

	m, n, o = data.shape[0], data.shape[1], data.shape[2]

	assert m == steps
	assert n == number_of_robots
	assert o == 2

	data = np.ascontiguousarray(data)

	start_harvest (&data[0,0,0],
	               goal_x,
	               goal_y, 
	               steps, 
	               number_of_robots)
	return None

	

	
	

