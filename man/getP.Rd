\name{getP}
\alias{getP}
\alias{getX}
\alias{sign<-}
\title{Get and set methods for brob objects}
\description{
Get and set methods for brobs: sign and value
}
\usage{
getP(x)
getX(x)
sign(x) <- value
}
\arguments{
  \item{x}{Brobdingnagian object}
  \item{value}{In function \code{sign<-()}, Boolean specifying whehter
    the brob object is positive}
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{brob}}}
\examples{
x <- as.brob(-10:10)
sign(x) <- TRUE
}
\keyword{math}
