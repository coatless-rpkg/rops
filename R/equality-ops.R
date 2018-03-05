#' Exact Object Equality Check
#'
#' Short-hand declarations for checking whether x is equivalent to y
#'
#' @param x,y two data structures
#'
#' @author JJB
#' @details
#' [base::identical()] function tests for an exact match meaning that
#' the variable's storage types match, the overall environment the variable
#' is stored in is the same, and, most importantly, there is no tolerance
#' for small numerical differences.
#'
#' When in doubt, consult [base::all.equal()] to perform near equality tests
#' using a tolerance operation (e.g does a number fall within a certain range).
#' However, the use of [base::all.equal()] must be enclosed within
#' [base::isTRUE()] as the function is setup to return _differences_.
#'
#' @seealso [base::identical()]
#'
#' @examples
#' # Generate some data
#' set.seed(991)
#' x = y = rnorm(100)
#'
#' # Returns TRUE as the objects are exactly the same
#' x %==% y
#'
#' # Returns FALSE as the objects do not differ.
#' x %!=% y
#'
#' # Change data
#' x2 = x+1
#'
#' # Returns FALSE as the data has changed.
#' x2 %==% y
#'
#' # Returns TRUE since the data is different.
#' x2 %!=% y
#' @rdname obj_check
#' @export
`%==%` = function(x, y) identical(x, y)

#' @rdname obj_check
#' @export
`%!=%` = function(x, y) !identical(x, y)
