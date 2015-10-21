
makeCacheMatri<- function(x = matrix()) {

#sm is used to store the matrix that will be solved by x
#set_matrix(y) will pass global variable x the value of y and global variable sm the value of NULL.
	  sm <- NULL 	
        set_matrix <- function(y) {
                x <<- y
                sm <<- NULL
        }

#(object of makeCacheMatri)$get_matrix() returns lobal variable x
# set_solve_matrix(s) passes global variable sm the value of s
#get_solve_matrix returns lobal variable sm
        get_matrix <- function() x
        set_solve_matrix <- function(s) sm <<- s
        get_solve_matrix <- function() sm

#make the nested function can be called.	
        list(set_matrix = set_matrix,  get_matrix =  get_matrix,
             set_solve_matrix = set_solve_matrix,
             get_solve_matrix = get_solve_matrix)
} 

