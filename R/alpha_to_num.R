#' Convert alphabet to numbers 1-26
#'
#' @param x character
#'
#' @return number from 1-26 (a = 1, b = 2, etc.)
#' @export
#'
#' @examples
#' abc <- c("a", "b", "c")
#' fed <- c("f", "e", "d")
#' aaa <- c("a", "a", "a")
#'
#' alpha_to_num(LETTERS)
#' alpha_to_num(letters)
#' alpha_to_num(abc)
#' alpha_to_num(fed)
#' alpha_to_num(aaa)
alpha_to_num <- function(x){
  as.numeric(alpha_num[x])
}
