#' Setup Project File Structure
#'
#' This function is used to standardize the file structure within an R Project.
#'
#' @description Setup project file structure.
#'
#'
#' @export

setup_project <- function() {
  # create project README.Rmd
  fs::file_create(here::here("README.Rmd"))

  # create R folder for R scripts/functions
  fs::dir_create(here::here("R"))
  fs::file_create(here::here("R", "functions.R"))

  # create data-raw and data folders
  fs::dir_create(here::here("data-raw"))
  fs::file_create(here::here("data-raw", "README.md"))

  fs::dir_create(here::here("data"))
  fs::file_create(here::here("data", "README.md"))


  # create doc folder for Rmd/qmd
  fs::dir_create(here::here("doc"))

}
