## makeCacheMatrix is a function that returns a list of functions
## 

## It helps store a matrix and a cached value of the inverse of the matrix.
##Instructions are as below
## * setMatrix set the value of a matrix
## * getMatrix get the value of a matrix
## * cacheInverse get the cached value
## * getInverse get the cahced value

# makeCacheMatrix function
makeCacheMatrix <- function(x = matrix()) {

        # holds the cached value or NULL if nothing is cahced
        # initially nothing is cached so seting it to NULL

        cache <- NULL

        # store a matrix
        setMatrix <- function(newValue) {
        x <<- newValue
        # since the matrix is assigned a new value, flush the cahce
        cache <<- NULL

}

        #returns the stored matrix
        getMatriz <- function() {
                x
                }
                
        #get the cached value
        getInverse <- function() {
                cache
                }
                
        #return a list.Each named element of the list is a function
         list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


# cacheSolve calculates the inverse of a special matrix created with makeCacheMatrix

cacheSolve <- function(x, ...) {
        inverse <- y$getInverse()
        # if a cached value exists return it
        if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
        }
        
        #otherwise get the matrix, calucate the inverse and store it in
        # the cache
        data <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
        ## Return a matrix that is the inverse of 'x'
        
        inverse
}
