# ProgrammingAssignment - 2 

# This text file contains some explaination about cachematrix.R

# Matrix inversion is usually a costly computation and there are benefits 

# to caching the inverse of a matrix rather than compute it repeatedly

# Therefore, making use of the following functions will help in making 

# Matrix inversion less costly .

# (i) makeCacheMatrix: This function creates a special "matrix" object 

# that can cache its inverse. It will return a list that can :-

# 1. set the value of the matrix

# 2. get the value of the matrix

# 3. set the value of inverse of the matrix

# 4. get the value of inverse of the matrix

# Assuming that X is a square invertible matrix.

# solve(X) returns the inverse of matrix.

# (ii) cacheSolve: This function computes the inverse of the special 

# "matrix" returned by makeCacheMatrix above. If the inverse has already

# been calculated (and the matrix has not changed), then the cachesolve 

# should retrieve the inverse from the cache. If not, it computes the 

# inverse, sets the value in the cache via setInverse function.
