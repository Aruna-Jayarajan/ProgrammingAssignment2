## Put comments here that give an overall description of what your
## functions do

## Getting and setting values of the vecto and its inverse

makeCacheMatrix <- function(x = matrix()) {
 p <- NULL
 set <- function(y){
   x <<- y
   p <<- NULL
    
 }
  get <-function()x
  setInv <-function(inverse)p <-- inverse
  getInv <- function()p
  list(set = set, get= get , setInv= setInv, getInv=getInv)
}


## Computing the matrix and returning the inverse
cacheSolve <- function(x, ...) {
  p<- x$getInv()
  if(!is.null(p)){
    message("Getting Cached Data")
    return(p)
  }
  mat <- x$get()
  p <-solve(mat,...)
  x$setInv(p)
  p
        ## Return a matrix that is the inverse of 'x'
}
