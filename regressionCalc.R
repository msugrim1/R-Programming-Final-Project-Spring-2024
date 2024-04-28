#' @title regressionCalc
#' @description Performs linear regression  and SVM of
#' estimates and standard error
#' @name mappingCalc
#' @param x Estimates
#' @param y Standard Error
#' @param data Data being used


LM <- function(data, x, y)
{
  lm(x ~ y, data)
}

