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

#' Convert numbers to alphabet
#'
#' @param x characters from roman alphabet (A-Z or a-z)
#' @param upper logical - do you want uppercase? Default is TRUE
#'
#' @return
#'
#' @examples
#' num_to_alpha(c(1,1,1))
#' num_to_alpha(c(1,1,1), upper = FALSE)
#' num_to_alpha(1:26)
#' num_to_alpha(sample(1:26))
#' num_to_alpha(sample(1:26), upper = FALSE)
#' @export
num_to_alpha <- function(x, upper = TRUE){

  if (upper) {
    out <- as.character(LETTERS[x])
  }

  if (!upper) {
    out <- as.character(letters[x])
  }

    out

}
