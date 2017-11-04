## Put comments here that give an overall description of what your
## functions do

## Programming Assignment no 2. 

## Write a short comment describing this function
## makeCacheMatrix 

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


## Programming Assignment no 2 
## Write a short comment describing this function

cacheSolve <- function(aMatrix, ...) {
  m <- aMatrix$getInverted()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- aMatrix$get()
  m <- solve(data)
  aMatrix$setInverted(m) 
  m  
        ## Return a matrix that is the inverse of 'x'
}
