#' Check whether a vector is binary.
#'
#' Checks if a vector contains only two unique values (excluding NA).
#'
#' @param x Any vector.
#' @param strict Logical, if TRUE only allows 0/1 or TRUE/FALSE (default FALSE).
#' @return Logical TRUE if binary, FALSE otherwise.
#' @examples
#' is_binary(c(0, 1, 1, 0))
#' is_binary(c("a", "b", "a"))
#' is_binary(c(0, 1, 2))
#' is_binary(c(TRUE, FALSE, TRUE))
#' is_binary(c(0, 1, NA))
#' is_binary(c(0, 2), strict = TRUE)
#' @export
is_binary <- function(x, strict = FALSE) {
  vals <- unique(x[!is.na(x)])
  if (length(vals) != 2) return(FALSE)
  if (strict) {
    return(all(vals %in% c(0, 1)) || all(vals %in% c(TRUE, FALSE)))
  }
  return(TRUE)
}
