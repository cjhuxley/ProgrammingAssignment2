## R program for rprog-005 Assignment 2
## The file contains 2 functions that cache the inverse of a matrix: makeCacheMatrix and cachSolve
## Comments are included for key parts of the function.

## makeCacheMatrix takes a matrix object and caches its inverse.
makeCacheMatrix <- function(x = matrix()) {
  inverse<- NULL
  storedVector<- x
  result<-list()
  #set the matrix and set inverse to NULL in external environment
  setMatrix <- function(y) {
    storedVector <<- y
    inverse <<- NULL
    }
  # get the value of the matrix
  getMatrix <- function() storedVector
  # generate inverse using solve() -- assumes always an invertable matrix so no error checking
  setInverse <- function() inverse <<- solve(storedVector)
  # retrieve inverse
  getInverse <- function() inverse
  # list results of the function
  result<<-list(setMatrix = setMatrix, 
                 getMatrix = getMatrix,
                 setInverse = setInverse,
                 getInverse = getInverse
                 )
}
# end makeCacheMatrix


## cacheSolve computes the inverse of the matrix object returned by makeCacheMatrix.
## If the inverse has not already been calculated (and the matrix has not changed), 
## then the cachesolve function retrieves the inverse from the cache.

cacheSolve <- function(x) {
  ## see if the inverse already exists. If so, return cache
  noChange <- result$getInverse()
  if(!is.null(noChange)) {
    message("getting cached data")
    return()
  }
  # generate the inverse, set it and thenreturn the result
  m <- solve(x)
  result$setInverse<<- m
  m
}
# end cacheSolve
