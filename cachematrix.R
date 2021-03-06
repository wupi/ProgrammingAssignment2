## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Create and matrix object which can save its inverse version.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function
## calculate the inverse matrix for matrix object and cache it back to the object.
cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  m <- solve(x$get())
  x$setinv(m)  
        ## Return a matrix that is the inverse of 'x'
}
