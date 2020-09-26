\name{infinite-methods}
\docType{methods}
\alias{infinite}
\alias{is.infinite}
\alias{is.infinite,brob-method}
\alias{is.infinite,glub-method}
\alias{is.infinite,brob-method}
\alias{is.infinite,glub-method}
\title{Infinite brobs and glubs}
\description{Brobdingnagian and Glubbdubdribian infinity}
\usage{
\S4method{is.infinite}{brob}(x)
\S4method{is.infinite}{glub}(x)
}
\arguments{
  \item{x}{vector of class brob or glub}
}
\details{


For a Brobdingnagian number, \code{is.infinite()} returns \code{TRUE} if
the exponent is infinite.

A Glubbdubdribian number is infinite if either the real or imaginary
component is infinite.
}


\author{Robin K. S. Hankin}
\examples{

is.infinite(brob(c(1,4,Inf)))

is.infinite(glub(3,Inf))
is.infinite(glub(Inf,3))


is.infinite(exp(1e300))
is.infinite(brob(1e300))
# (Brobdingnagian infinity is bigger than regular infinity ;-)


}
\keyword{math}
\keyword{methods}
