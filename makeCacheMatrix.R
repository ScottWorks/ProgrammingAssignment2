#This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(mtx = matrix()){
  m <- NULL
  
  if (det(mtx) != 0){ # Routine to check matrix is invertiable  
  set <- function(mtx.y){
    mtx <<- mtx.y
    m <<- NULL
  }
  
  get <- function() mtx
  setinv <- function(inv.mtx) m <<- inv.mtx
  getinv <- function() m 
  list (set = set, 
        get = get,
        setinv = setinv, 
        getinv = getinv)
  
  }
  else{
    print("Determinant is equal to zero!")
    
  }
  
}