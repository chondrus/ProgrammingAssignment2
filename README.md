### Introduction

This is the second programming assignment for the Coursera R Programming Class offered by Roger D. Peng, PhD, Jeff Leek, PhD, Brian Caffo, PhD, etc.

### Using Assignment: Caching the Inverse of a Matrix

The following code shows you how to use the makeCacheMatrix and cacheSolve functions from the assignment.

Showing the defined functions:
<!-- -->
    > makeCacheMatrix()

Making a special matrix:
<!-- -->
    > m <- x<-matrix(rnorm(20), 2, 2)
    > a <- makeCacheMatrix(m)

Calculating the inverse, checking if it were cached correctly:
<!-- -->
    > m <- matrix(rnorm(20), 2, 2)
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

### Using the Class Example: Caching the Mean of a Vector

The following code shows you how to use the makeVector and cachemean functions from the class example. 
    
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
