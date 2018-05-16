\name{Print}
\alias{print.brob}
\alias{print.glub}
\alias{show,brob-method}
\alias{show,glub-method}
\title{Methods for printing brobs and glubs}
\description{
Methods for printing brobs and glubs nicely using exponential notation
}
\usage{
\method{print}{brob}(x, ...)
\method{print}{glub}(x, ...)
}
\arguments{
  \item{x}{An object of class \code{brob} or \code{glub}}
  \item{...}{Further arguments (currently ignored)}
}
\author{Robin K. S. Hankin}
\examples{
a <- as.brob(1:5)
dput(a)
a

}
\keyword{math}
