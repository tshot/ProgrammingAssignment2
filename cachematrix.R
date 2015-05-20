

# Program to invert square Matrix
# uses 4 functions
#   set -> set thr mnatrix nab ubsets the earlier inversion if any
#   get >- get the matrix input to the system
#   setInversion -> set inverted matrix to parent variable
#   getInversion -> get the inverted matrix
#
# I havre placed the arumnts x with mre meaning ful names

# based on the idea of Keith Derrick
# url : https://class.coursera.org/rprog-014/forum/thread?thread_id=311#comment-1503
#
# However, what is not clear to me is if i substitue <- with = in the functions 
# e.g. set <- function, then i get following error
# Error in makeCacheMatrix(n) : attempt to apply non-function
# Can anybody help

makeCacheMatrix <- function(mt = matrix(1:9, 3:3))
{
  # using variable wit double dot just to fidtinguidh tajt tis is not a normal variable
  ..invMatr <- NULL
  
  mtrixInverted <- list(
    set = function(newMatrix)
    {
      # take new matrix input
      # and unset the inversion for recaclulation
      ..invMatr <<- NULL
      ..mt <<- newMatrix
    },
    
    get = function()
    {
      # return the matrix used for inversion
      ..mt
    },
    
    setInversion = function(inversion)
    {
      ..invMatr <<- inversion
    },
    
    getInversion = function()
    {
      # return the invxerted Matrix even if null
      
      ..invMatr
    }
    )
  
   # return the list. This list simulates OOPS function and is 
  # based on the ide of 
    mtrixInverted$set(mt)
    invisible(mtrixInverted)
}


cacheSolve <- function(mtInv, ...)
{
  inversion <- mtInv$getInversion()
  
  if (is.null(inversion))
  {
    
    mt <- mtInv$get()
    inversion <- solve(mt)
    mtInv$setInversion(inversion)
  }
  else
  {
    print("Getting Inverted Matrix")
 
    
  }
  
  inversion
  
}
