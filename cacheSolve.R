
# This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...){
  m <- x$getinv()
    if(!is.null(m)){
      return(m)
    }
    
    mtx.data <- x$get()
    m <- solve(mtx.data, ...)
    m
    
}