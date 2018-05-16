\name{brob}
\alias{brob}
\alias{as.brob}
\alias{is.brob}
\title{Brobdingnagian numbers}
\description{
  Create, coerce to or test for a Brobdingnagian object
}
\usage{
brob(x = double(), positive)
as.brob(x)
is.brob(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{Quantity to be tested, coerced in to Brobdingnagian form}
  \item{positive}{In function \code{brob()}, logical indicating whether
    the number is positive (actually, positive or zero)}
}
\details{
Function \code{as.brob()} is the user's workhorse: use this to coerce
numeric vectors to \code{brob}s.

Function \code{is.brob()} tests for its arguments being of class
\code{brob}.

Function \code{brob()} takes argument \code{x} and returns a \code{brob}
formally equal to \eqn{e^x}{exp(x)}; set argument \code{positive} to
\code{FALSE} to return \eqn{-e^x}{-exp(x)}.  Thus calling function
\code{exp(x)} simply returns \code{brob(x)}.  This function is not
really intended for the end user: it is confusing and includes no
argument checking.  In general numerical work, use function
\code{as.brob()} instead, although be aware that if you really really
want \eqn{e^{10^7}}{e^1e7}, you should use \code{brob(1e7)}; 
this would be an \strong{exact} representation.
}

\note{

  The package has poor handling of \code{NA} and \code{NaN}:

  \code{as.brob(1) + as.brob(c(1,NA))}

  currently returns an error.

  }

\author{Robin K. S, Hankin}
\seealso{\code{\link{glub}}}
\examples{

googol <- as.brob(10)^100
googolplex <- 10^googol

(googolplex/googol) / googolplex
#  Thus googolplex/googol == googolplex (!)


# use cbrob() instead of c() when Brobdingnagian numbers are involved:
cbrob(4,exp(as.brob(1e55)))


}
\keyword{math}
