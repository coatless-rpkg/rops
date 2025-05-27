#' Exact Object Equality Check
#'
#' Short-hand declarations for checking whether x is equivalent to y
#'
#' @param x,y two data structures
#'
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
#' x <- y <- rnorm(100)
#'
#' # Returns TRUE as the objects are exactly the same
#' x %==% y
#'
#' # Returns FALSE as the objects do not differ.
#' x %!=% y
#'
#' # Change data
#' x2 <- x+1
#'
#' # Returns FALSE as the data has changed.
#' x2 %==% y
#'
#' # Returns TRUE since the data is different.
#' x2 %!=% y
#' @rdname obj_check
#' @export
`%==%` <- function(x, y) identical(x, y)

#' @rdname obj_check
#' @export
`%!=%` <- function(x, y) !identical(x, y)

#' Not in
#'
#' Determine if an element is not present inside of a set. In particular,
#' this function checks to see if `x` is not in `table`.
#'
#' @inheritParams base::match
#'
#' @return
#' A logical vector of `TRUE` or `FALSE` that indicates if a match was
#' **not** found for each element of `x`.
#'
#' @details
#' This operator is a modified version of the [`%in%`] function.
#'
#' @seealso
#' [`%in%`]
#'
#' @examples
#' # Returns TRUE as 2 is not found in the vector c(3, 4)
#' 2 %notin% c(3, 4)
#'
#' # Returns FALSE as 2 is found in the vector c(1, 2)
#' 2 %notin% c(1, 2)
#'
#' # Vectorized variant that contains FALSE and TRUE
#' c(1, 2) %notin% c(2, 3)
#' @export
`%notin%` <- function(x, table) {
    # Same as !(x %in% table)
    match(x, table, nomatch = 0L) == 0L
}
