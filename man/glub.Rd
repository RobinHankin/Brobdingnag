\name{glub}
\alias{glub}
\alias{as.glub}
\alias{is.glub}
\title{Glubbdubdribian numbers: complex numbers with Brobdingnagian real
  and imaginary parts}
\description{
  Create, coerce to or test for a Glubbdubdribian object
}
\usage{
glub(real = double(), imag = double())
as.glub(x)
is.glub(x)
}
\arguments{
  \item{real, imag}{Real and imaginary components of complex number:
    must be Brobdingnagian numbers}
  \item{x}{object to be coerced to or tested for Glubbdubdribian form}
}
\details{

A \dfn{Glubbdubdribian} number is the Brobdingnagian equivalent of a
complex number.

Function \code{glub()} takes two arguments that are coerced to
Brobdingnagian numbers and returns a Glubbdubdribian number.  This
function is not really intended for the end user: it is confusing and
includes no argument checking.  Use function \code{as.glub()} instead.

Function \code{as.glub()} is the user's workhorse: use this to coerce
numeric or complex vectors to Glubbdubdribian form.

Function \code{is.glub()} tests for its arguments being Glubbdubdribian.
}
\author{Robin K. S. Hankin}
\note{
  Function \code{glub()} uses recycling inherited from \code{cbind()}.
}
\seealso{\code{\link{brob}}}
\examples{
a <- as.glub(1:10 + 5i)
a^2 - a*a

f <- function(x){sin(x) +x^4 - 1/x}
as.complex(f(a)) - f(as.complex(a))   # should be zero (in the first
                                      # term, f() works with glubs and coerces to
                                      # complex; in the second, f()
                                      # works with complex numbers directly)
}
\keyword{math}
