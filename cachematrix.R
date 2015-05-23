## Created two functions:
## - makeCacheMatrix which returns a matrix that can invert itself and store it's inverse
## - cacheSolve which tests to see if the inverse of the matrix is cached returning the cached matrix else inverting the matrix and caching the value


## returns a matrix that can invert itself and store it's inverse
makeCacheMatrix <- function(x = matrix()) {
      #initialize and set m to null
      i <- NULL
      
      #set the value of x to the to the new value y,reset i to null 
      set <- function(y) {
            x <<- y
            i <<- NULL
                        }
      #get the matrix
      get <- function() x
      
      #get the inverse of the matrix
      getInverse <-function() (i)
      #set the Invserve
      setInverse <-function(solve)i<<- solve
    
      #return operations list
      list(
            set = set 
            ,get = get
            ,getInverse = getInverse
            ,setInverse = setInverse
           )   
}

##tests to see if the inverse of the matrix is cached returning the cached matrix else inverting the matrix and caching the value
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      i<-x$getInverse()
      if(!is.null(i)){
            message("getting cached data")
            return(i)
      }
      matrix<-x$get()
      i<-solve(matrix, ...)
      x$setInverse(i)
      i
      
}
