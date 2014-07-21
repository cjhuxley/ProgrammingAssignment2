## R program for rprog-005 Assignment 2
## The file contains 2 functions that cache the inverse of a matrix: makeCacheMatrix and cachSolve
## Comments are included for key parts of the function.

## makeCacheMatrix creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  #set the matrix and set m to NULL in external environment
  setMatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  # get the value of the matrix
  getMatrix <- function() x
  #set inverse using solve() -- need to check
  setInverse <- function() invMatrix <<- solve(x)
  #get inverse
  getInverse <- function() invMatrix
  # list results of the function -- is this necessary?
  list(set = set, 
       get = get,
       setInverse = setInverse,
       getInverse = getInverse
       )
}


## cacheSolve computes the inverse of the matrix object returned by makeCacheMatrix.
## If the inverse has not already been calculated (and the matrix has not changed), 
## then the cachesolve function retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
