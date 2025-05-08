#' Print each column name on a new line.
#'
#' Prints each column name of a data frame or tibble on a new line.
#'
#' @param df Data frame or tibble.
#' @return Invisibly returns the column names.
#' @examples
#' print_colnames(mtcars)
#' @export
print_colnames <- function(df) {
  if (!is.data.frame(df)) stop("Input must be a data frame or tibble.")
  nms <- colnames(df)
  for (nm in nms) cat(nm, "\n")
  invisible(nms)
}
