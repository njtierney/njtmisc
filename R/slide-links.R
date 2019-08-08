slide_stub <- function(l_num){
  glue::glue("lectures/lecture{l_num}/lecture-{l_num}-slides")
}

slide_link <- function(ext, l_id){
  glue::glue("[{toupper(ext)}]({slide_stub(l_num = l_id)}.{ext})")
}

slide_link_html <- function(l_id){
  slide_link(ext = "html", l_id = l_id)
}

slide_link_rmd <- function(l_id){
  slide_link(ext = "Rmd", l_id = l_id)
}

slide_link_pdf <- function(l_id){
  slide_link(ext = "pdf", l_id = l_id)
}


#' generate slide links for ETC10101
#'
#' @param l_id lecture id. Usually something like "1a" or "2a", etc.
#'
#' @return character vector
#' @export
#'
#' @examples
#' slide_links_all("2a")
slide_links_all <- function(l_id){
  glue::glue("{slide_link_html(l_id)}; \\
             {slide_link_pdf(l_id)}; \\
             {slide_link_rmd(l_id)}")
}
