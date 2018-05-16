\name{Logic}
\alias{logic.brob}
\alias{Logic,swift,ANY-method}
\alias{Logic,ANY,swift-method}
\alias{Logic,swift,swift-method}
\title{Logical operations on brobs}
\description{
Logical operations on brobs are not supported
}
\author{Robin K. S. Hankin}
\note{

  The S4 group generic \dQuote{Logic} appeared in R-2.4.0-patched.

  Carrying out logical operations in this group will call
  \code{.Brob.logic()}, which reports an error.
  
  Negation, \dQuote{\code{!}}, is not part of this group: attempting to
  negate a brob will not activate \code{.Brob.logic()}; an \dQuote{invalid
  argument type} error is given instead.

}
\examples{

\dontrun{
!brob(10)
}
}
\keyword{math}
