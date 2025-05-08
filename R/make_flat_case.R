#' Convert variable names to flat lowercase with no separators.
#'
#' Converts a character vector of variable names to lowercase and removes all non-alphanumeric characters.
#'
#' @param var_names Character vector of variable names.
#' @return Cleaned character vector.
#' @examples
#' make_flat_case(c("My_Var-Name", "Another.Name", "thirdName"))
#' @export
make_flat_case <- function(var_names) {
  if (!is.character(var_names)) stop("Input must be a character vector.")
  cleaned <- tolower(gsub("[^a-zA-Z0-9]", "", var_names))
  return(cleaned)
}
