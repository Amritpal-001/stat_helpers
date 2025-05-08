# stat_helpers

BMI 510 module
Author: Amritpal Singh


## Instruction to create module
devtools::create("D:/pipeline/code/HW/stathelpers")

devtools::document("D:/pipeline/code/HW/stathelpers")


## Functions

- `add4_or(exposure, outcome)`: Computes the add-4 odds ratio for two logical vectors.
- `adjust_and_filter_p(p_values, method = "holm", alpha = 0.05)`: Adjusts and filters p-values for multiple comparisons.
- `coalesce_nonempty(x)`: Returns the first non-missing, non-empty string from a character vector.
- `fit_bernoulli(x)`: Estimates the success probability for a binary/logical vector using MLE.
- `fit_gaussian(x)`: Computes MLE estimates of mean and variance for a numeric vector.
- `gt_zero(x)`: Truncates negative values in a numeric vector to zero.
- `make_flat_case(var_names)`: Converts variable names to flat lowercase with no separators.
- `print_colnames(df)`: Prints each column name of a data frame or tibble on a new line.
- `fair_accuracy(truth, pred, group)`: Calculates classification accuracy by group.
- `confusion_metrics(truth, pred)`: Computes accuracy, sensitivity, and specificity for binary classification.
- `is_binary(x, strict = FALSE)`: Checks whether a vector is binary.
- `majority_label(x, na.rm = TRUE)`: Returns the most frequent non-NA value in a vector.
