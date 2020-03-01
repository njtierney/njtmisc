# a function to read in documents and replace offending updog.co links
# with the appropriate link.
# str_replace_updog
# str_replace_updog
#
# # example
# bad <- "https://njtierney.updog.co/img/tower-of-babel.gif"
#
# tools::file_ext(bad)
#
# image_base <- basename(bad)
# image_new <- glue::glue("https://imgs.njtierney.com/{image_base}")

which_updog <- function(path){
  file <- readLines(path)

  which_updog <- stringr::str_detect(file, "njtierney.updog.co")

  return(list(offenders = file[which_updog]))
}

str_replace_updog <- function(path){

  offending_lines <- which_updog(path)

  image_base <- purrr::map(offending_lines, base_name)

  image_ext <- tools::file_ext(image_base)

  if (image_ext == "gif"){
    image_new <- glue::glue("https://gifs.njtierney.com/{image_base}")
  }

  if (image_ext != "gif"){
    image_new <- glue::glue("https://imgs.njtierney.com/{image_base}")
  }

}
