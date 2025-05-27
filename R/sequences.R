#' Safe Sequence Generation and a Safe Colon Operator
#'
#' Generate safe sequences by strictly enforcing either a positive or negative
#' increment
#'
#' @inheritParams base::seq
#'
#' @return
#' An integer vector that is either empty or contains a sequence of
#' numbers.
#'
#' @details
#' Creating sequences using either [base::seq()] function or [`:`]
#' operator have a notable draw back of incorrectly generating positional
#' indices when a vector is empty. For example, consider `x = NULL`. Then,
#' the expression `1:length(x)` would evaluate to `1:0` which expands to `c(1,0)`.
#' As a result, any \code{\link[base]{Control}} may inadvertantly trigger an out of bounds
#' error on the initial run.
#'
#' The `safe_seq()` and `%:%` operator seeks to prevent this issue by enforcing
#' either an ascending or descending sequence depending on the `by` condition.
#' For the `%:%` operator, note that this is restricted to being _always_
#' positive.
#' @examples
#' # Returns a sequence increasing by 1
#' safe_seq(1, 4)
#'
#' # Returns an empty vector
#' safe_seq(4, 1)
#'
#' # Similar result
#' 4 %:% 1
#'
#' # Correct result
#' 1 %:% 4
#' @rdname safe_seq
#' @export
safe_seq <- function(from = 1L,
                    to = 1L,
                    by = 1L) {

    if (by == 0) {
        stop("`by` must not be zero.", call. = FALSE)
    } else if(length(from) != 1L ||
              length(to) != 1L) {
        stop("`from` and `to` must contain only one value.", call. = FALSE)
    }

    # Check incrementer polarity
    if (by > 0) {
        # Enforce increasing sequence
        if (from < to) {
            seq(from, to, by = by)
        } else {
            integer()
        }
    } else {
        # Enforces decreasing sequence
        if (from > to) {
            seq(from, to, by = by)
        } else {
            integer()
        }
    }
}

#' @rdname safe_seq
#' @export
`%:%` <- function(from, to) { safe_seq(from, to, by = 1L) }
