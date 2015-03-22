## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    r <- NULL
    set <- function(y) {
        x <<- y
        r <<- NULL
    }
    get <- function() x
    setRev <- function(rev) r <<- rev
    getRev <- function() r
    list (set = set, get = get,
          setRev = setRev,
          getRev = getRev)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    r <- x$getRev()
    if (!is.null(r)) {
        message("getting inverse of the matrix")
        return (r)
    }
    m <- x$get()
    r <- solve(m)
    x$setRev(r)
    r
}
