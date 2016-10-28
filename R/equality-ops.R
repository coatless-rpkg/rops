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
