## cache the inverse of matrix

## make a list that contains four functions

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


## get the inverse of matrix x using cache

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
