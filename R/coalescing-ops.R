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
#'
#' @section Warning:
#' Due to the way objects are created within \emph{R}, the \code{NULL} value
#' is not able to be stored within \code{\link[=vector]{atomic vectors}}.
#' However, the \code{\link{NULL}} value can be stored within a \code{\link{list}}.
#' This operator will \emph{not} be triggered if \code{\link{NULL}} is within
#' a list! That is, the RHS side will be returned.
#' @export
#' @seealso \code{\link{is.null}}, \code{\link{NULL}}
#' @examples
#' # Null value
#' x = NULL
#'
#' # Before
#' y = if(is.null(x)){ "Unset" } else { x }
#'
#' # After
#' y = x %??% "Unset"
#'
#' # Concrete examples without variables
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


#' Missingness Coalescing Operator
#'
#' Substitutes values when \code{NA} is detected.
#' @param x An possibly containing \code{NA} values
#' @param y An object of equal length or a single value to be used in
#'          substitution
#' @details
#' The objective of this function is to provide an ability to substitute values
#' for NA. However, it is important to note that \emph{R} is unique in the fact
#' that it has an \code{NA} data type to represent missingness instead of relying
#' on values being pre-coded (e.g. 0, -1111, et cetera). Thus, the simplicity
#' of this function comes with the disclaimer of:
#'
#' "An NA is the presence of an absence.
#'  Don't forget that some missing values are the absence of a presence"
#'  \href{https://twitter.com/hadleywickham/status/738802081448886272}{Hadley Wickham on Twitter}
#' @export
#' @references
#' \url{https://support.office.com/en-us/article/IFNA-function-6626c961-a569-42fc-a49d-79b4951fd461}
#' @examples
#' # Data with missing values
#' x <- c(1, NA, NA, 4)
#' # Substitution vector of equal length
#' y <- 1:4
#'
#' # Replace NA with values in `y` vector
#' ifna(x, y)
#'
#' # Replace NA with 5
#' ifna(x, 5)
ifna <- function(x, y) ifelse(is.na(x), y, x)
