#' Return the most frequent non-NA value.
#'
#' Returns the most frequent value in a vector, optionally excluding NAs.
#'
#' @param x Any vector.
#' @param na.rm Logical, whether to exclude NAs (default TRUE).
#' @return Most frequent value or NA if no non-NA values.
#' @examples
#' majority_label(c(1, 2, 2, 3, NA))
#' majority_label(c("a", "b", "a", NA), na.rm = FALSE)
#' @export
majority_label <- function(x, na.rm = TRUE) {
  if (na.rm) x <- x[!is.na(x)]
  if (length(x) == 0) return(NA)
  tbl <- table(x)
  modes <- names(tbl)[tbl == max(tbl)]
  # Return the first mode if multiple
  if (length(modes) == 0) return(NA)
  if (is.numeric(x)) return(as.numeric(modes[1]))
  return(modes[1])
}
