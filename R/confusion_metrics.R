#' Compute accuracy, sensitivity, and specificity.
#'
#' Computes confusion matrix metrics for binary classification.
#'
#' @param truth Binary vector of true labels (0/1 or logical).
#' @param pred Binary vector of predicted labels (0/1 or logical).
#' @return List with accuracy, sensitivity, and specificity.
#' @examples
#' confusion_metrics(c(1,0,1,0), c(1,1,1,0))
#' confusion_metrics(c(TRUE,FALSE,TRUE), c(TRUE,TRUE,FALSE))
#' @export
confusion_metrics <- function(truth, pred) {
  if (length(truth) != length(pred)) stop("truth and pred must be the same length.")
  if (!all(truth %in% c(0, 1, TRUE, FALSE), na.rm = TRUE) ||
      !all(pred %in% c(0, 1, TRUE, FALSE), na.rm = TRUE)) {
    stop("truth and pred must be binary (0/1 or logical).")
  }
  # Convert to logical for consistency
  t <- as.logical(truth)
  p <- as.logical(pred)
  acc <- mean(t == p, na.rm = TRUE)
  sens <- sum(t & p, na.rm = TRUE) / sum(t, na.rm = TRUE)
  spec <- sum(!t & !p, na.rm = TRUE) / sum(!t, na.rm = TRUE)
  return(list(accuracy = acc, sensitivity = sens, specificity = spec))
}
