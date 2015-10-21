cacheSolve<- function(x, ...) {
# take an the object of makeCacheMatri as x
# use the get_solve_matrix() to get the value of sm from the object of makeCacheMatri
# if sm is not equal to NULL which means the solved matrix had been make(global variable sm had been assigned to a specific value),return sm
# if it is not, solve the global matrix x and return its value
        sm <- x$get_solve_matrix()
        if(!is.null(sm)) {
                message("getting cached data")
                return(sm)
        }
        data <- x$get_matrix()
        sm <- solve(data, ...)
        x$set_solve_matrix(sm)
        sm
}
