## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    if (det(x) == 0) {
        message("please input object which is a square invertible matrix,")
        message("like matrix(c(-1,-2,1,1),2,2")
    
    }
    #check if the matrix is a square invertible matrix
    
    m <- NULL
    
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    #this function just for an additional manual input
    
    get <- function() {
        x
    }
    # load the matrix for calculating
    
    setsolve <- function(sol) {
        m <<- sol
    }
    # save the solve() result for the same requarement in the future 
    getsolve <- function() {
        m
    }
    #call the solve() result from last time
    list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getsolve()
    # try to get the result if we already do the same request last time.
    if(!is.null(m)) {
        message("getting cached data")
        return(m)    
    }
    # if there is the same request, return the result
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
    #if not, caclute the matrix, and save the result.
    
        ## Return a matrix that is the inverse of 'x'
}
