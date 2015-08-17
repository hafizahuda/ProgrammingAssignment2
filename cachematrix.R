## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {        #makeCacheMatrix create a list containing function to
inverseMatrix <- NULL
setM <- function(a){                               #set the value of matrix
  x <<- a
  inverseMatrix <<- NULL
}
getM <- function()x                                #get the value of matrix
setinvM <- function(invM) inverseMatrix <- invM    #set the value of inverse matrix
getinvM <- function () inverseMatrix               #get the value of inverse matrix
list(setM=setM, getM=getM, setinvM=setinvM, getinvM=getinvM)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {                   #cachesolve returns the inverse of the matrix
        ## Return a matrix that is the inverse of 'x'
  inverseMatrix <- x$getinvM()                    #checks if the inverse has already been computed
  if(!is.null(inverseMatrix)){                    # if the results is yes, then skips the computation
    message('getting cached data.')               # if the results is no, then it computes the inverse and
    return(inverseMatrix)                         # set the value in the cache via setinvM function
  }
  dataM <- x$getM()
  inverseMatrix <-solve(dataM)
  x$setinvM(inverseMatrix)
  inverseMatrix
}
