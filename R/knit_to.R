#' Knit to custom location
#'
#' This function allows you to specify where you want your output files to end up when you click the `knit` button or use `Alt + Ctrl + k`.
#' You have to add this function to your YAML header after the `knit:` option.
#'
#' @description Knit to specific location
#'
#' @param input This is the file you want to knit.
#' @param location This is where you want to knit to.
#' @param outputs This is the type of outputs you want.
#'
#' @examples
#'
#' knit(location = here::here("outputs"), outputs = c("html_document", "md_document"))
#'
#' @export


knit_to <- function(input, location, outputs, ...){

  rmarkdown::render(
    input = input,
    output_dir = location,
    output_format = outputs
  )

}

