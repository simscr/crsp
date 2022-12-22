#' Convert Extreme Outliers to NA
#'
#'This function uses the boxplot method to convert extreme outliers to N. Extreme outliers
#'are values above Q3 + 3xIQR or below Q1 - 3xIQR.
#'
#'
#' @description Convert extreme outliers to NA
#' @param col_val The column or values to be checked
#' @return Values with extreme outliers converted to NA_real_
#' @examples
#'
#' # Vector
#' col_val <- c(1, 2, 3, 5, 19)
#'
#' extreme_to_na(col_val)
#'
#' # Data frame
#'
#' library(dplyr)
#' dat <- tibble(
#'   a = c(1, 2, 3, 5, 19)
#'   )
#'
#' dat %>%
#'   mutate(new_a = extreme_to_na(a))
#'
#' @export

extreme_to_na <- function(col_val) {

  iqr <- IQR(col_val, na.rm = TRUE)
  q1 <- quantile(col_val, 0.25, na.rm = TRUE)
  q3 <- quantile(col_val, 0.75, na.rm = TRUE)
  lower_limit <- q1 - (3 * iqr)
  upper_limit <- q3 + (3 * iqr)

  col_val[col_val < lower_limit] <- NA_real_
  col_val[col_val > upper_limit] <- NA_real_

  col_val

}

