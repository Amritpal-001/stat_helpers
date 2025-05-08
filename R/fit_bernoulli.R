#' Fit a Bernoulli model (estimate success probability).
#'
#' Estimates the success probability using maximum likelihood estimation (MLE).
#'
#' @param x Logical or binary numeric vector.
#' @return List with estimated probability (`p_hat`).
#' @examples
#' fit_bernoulli(c(TRUE, FALSE, TRUE, TRUE))
#' fit_bernoulli(c(1, 0, 1, 1))
#' @export
fit_bernoulli <- function(x) {
  if (is.logical(x)) {
    vals <- x
  } else if (is.numeric(x) && all(x %in% c(0, 1, NA))) {
    vals <- as.logical(x)
  } else {
    stop("Input must be a logical or binary numeric vector.")
  }
  vals <- vals[!is.na(vals)]
  p_hat <- mean(vals)
  return(list(p_hat = p_hat))
}
