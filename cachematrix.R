## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix that does the following:
##sets the matrix
##gets the matrix
##sets the inverse of the matrix
##gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inv) m <<-inv
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## This function calculates the inverse and caches it

cacheSolve <- function(x, ...) {
##Return the Matrix that is the invere of x
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}
