% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{functions}
\alias{functions}
\title{functions for greta arrays}
\description{
This is a list of functions in base R that are currently
  implemented to transform greta arrays. Also see \link{operators} and
  \link{transforms}.
}
\details{
TensorFlow only enables rounding to integers, so \code{round()} will
  error if \code{digits} is set to anything other than \code{0}.

  Any additional arguments to \code{chol()} and \code{solve()} will be
  ignored, see the TensorFlow documentation for details of these routines.

  \code{diag()} can be used to extract or replace the diagonal part of a
  square and two-dimensional greta array, but it cannot be used to create a
  matrix-like greta array from a scalar or vector-like greta array. A static
  diagonal matrix can always be created with e.g. \code{diag(3)}, and then
  converted into a greta array.

  \code{sweep()} only works on two-dimensional greta arrays (so \code{MARGIN}
  can only be either 1 or 2), and only for subtraction, addition, division
  and multiplication.
}
\section{Usage}{
 \preformatted{

 # logarithms and exponentials
 log(x)
 exp(x)
 log1p(x)
 expm1(x)

 # miscellaneous mathematics
 abs(x)
 mean(x)
 sqrt(x)
 sign(x)

 # rounding of numbers
 ceiling(x)
 floor(x)
 round(x, digits = 0)

 # trigonometry
 cos(x)
 sin(x)
 tan(x)
 acos(x)
 asin(x)
 atan(x)

 # special mathematical functions
 lgamma(x)
 digamma(x)
 choose(n, k)
 lchoose(n, k)

 # matrix operations
 t(x)
 chol(x, ...)
 diag(x, nrow, ncol)
 diag(x) <- value
 solve(a, b, ...)

 # reducing operations
 sum(..., na.rm = TRUE)
 prod(..., na.rm = TRUE)
 min(..., na.rm = TRUE)
 max(..., na.rm = TRUE)

 # cumulative operations
 cumsum(x)
 cumprod(x)

 # miscellaneous operations
 sweep(x, MARGIN, STATS, FUN = c('-', '+', '/', '*'))

 # solve an upper or lower triangular system
 backsolve(r, x, k = ncol(r), upper.tri = TRUE,
           transpose = FALSE)
 forwardsolve(l, x, k = ncol(l), upper.tri = FALSE,
              transpose = FALSE)

}
}

\examples{
\dontrun{

x <- as_data(matrix(1:9, nrow = 3, ncol = 3))
a <- log(exp(x))
b <- log1p(expm1(x))
c <- sign(x - 5)
d <- abs(x - 5)

e <- diag(x)
diag(x) <- e + 1

z <- t(a)

y <- sweep(x, 1, e, '-')
}
}
