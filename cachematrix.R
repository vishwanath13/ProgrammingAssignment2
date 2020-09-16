## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # function takes matrix as input
  m <- NULL
  # defining set function
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  # defining get function
  get <- function() x
  # defining setinverse and getinverse functions
  setinverse <- function(matrix) m <<- matrix
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  # funcyions takes list outputed from makeCachematrix
  m <- x$getinverse()
  if(!is.null(m)) {
    #checking if inverse in already taken
    message("getting cached inverse matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  # setting the inverse we just solved
  x$setinverse(m)
  m
}
