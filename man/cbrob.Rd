\name{cbrob}
\alias{cbrob}
\alias{cBrob}
\title{Combine Brobdingnagian vectors}
\description{
  Combine  Brobdingnagian or Glubdubbdribian vectors through concatenation
}
\usage{
cbrob(x, ...)
}
\arguments{
  \item{x}{Brobdingnagian vector}
  \item{\dots}{Other arguments coerced to brob form}
}
\details{

  If any argument has class \code{glub}, all arguments are coerced to
  \code{glub}s.  Otherwise, if any argument has class \code{brob}, all
  arguments are coerced to \code{brob}s.

  Function \code{cbrob()} operates recursively, calling \code{.cPair()}
  repeatedly.  Function \code{.cPair()} uses S4 method dispatch to call
  either \code{.Brob.cpair()} or \code{.Glub.cpair()} according to the
  classes of the arguments.  }

\author{Robin K. S. Hankin; original idea due to John Chambers}
\note{

  As of R-2.4.0, it is apparently not possible to use S4 methods to
  redefine \code{c()} to coerce to class \code{brob} form and
  concatenate as expected.  This would seem to be a reasonable
  interpretation of \code{c()} from the user's perspective.

  Conceptually, the operation is simple: concatenate the \code{value}
  slot and the \code{positive} slot separately, then call \code{brob()}
  on the two resulting vectors.  When concatenating \code{glub} objects,
  the real and imaginary components (being \code{brob}s) are
  concatenated using \code{.Brob.cpair()}
  
  The choice of name---\code{cbrob()}---is not entirely logical.
  Because it operates consistently on \code{brob} and \code{glub}
  objects, it might be argued that \code{cSwift()} would be a more
  appropriate name. 
}
\examples{
a <- as.brob(2)^1e-40
cbrob(1:4,4:1,a)
cbrob(1:4,a,1i)
}
\keyword{math}
