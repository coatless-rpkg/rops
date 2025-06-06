% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/equality-ops.R
\name{\%notin\%}
\alias{\%notin\%}
\title{Not in}
\usage{
x \%notin\% table
}
\arguments{
\item{x}{vector or \code{NULL}: the values to be matched.
    \link[base]{Long vectors} are supported.}

\item{table}{vector or \code{NULL}: the values to be matched against.
    \link[base]{Long vectors} are not supported.}
}
\value{
A logical vector of \code{TRUE} or \code{FALSE} that indicates if a match was
\strong{not} found for each element of \code{x}.
}
\description{
Determine if an element is not present inside of a set. In particular,
this function checks to see if \code{x} is not in \code{table}.
}
\details{
This operator is a modified version of the \code{\link{\%in\%}} function.
}
\examples{
# Returns TRUE as 2 is not found in the vector c(3, 4)
2 \%notin\% c(3, 4)

# Returns FALSE as 2 is found in the vector c(1, 2)
2 \%notin\% c(1, 2)

# Vectorized variant that contains FALSE and TRUE
c(1, 2) \%notin\% c(2, 3)
}
\seealso{
\code{\link{\%in\%}}
}
