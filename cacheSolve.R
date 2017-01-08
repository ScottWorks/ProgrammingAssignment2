

cacheSolve <- function(x, ...){
  m <- x$getinv()
    if(!is.null(m)){
      print("Retrieving cached data, be back in a jip...")
      return(m)
    }
    mtx.data <- x$get()
    m <- solve(mtx.data, ...)
    m
}