#' Knit to outputs subfolder
#'
#' This function allows you to make your output files go to an outputs subfolder when you click the `knit` button or use `Ctrl + Shift + K`.
#' You have to add this function to your YAML header after the `knit:` option. It creates and html file and an .md file.
#'
#' @description Knit to outputs subfolder
#'
#' @param input This is the file you want to knit. This is just left blank
#'
#' @examples
#'
#' knit: crsp::knit_to_outputs_folder
#'
#' @export


knit_to_outputs_folder <- function(input,  ...){

  rmarkdown::render(
    input,
    output_dir = here::here("outputs"),
    output_format = c("html_document", "md_document"),
    envir = globalenv()
  )
}

