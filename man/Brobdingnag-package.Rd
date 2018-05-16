\name{Brobdingnag-package}
\alias{Brobdingnag-package}
\alias{Brobdingnag}
\docType{package}
\title{\packageTitle{Brobdingnag}}
\description{\packageDescription{Brobdingnag}}
\details{
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

  There is a vignette, \dQuote{brobpaper}.

}
\author{
  \packageAuthor{Brobdingnag}

Maintainer: \packageMaintainer{Brobdingnag}
}
\references{
R. K. S. Hankin 2007.  \dQuote{Very Large Numbers in R: Introducing Package
Brobdingnag}.  R News, volume 7, number 3, pages 15-16

}
\keyword{ package }
\examples{

googol <- as.brob(10)^100
googolplex <- 10^googol


(1:10)^googol

}
