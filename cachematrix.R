## Put comments here that give an overall description of what your
## functions do

## Programming Assignment no 2. 

## Write a short comment describing this function 
## makeCacheMatrix Sets a cached copy for the given Matrix. 
## When desired, the cached copy is retrieved for the user, 
## instead of, reapplying the function, to the unchanged file. 

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
## This function set a cached copy of 
##the inverse of the provided matrix in the memory. 

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
