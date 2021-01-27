## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ##this function creates a matrix that cache's its inverse
        minverse <- NULL ## this creates the minverse variable which we will 
        ##store the inverse of our matrix in
        set <- function(y) {
                x <<- y ##takes the matrix input (y)  and stores it 
                ## into the matrix x found in the parent environment  
                minverse <<- NULL
        }
        get <- function(){
                x 
                        ##returns the value of the matrix 
                }
        setinverse <- function(inverse){
                        ##stores the value of the matrix's inverse in the cache
                minverse <<- inverse 
                } 
        getinverse <- function(){ 
                minverse 
                        ##retrieves the inverse stored in the cache 
        }
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse
             ##returns list of the methods used to store this matrix's inverse
             )
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        minverse <- x$getinverse () 
                ##stores the inverse of the matrix within minverse
        if(!is.null(minverse)) {
                message("Getting Cached Data")
                return(minverse)
        }
        ##prints out the inverse of the matrix 
        ##this will only happen if we already had an inverse in x, and thus, we
        ##do not need to have R calculate the inverse 
        else {
                ##solves for the inverse if minverse = NULL using the solve function 
                matrix() <- x$getinverse 
                minverse <- solve (matrix, ...)
                x$setinverse(minverse) 
                ##sets this calculated inverse within minverse
                minverse
                ##prints out the inverse 
        }

}