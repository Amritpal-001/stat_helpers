#' Fit a Gaussian model (estimate mean and variance).
#'
#' Computes MLE estimates of mean and variance for a numeric vector.
#'
#' @param x Numeric vector.
#' @return List with mean (`mu_hat`) and variance (`sigma2_hat`).
#' @examples
#' fit_gaussian(c(1.2, 3.4, 2.2, 5.0))
#' @export
fit_gaussian <- function(x) {
  if (!is.numeric(x)) stop("Input must be a numeric vector.")
  x <- x[!is.na(x)]
  mu_hat <- mean(x)
  # MLE for variance: denominator is n (not n-1)
  sigma2_hat <- sum((x - mu_hat)^2) / length(x)
  return(list(mu_hat = mu_hat, sigma2_hat = sigma2_hat))
}
