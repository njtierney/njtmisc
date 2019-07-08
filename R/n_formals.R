#' Length of the number of formal arguments in a function, x
#'
#' @param x a function
#'
#' @return integer, number of arguments of a function
#' @export
#'
#' @examples
#' n_formals(mean)
#' n_formals(zip)
#' n_formals(read.csv)
n_formals <- function(x){
  length(formals(x))
}
