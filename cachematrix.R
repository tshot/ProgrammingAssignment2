## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
	
	set <- function(y)
	{
		i <<- y
		m <<- NULL
	}
	
	get < function() x
	
	setinverse <- function(inverse) m <<- inverse
	getinverse <- function() m
	
	list(get = get, set = set, getinverse = getinverse, setinverse = setinverse) 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
	
	if (!is.null(m))
	{
		message("getting cache data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m
}
