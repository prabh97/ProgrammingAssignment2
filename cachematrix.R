## Put comments here that give an overall description of what your
## functions do
## There are total two functions. First one creates a list of functions
## that can set,get,setinverse and getinverse for the given data.
## Write a short comment describing this function
## This function creates a list of function so that it can be called when running cacheSolve function.
makeCacheMatrix <- function(x = matrix()) {
i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function ()i
  list(set = set, get = get, 
       setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## This function first see whether the inverse is already present and if not then calculate 
## the inverse of the matrix

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
   if(!isnull(i)){
     message("getting cached data")
   return(i)
 } 
 data <- x$get()
 i <- solve(data, ...)
 x$setinverse(i)
 i							## Return a matrix that is the inverse of 'x'
}
