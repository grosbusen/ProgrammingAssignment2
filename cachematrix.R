## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This is a function to creates special matrix, that really a list that 
## contain set and get the matrix and set and get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m<<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m<<- solve
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## a function that return an inverse matrix  from the cache
## if it has already been calculated, if not
## it calculate the inverse of the matrix and set the inverse matrix in cache
cacheSolve <- function(x, ...) {
  m <- x$getinverse() 
  if (!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
