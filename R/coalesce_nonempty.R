#' Return the first non-missing, non-empty string.
#'
#' Returns the first element of a character vector that is not NA and not an empty string.
#'
#' @param x Character vector.
#' @return A single character value or NA if none found.
#' @examples
#' coalesce_nonempty(c(NA, "", "foo", "bar"))
#' coalesce_nonempty(c(NA, ""))
#' @export
coalesce_nonempty <- function(x) {
  if (!is.character(x)) stop("Input must be a character vector.")
  idx <- which(!is.na(x) & nzchar(x))
  if (length(idx) == 0) return(NA_character_)
  return(x[idx[1]])
}
