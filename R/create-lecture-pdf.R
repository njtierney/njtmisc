#' Create a PDF of given lecture slides (for ETC1010)
#'
#' @param week alphanumeric (e.g., 1a)
#'
#' @return nothing - it creates a PDF of the slides
#' @export
create_lecture_pdf <- function(week){
  pagedown::chrome_print(input = glue::glue("slides/lecture_{week}.html"))
}
