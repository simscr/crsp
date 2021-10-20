#' Import a File and Clean Names
#'
#' This function combines the import function from the rio package and the clean_names
#' function from the janitor package. I got tired of using those two functions in
#' succession for every file.
#'
#' @description Import file and clean names simultaneously
#' @param file The file to be imported. Can be any file type supported by rio::import.
#' @param which Which tab from an multi-tab Excel file.
#' @return A data frame with clean names
#' @examples
#' library(datasets)
#'
#' #' create CSV to import
#' rio::export(USArrests, "USArrests.csv")
#'
#' #' import CSV and clean names
#' cs_import("USArrests.csv")
#'
#' @export

cs_import <- function(file, which = 1){
  df <- rio::import(file, which = which) %>%
    janitor::clean_names()

  return(df)
}
