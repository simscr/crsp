#' Boxplot + Jitter + Mean
#'
#' This function combines geom_boxplot, geom_jitter, and stat_summary("mean") for ggplot.
#'
#' @description Boxplot with jitter and mean
#'
#' @param fill fill for geom_jitter (default = "#00A2CEFF")
#' @param color color for geom_jitter
#' @param size size of points (default = 3)
#'
#' @examples
#'
#' mtcars %>%
#' ggplot(aes(as.factor(cyl), mpg)) +
#' geom_bxjt()
#'
#' mtcars %>%
#' ggplot(aes(as.factor(cyl), mpg)) +
#' geom_bxjt(fill = "green", color = "white")
#'
#' @export

geom_bxjt <- function(..., fill = "#00A2CEFF", color = NA, size = 3) {
  list(ggplot2::geom_boxplot(outlier.shape = NA, width = 0.8),
       ggplot2::geom_jitter(width = 0.2, alpha = 0.5, shape = 21, fill = fill, size = 4),
       ggplot2::stat_summary(fun = mean, geom = "crossbar", width = 0.8, lty = 3, size = 0.5))
}

