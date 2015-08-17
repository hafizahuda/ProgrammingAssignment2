## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverseMatrix <- NULL
setM <- function(a){
  x <<- a
  inverseMatrix <<- NULL
}
getM <- function()x
setinvM <- function(invM) inverseMatrix <- invM
getinvM <- function () inverseMatrix
list(setM=setM, getM=getM, setinvM=setinvM, getinvM=getinvM)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverseMatrix <- x$getinvM()
  if(!is.null(inverseMatrix)){
    message('getting cached data.')
    return(inverseMatrix)
  }
  dataM <- x$getM()
  inverseMatrix <-solve(dataM)
  x$setinvM(inverseMatrix)
  inverseMatrix
}
