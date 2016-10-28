#' Null Coalescing Operator
#'
#' Binary operator to simplify null expressions
#' @param x A value that is possible \code{NULL}
#' @param y A value that is not \code{NULL}
#' @return Returns the value of the left hand side (LHS) if it is not null, else
#' returns the value of the right hand side (RHS) that may be \code{NULL}.
#' @rdname null_coalesce
#' @details
#' The objective of the null coalescing operator is to simplify the expression:
#' \code{if(is.null(x)){ y } else { x }} so that it is readable inline.
#' @export
#' @seealso \code{\link{is.null}}
#' @examples
#' # Returns 3 as the LHS is _not_ NULL
#' 3 %??% 4
#'
#' # Returns 1 as the LHS is _not_ NULL
#' 1 %??% NULL
#'
#' # Returns 2 as the LHS is NULL
#' NULL %??% 2
#'
#' # Coalesce operator
#' NULL %??% NULL %??% 5
#'
#' # Coalesce operator
#' NULL %??% 7 %??% 8
#' @references
#' \url{https://en.wikipedia.org/wiki/Null_coalescing_operator}
`%??%` <- function(x, y) if(is.null(x)) y else x

#' @export
#' @rdname null_coalesce
ifnull <- function(x, y) ifelse(vapply(x, is.null, TRUE), y, x)

#' Exact Object Equality Check
#'
#' Short-hand declarations for checking whether x is equivalent to y
#' @param x,y two data structures
#' @rdname obj_check
#' @export
#' @seealso \code{\link{identical}}
#' @author JJB
#' @details
#' \code{\link{identical}} function tests for an exact match meaning that
#' the variable's storage types match, the overall environment the variable
#' is stored in is the same, and, most importantly, there is no tolerance
#' for small numerical differences.
#'
#' When in doubt, consult \code{\link{all.equal}} to perform near equality tests
#' using a tolerance operation (e.g does a number fall within a certain range).
#' However, the use of \code{\link{all.equal}} must be enclosed within
#' \code{\link{isTRUE}} as the function is setup to return \emph{differences}.
#' @examples
#' # Generate some data
#' set.seed(991)
#' x <- y <- rnorm(100)
#'
#' # Returns TRUE as the objects are exactly the same
#' x %==% y
#'
#' # Returns FALSE as the objects differ.
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
`%==%` <- function(x, y) identical(x, y)

#' @rdname obj_check
#' @export
`%!=%` <- function(x, y) !identical(x, y)
