\name{Brobdingnag-package}
\alias{Brobdingnag-package}
\alias{Brobdingnag}
\docType{package}
\title{
Brobdingnagian numbers: storing large numbers by their natural logarithms
}
\description{
  Real numbers are represented by two objects: a real, holding the
  logarithm of their absolute values; and a logical, indicating the
  sign.  Multiplication and exponentiation are easy: the challenge is
  addition.  This is achieved using the (trivial) identity
  \eqn{\log(e^x+e^y)=x+\log(1+e^{y-x})}{log(e^x+e^y)=x+log(1+e^(y-x))}
  where, WLOG, \eqn{y<x}.

  Complex numbers are stored as a pair of \code{brob}s: objects of class
  \code{glub}. 

  The package is a simple example of S4 methods.
  
  However, it \emph{could} be viewed as a cautionary tale:  the
  underlying \R concepts are easy yet the S4 implementation is long and
  difficult.  I would not recommend using S4 methods for a package as
  simple as this; S3 methods would have been perfectly adequate.
  I would suggest that S4 methods should only be used when S3 methods
  are \emph{demonstrably} inadequate.
}
\details{
\tabular{ll}{
Package: \tab Brobdingnag\cr
Type: \tab Package\cr
Version: \tab 1.0-1\cr
Date: \tab 2006-09-21\cr
License: \tab GPL\cr
}

The user should coerce numeric vectors to brobs using \code{as.brob()}.
The 4 arithmetic operations, concatenation, trig functions, comparisons,
and so forth, should operate on brobs transparently.  Concatentation of
Brobdingnagian numbers should be done with \code{cbrob()} instead of
\code{c()}.

The basic low-level function is \code{brob()}, which takes two vectors:
a double for the value and a logical for the sign (defaulting to
positive).  Given \code{x}, function \code{brob(x)} returns
\eqn{e^x}{exp(x)}.

Functions \code{as.glub()} and \code{glub()} perform analogous
operations for the complex plane.

}
\author{
Robin K. S. Hankin
<hankin.robin@gmail.com>
}
\keyword{ package }
\examples{
googol <- as.brob(1e100)
googolplex <- 10^googol


f <- function(n){exp(n)*n^n*sqrt(2*pi*n)}

f(googol)   # close to factorial(googol)





}
