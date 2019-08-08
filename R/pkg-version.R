#' Return package version
#'
#' @param x a bare package name
#'
#' @return character string of the package name
#' @export
#'
#' @importFrom  utils packageVersion
#' @examples
#' pkgv(ggplot2)
pkgv <- function(x){
  rlang::enquo(x) %>%
  rlang::as_name() %>%
  packageVersion()
}
