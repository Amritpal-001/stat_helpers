#' Adjust and filter p-values for multiple comparisons.
#'
#' Adjusts a numeric vector of p-values using the specified method and filters by alpha.
#'
#' @param p_values Numeric vector of p-values.
#' @param method Character, adjustment method (default "holm").
#' @param alpha Numeric, significance threshold (default 0.05).
#' @return Numeric vector of adjusted p-values, with non-significant values set to NA.
#' @examples
#' pvals <- c(0.01, 0.04, 0.2, 0.03)
#' adjust_and_filter_p(pvals)
#' adjust_and_filter_p(pvals, method = "bonferroni", alpha = 0.01)
#' @export
adjust_and_filter_p <- function(p_values, method = "holm", alpha = 0.05) {
  if (!is.numeric(p_values)) stop("p_values must be numeric.")
  adj_p <- p.adjust(p_values, method = method)
  adj_p[adj_p > alpha] <- NA
  return(adj_p)
}
