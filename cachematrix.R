## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      i<-x$getInverse()
      if(!is.null(i)){
            message("getting cached data")
            return(i)
      }
      i<-solve(matrix, ...)
      i
      
}
