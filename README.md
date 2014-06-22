### Introduction

This is the second programming assignment for
    - R Programming

### Using the Example: Caching the Mean of a Vector

The following code shows you how to use the makeVector and cachemean example functions from class.
    
Showing the defined functions:

<!-- -->
    > makeVector()

Making a special vector:
<!-- -->
    > v <- c(1, 2, 3, 12)
    > a <- makeVector(v)

Calculating the mean, checking if it were cached correctly:
<!-- -->
    > cachemean(a)
        [1] 4.5
    > cachemean(a)
        getting cached data
        [1] 4.5


### Using Assignment: Caching the Inverse of a Matrix

The following code shows you how to use the makeCacheMatrix and cacheSolve assignment.

Showing the defined functions:
<!-- -->
    > makeCacheMatrix()

Making a special matrix
<!-- -->
    > m <- x<-matrix(rnorm(20), 2, 2)
    > a <- makeCacheMatrix(m)

Calculating the inverse, checking if it were cached correctly
<!-- -->
    > m <- x<-matrix(rnorm(20), 2, 2)
    > a <- makeCacheMatrix(m)
    > cacheSolve(a)
                  [,1]       [,2]
        [1,] 0.6154113 -0.6164444
        [2,] 0.6050042  4.1066176
    > cacheSolve(a)
        getting cached data
                  [,1]       [,2]
        [1,] 0.6154113 -0.6164444
        [2,] 0.6050042  4.1066176
