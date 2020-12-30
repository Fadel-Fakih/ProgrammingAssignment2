## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  h <- NULL
  fn <- function(y){
    x <<- y
    h <<- NULL
  }
  s <- function() {x}
  sinverse <- function(inve){h <<- inve}
  ginverse <- function(){h}
  list(fn=fn,s=s,sinverse=sinverse,ginverse=ginverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  h <- x$ginverse()
  if (! is.null(h)){
    message("get data")
    return(h)
  }
  m <- x$s()
  h <- solve(m,...)
  x$sinverse(h)
  h
}
