#' Check for Whole (Integer) Numbers
#'
#' Checks whether the submitted vector of values is a whole (integer) number.
#' @param x A \code{numeric} value to check to see if it is an integer.
#' @return A \code{boolean} value indicating whether the value is an integer or not.
#' @export
#' @author JJB
#' @details
#' The \code{\link{is_whole}} function provides a means to test whether
#' the \code{\link{numeric}} or \code{\link{integer}} is a part of the whole
#' number span (integers). For example, 1 and 2 would be considered integers
#' whereas 3.6 and 0.31 would be considered \code{\link{numeric}}s. The behavior
#' of this function differs from \code{\link{is.integer}} as it is \emph{not}
#' performing a check on the \code{\link[storage type]{typeof}} of the vector
#' but instead on the actual vector contents.
#' @examples
#' is_whole(2.3)
#' is_whole(4)
#' is_whole(c(1,2,3))
#' is_whole(c(.4,.5,.6))
#' is_whole(c(7,.8,9))
is_whole = function(x) is.numeric(x) & floor(x) == x
