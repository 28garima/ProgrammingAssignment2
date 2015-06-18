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

# Assumption X is a square invertible matrix.

# solve(X) returns the inverse of matrix.

makeCacheMatrix <- function(x = matrix())
{
  i <- NULL
  
  set <- function(y)      #  set the value of the matrix
  {
    
    x <<- y
    
    i <- NULL
    
  }
  
  get <- function() x     # get the value of the matrix
  
  setInverse <- function(solve) i <<- solve   # set the value of inverse of the matrix
  
  getInverse <- function() i                 # get the value of inverse of the matrix
  
  list( 
    set = set, 
    get = get, 
    setInverse = setInverse, 
    getInverse = getInverse)
}

# (ii) cacheSolve: This function computes the inverse of the special 

# "matrix" returned by makeCacheMatrix above. If the inverse has already

# been calculated (and the matrix has not changed), then the cachesolve 

# should retrieve the inverse from the cache. If not, it computes the 

# inverse, sets the value in the cache via setInverse function.

cacheSolve <- function(x = matrix(), ...)
{
  i <- x$getInverse()
  
  if (!is.null(i))
  {
    
    message("getting cached data")
    
    return(i)
  }
  
  data <- x$get()
  
  i <- solve(data, ...)
  
  x$setInverse(i)
  
  i
}
## Sample run:

## > x <- makeCacheMatrix()

## > x$set(matrix(c(3, 4, 1, 2), 2, 2))

## > cacheSolve(x)

##        [,1] [,2]
## [1,]    1  -0.5
## [2,]   -2   1.5

## No cache in the first run

## > cacheSolve(x)

## getting cached data :

##       [,1] [,2]
## [1,]    1 -0.5
## [2,]   -2  1.5


## Retrieving from the cache in the second run :

## > cacheSolve(m)

## getting cached data.

##       [,1] [,2]
## [1,]    1 -0.5
## [2,]   -2  1.5
