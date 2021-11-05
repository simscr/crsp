#' Get Random Palette from {paletteer}
#'
#' This function pulls a random discrete palette from {paletteer} that has a minimum length. It returns the name of the palette and the hexcodes.
#'
#' @description Get Random Discrete Color Palette
#' @param n_colors The minimum number of colors in the palette.
#' @return A list of the package name and the colors
#' @examples
#'
#' rand_pal_d(n_colors = 4)
#'
#' @export


rand_pal_d <- function(n_colors = 3){

  available_pals <- paletteer::palettes_d_names %>%
    mutate(pal_length = as.numeric(length)) %>%
    filter(pal_length >= n_colors) %>%
    filter(pal_length < 50)

  n_pals <- nrow(available_pals)

  my_pal_no <- floor(runif(1, min = 0, max = n_pals))

  my_pal <- available_pals %>%
    dplyr::slice(my_pal_no)

  my_pal_name <- paste0(my_pal$package, "::", my_pal$palette)

  return(list(my_pal_name, paletteer::paletteer_d(my_pal_name)))
}

