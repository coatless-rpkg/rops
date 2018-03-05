#' Check for Whole (Integer) Numbers
#'
#' Checks whether the submitted vector of values is a whole (integer) number.
#'
#' @param x A \code{numeric} value to check to see if it is an integer.
#'
#' @return A \code{boolean} value indicating whether the value is an integer or not.
#'
#' @author JJB
#' @details
#' The `is_whole` function provides a means to test whether
#' the [base::numeric()] or [base::integer()] is a part of the whole
#' number span (integers). For example, `1` and `2` would be considered integers
#' whereas `3.6` and `0.31` would be considered [base::numeric()]. The behavior
#' of this function differs from [base::is.integer()] as it is _not_
#' performing a check on the [storage type][base::typeof()]] of the vector
#' but instead on the actual vector contents.
#' @examples
#' is_whole(2.3)
#' is_whole(4)
#' is_whole(c(1,2,3))
#' is_whole(c(.4,.5,.6))
#' is_whole(c(7,.8,9))
#' @export
is_whole = function(x) is.numeric(x) & floor(x) == x
