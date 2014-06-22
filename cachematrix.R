###############################################################################
#
# R Programming Class
# Programming Assignment #2
# 2014-6-22
#
# this file contains both the example functions as well as the
# assigned homework ones
# 
# Useful note:
# 	<<- operator
#		assigns a value to an object in an environment
# 		DIFFERENT from the current environment. 
#
###############################################################################

#
# function: makeCacheMatrix
#
# creates a special "matrix", 
#	which is really a list containing a function to
# 		- set a matrix
# 		- get a matrix
# 		- set the inverse of a matrix
# 		- get the inverse of a mean
#
makeCacheMatrix <- function(x = matrix()) {
	
	# initialize the saved mean to null
	saved_inverse <- NULL

	# sets x to passed in y
	set <- function(y) {
		x <<- y
		saved_inverse <<- NULL
	}

	# returns x
	get <- function() x

	# sets saved_inverse to the passed in inverse
	setinverse <- function(inverse) saved_inverse <<- inverse

	# returns saved_inverse
	getinverse <- function() saved_inverse

	# all of the above function
	list(
		set = set,
		get = get,
		setinverse = setmean,
		getinverse = getmean
	)
}

#
# function: cacheSolve
#
# takes:
#	- special "matrix" (created with the above makeCacheMatrix function).
#
# returns:
# 	- inverse of that matrix
#
# does:
#	- checks to see if the mean has already been calculated
#		- (checks if the matrix is the same?)
#			- if so, returns that
#
#	- otherwise: 
#		- calculates the inverse
#		- sets the value of the inverse in the cache via the setinverse function
# 
cacheSolve <- function(x, ...) {

	# check for inverse
	inverse <- x$getinverse()

	# if it exists, print a message and then return it
	if(!is.null(inverse)) {
		message("getting cached data")
		return(inverse)
	}

	# collect the data, calculate the mean of it
	data <- x$get()
	inverse <- solve(data, ...)

	# save that inverse and return it
	x$setinverse(inverse)
	inverse
}

########################################
#
# Class Examples
#
########################################

#
# function: makeVector
#
# example from class
#
# creates a special "vector", 
#	which is really a list containing a function to
# 		- set the value of the vector
# 		- get the value of the vector
# 		- set the value of the mean
# 		- get the value of the mean
# 
makeVector <- function(x = numeric()) {
	
	# initialize the saved mean to null
	saved_mean <- NULL

	# set function; sets x to passed in y
	set <- function(y) {
		x <<- y
		saved_mean <<- NULL
	}

	# get funcion; returns x
	get <- function() x

	# setmean function; sets saved_mean to the passed in mean
	setmean <- function(mean) saved_mean <<- mean

	# get mean; returns saved_mean
	getmean <- function() saved_mean

	# all of the above function
	list(
		set = set,
		get = get,
		setmean = setmean,
		getmean = getmean
	)
}

#
# function: cachemean
#
# example from class
#
# takes:
#	- special "vector" (created with the above makeVector function).
#
# returns:
# 	- mean of argument
#
# does:
#	- checks to see if the mean has already been calculated
#		- if so, returns that
#	- calculates the mean of the data
#	- sets the value of the mean in the cache via the setmean function
# 
cachemean <- function(x, ...) {

	# check for mean (has _ to avoid confusion with the function "mean")
	mean_ <- x$getmean()

	# if exists, print a message and then return the found mean
	if(!is.null(mean_)) {
		message("getting cached data")
		return(mean_)
	}

	# collect the data, calculate the mean of it
	data <- x$get()
	mean_ <- mean(data, ...)

	# save that mean and return it
	x$setmean(mean_)
	mean_
}
