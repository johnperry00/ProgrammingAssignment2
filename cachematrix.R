##cacheMatrix.R
##Two functions
##makeCacheMatrix() - cache matrix and inverse
##cacheSolve() - calculate inverse of matrix

## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}

## returns inverse of the matrix. 
## first checks for cached solution

cacheSolve <- function(x, ...) {
   inv <- x$getinverse()
    if(!is.null(inv)) {
       return(inv)
    }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
  

