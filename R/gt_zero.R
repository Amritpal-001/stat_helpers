#' Truncate values below zero.
#'
#' Sets negative values in a numeric vector to zero.
#'
#' @param x Numeric value or vector.
#' @return Numeric value or vector with negatives set to zero.
#' @examples
#' gt_zero(c(-2, 0, 3, -1))
#' gt_zero(-5)
#' @export
gt_zero <- function(x) {
  if (!is.numeric(x)) stop("Input must be numeric.")
  x[x < 0] <- 0
  return(x)
}
