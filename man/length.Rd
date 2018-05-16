\name{length-methods}
\docType{methods}
\alias{length}
\alias{length,brob-method}
\alias{length,glub-method}
\alias{length,brob-method}
\alias{length,glub-method}
\title{Get lengths of brobs and glubs}
\description{
Get lengths of brob and glub vectors
}
\usage{
\S4method{length}{brob}(x)
\S4method{length}{glub}(x)
}
\arguments{
  \item{x}{vector of class brob or glub}
}
\author{Robin K. S. Hankin}
\examples{
x <- as.brob(-10:10)
length(x)
}
\keyword{math}
\keyword{methods}
