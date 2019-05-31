#' @exportes
#' @examples
#' # add all used packages into a package imports
#' \dontrun{
#' find_unique_requirements(path = ".",
#'   recursive = TRUE,
#'   regexp = "*.Rmd$") %>%
#'   purrr::map(usethis::use_package)
#'   }
find_unique_requirements <- function(path,
                                     recurse,
                                     regexp){
  fs::dir_ls(path = path,
             recurse = recurse,
             regexp = regexp) %>%
    purrr::map(requirements::req_file) %>%
    purrr::flatten_chr() %>%
    unique()
}
