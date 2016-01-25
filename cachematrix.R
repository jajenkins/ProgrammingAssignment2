## three sections to run below:
##    initialize a square matrix
##    create the list of functions
##    run the functions to perform requirement for the assignment
##      format to call each function precedes the function definition 

#initializes a square matrix for use with the functions
test <- matrix(rnorm(1:100), nrow=10,ncol=10)

## MakeCacheMatrix
## configures several functions into the list x.  Each function is used
## in the next defined function, cacheSolve
## call makeCacheMatrix to prepare the defined functions for use in CacheSolve
##  like this:  x <- makeCacheMatrix(0:5) 

#first function
makeCacheMatrix <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolv <- function(solve) m <<- solve
  getsolv <- function() m
  list(set = set, get = get,
       setsolv = setsolv,
       getsolv = getsolv)
}


## run the function definition below, 
##   then call the function:  cacheSolve(x)
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getsolv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(test)
  x$setsolv(m)
  m
  
}