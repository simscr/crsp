#' Point + Smooth + Cor
#'
#' This function combines geom_point, geom_smooth, and stat_cor for ggplot.
#'
#' @description Scatterplot with trendline and correlation
#'
#' @param pt_fill fill for geom_jitter (default = "#00A2CEFF")
#' @param pt_color color for geom_jitter
#' @param pt_size size of points (default = 3)
#' @param ln_color color for geom_smooth
#'
#' @examples
#'
#' USArrests %>%
#'   ggplot(aes(Rape, Murder)) +
#'   geom_smcor()
#'
#' USArrests %>%
#'   ggplot(aes(Rape, Murder)) +
#'   geom_smcor(pt_fill = "red", pt_color = "yellow", pt_size = 2, ln_color = "orange")
#'
#' @export

geom_smcor <- function(..., pt_fill = "#00A2CEFF", pt_color = "black", pt_size = 2, ln_color = "black") {
  list(ggplot2::geom_point(size = pt_size, shape = 21, fill = pt_fill, alpha = 0.5, color = pt_color),
       ggplot2::geom_smooth(method = "lm", se = F, color = ln_color),
       ggpubr::stat_cor())
}

