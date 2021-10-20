#' HOMA-IR
#'
#' This function calculates HOMA-IRfrom Insulin and Glucose.
#'
#' @description Calulate HOMA-IR from Insulin and Glucose
#'
#' @param insulin insulin value
#' @param insulin_unit insulin unit (pg/ml or mU/l)
#' @param glucose glucose value
#'
#' @examples
#'
#' USArrests %>%
#`   ggplot(aes(Rape, Murder)) +
#`   geom_smcor()
#'
#' USArrests %>%
#`   ggplot(aes(Rape, Murder)) +
#`   geom_smcor(pt_fill = "red", pt_color = "yellow", pt_size = 2, ln_color = "orange")
#'
#' @export

cs_homa <- function(insulin, insulin_unit, glucose) {
  if (str_detect(insulin_unit, "pg")) {

  }
}


# insulin pg * 0.023
# homa = (glu mg * ins mU)/405
