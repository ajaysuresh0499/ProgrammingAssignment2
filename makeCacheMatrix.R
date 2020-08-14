makeCacheMatri <-function(x=matrix()) {
  inv <-NULL
  set <-function(y){
    
  }
  get <-function() x
  setsolve <- function(inverse) inv <<- inverse 
  getsolve <- function() inv
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

cacheSolve <- function(x, ...) {
  inv <- x$getsolve()
  if (!is.null(inv)){
    message("getting cached inverse matrix")
    return(inv)
  }
 data <- x$get()
 inv <- solve(data, ...)
 x$setsolve(inv)
 inv
}