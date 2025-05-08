#' Calculate classification accuracy by group.
#'
#' Computes the accuracy of binary predictions within each group.
#'
#' @param truth Binary vector of true labels (0/1 or logical).
#' @param pred Binary vector of predicted labels (0/1 or logical).
#' @param group Vector of group labels (factor, character, or numeric).
#' @return Named numeric vector of group-wise accuracy.
#' @examples
#' fair_accuracy(c(1,0,1,0), c(1,1,1,0), c("A","A","B","B"))
#' fair_accuracy(c(TRUE,FALSE,TRUE), c(TRUE,TRUE,FALSE), c("x","y","x"))
#' @export
fair_accuracy <- function(truth, pred, group) {
  if (length(truth) != length(pred) || length(truth) != length(group)) {
    stop("All inputs must be of the same length.")
  }
  if (!all(truth %in% c(0, 1, TRUE, FALSE), na.rm = TRUE) ||
      !all(pred %in% c(0, 1, TRUE, FALSE), na.rm = TRUE)) {
    stop("truth and pred must be binary (0/1 or logical).")
  }
  split_idx <- split(seq_along(group), group)
  acc <- sapply(split_idx, function(idx) {
    mean(truth[idx] == pred[idx], na.rm = TRUE)
  })
  return(acc)
}
