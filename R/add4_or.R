#' Computes the add-4 odds ratio.
#'
#' Computes the add-4 odds ratio for two logical vectors.
#'
#' @param exposure Logical vector (TRUE/FALSE), exposure variable.
#' @param outcome Logical vector (TRUE/FALSE), outcome variable.
#' @return Numeric odds ratio value.
#' @examples
#' exposure <- c(TRUE, FALSE, TRUE, FALSE)
#' outcome <- c(TRUE, TRUE, FALSE, FALSE)
#' add4_or(exposure, outcome)
#' @export
add4_or <- function(exposure, outcome) {
  if (length(exposure) != length(outcome)) stop("Vectors must be of equal length.")
  if (!is.logical(exposure) || !is.logical(outcome)) stop("Both inputs must be logical vectors.")
  tab <- table(exposure, outcome)
  a <- tab["TRUE", "TRUE"]
  b <- tab["TRUE", "FALSE"]
  c <- tab["FALSE", "TRUE"]
  d <- tab["FALSE", "FALSE"]
  # Add 1 to each cell (add-4 method)
  or <- ((a + 1) * (d + 1)) / ((b + 1) * (c + 1))
  return(as.numeric(or))
}
