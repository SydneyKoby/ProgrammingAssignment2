## The two functions below cache the inverse of a given matrix, assuming that it is invertible. 

## The first function, makeCacheMatrix, creates a special matrix which is really a list containing 
## a function to: set the value of the matrix, get the value of the matrix, set the value of the
## inverse, and get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
      x <<- y
      m <<- NULL
    }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## The following function, cacheSolve, gets the inverse of the matrix created in the above
## function. But first, it checks to see of the inverse has already been calculated. If it has, it 
## gets the inverse from the cache, and returns it. If not, it calculates it and sets the inverse 
## in the cache using the setinverse  function.

cacheSolve <- function(x, ...) {

  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
