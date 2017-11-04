## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(aMatrix = matrix()) {
  m <- NULL 
  set <- function(y) {
    aMatrix <<- y
    m <<- NULL
  }
  get <- function() 
  {
    aMatrix
  }
  setInverted <- function(Inverted) 
  {
    m <<- Inverted 
  }
  getInverted <- function()  m 
  list(set = set, get = get,
       setInverted = setInverted,
       getInverted = getInverted)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
