#' Replace or remove unicode quotes
#'
#' @param x string
#' @param replace_quote what to replace the quote with
#'
#' @return
#' @export
#'
#' @examples
#' str_replace_quote('there is a ‘thing’ here')
#' str_remove_quote("‘thing’")
str_replace_quote <- function(string, replace_quote = '\\"'){
  stringr::str_replace_all(string = string,
                           pattern = "‘|’",
                           replacement = replace_quote)
}
str_remove_quote <- function(string, remove_quote = '"'){
  stringr::str_remove_all(string = string,
                          pattern = "‘|’")
}
