### Introduction

This is the second programming assignment for
    - R Programming

### Using the Example: Caching the Mean of a Vector

The following code shows you how to use the makeVector and cachemean example functions from class.

<!-- -->
    
    # this will show the defined functions
    > makeVector()

    # making a special vector
    > v <- c(1, 2, 3, 12)
    > a <- makeVector(v)

    # calculating the mean, checking if it were cached correctly
    > cachemean(a)
        [1] 4.5
    > cachemean(a)
        getting cached data
        [1] 4.5


### Using Assignment: Caching the Inverse of a Matrix

The following code shows you how to use the makeCacheMatrix and cacheSolve assignment.

<!-- -->

    # this will show the defined functions
    > makeCacheMatrix()

    # making a special matrix
    > m <- x<-matrix(rnorm(20), 2, 2)
    > a <- makeCacheMatrix(m)

    # calculating the mean, checking if it were cached correctly
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
