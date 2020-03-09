#' Zip files for ETC1010
#'
#' This requires that exercises are in a folder called "exercises", and are
#'   named "ida-exercise-1a" - for, say, week 1, part A.
#'
#' @param week alphanumeric like "1a", "1b", "2a", etc
#' @param files vector of other files to include in the zipped file
#'
#' @return nothing - it saves a zip file to a given exercise file path
#' @export
#'
#' @examples
#' \dontrun{
#' zip
#' }
zip_ida_exercise <- function(week, files){
  week_string <- glue::glue("exercises/{week}/ida-exercise-{week}")
  zip_string <- glue::glue_collapse(week_string, ".zip")
  file_string <- glue::glue("exercises/{week}/{files}")
  proj_string <- glue::glue_collapse(week_string, ".Rproj")

  zip::zipr(zipfile = zip_string,
            files = c(file_string,
                      proj_string))
}
