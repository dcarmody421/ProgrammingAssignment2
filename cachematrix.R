## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

makeCacheMatrix <- function(x = matrix()) {
  ## Create matrix
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
    # Setting matrix
  }
  get <- function() x
  ## Getting matrix
  setinverse <- function(inverse) i <<- inverse
  #Set inverse function on matrix
  getinverse <- function() i
  ## Get inverse on matrix
  list(get=get,
       set=set,
       setinverse = setinverse,
       getinverse = getinverse)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cacheSolve <-function(x,...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return (i)
  }
  data <- x$get()
  ## Get matrix
  i <- solve(data,...)
  x$setinverse(i)
  #Set inverse 
  i
}