#' Knit html to outputs subfolder
#'
#' This function allows you to make your output html file go to an outputs subfolder when you click the `knit` button or use `Ctrl + Shift + K`.
#' You have to add this function to your YAML header after the `knit:` option. It creates and html file.
#'
#' @description Knit to outputs subfolder
#'
#' @param input This is the file you want to knit. This is just left blank
#'
#' @examples
#'
#' knit: crsp::knit_html_to_outputs
#'
#' @export


knit_html_to_outputs <- function(input,  ...){

  rmarkdown::render(
    input,
    output_dir = here::here("outputs"),
    output_format = c("html_document"),
    envir = globalenv()
  )
}

