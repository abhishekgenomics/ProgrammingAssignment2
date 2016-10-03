## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

+## ## This function creates a special "matrix" object that can cache its inverse.
+  m<-NULL # Initialise m
+  set<-function(y){
+    x<<-y
+    m<<-NULL
+  }
+  get<-function() x
+  setmatrix<-function(solve) m<<- solve
+  getmatrix<-function() m
+  list(set=set, get=get,
+       setmatrix=setmatrix,
+       getmatrix=getmatrix)
 }		 



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

+  m<-x$getmatrix()
+  if(!is.null(m)){
+  message("getting cached data")
+  return(m)
+  }
+  matrix<-x$get()
+  m<-solve(matrix, ...)
+  x$setmatrix(m)
+  m
 }		 
