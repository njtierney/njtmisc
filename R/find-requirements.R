#' @exportes
#' @examples
#' \dontrun{
#'
#' # find all unique requirements inside .Rmd files
#' my_req <- find_unique_requirements(path = ".",
#'                                    recursive = TRUE,
#'                                    regexp = "*.Rmd$")
#'
#' my_req
#'
#' # now add these to your DESCRIPTION
#' library(purrr)
#' library(usethis)
#' map(my_req, use_package)
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

