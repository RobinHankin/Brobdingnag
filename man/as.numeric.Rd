\name{as.numeric}
\alias{as.numeric}
\alias{as.complex}
\alias{as.numeric,brob-method}
\alias{as.complex,brob-method}
\alias{as.numeric,glub-method}
\alias{as.complex,glub-method}
\alias{coerce,brob,numeric-method}
\alias{coerce,brob,complex-method}
\alias{coerce,glub,numeric-method}
\alias{coerce,glub,complex-method}
\title{Coerces to numeric or complex form}
\description{
  Coerces an object of class \code{brob} to numeric, or an object of
  class \code{glub} to complex
}
\arguments{
  \item{x}{Object of class \code{brob} or \code{glub}}
  \item{\dots}{Further arguments (currently ignored)}
}
\details{
  Function \code{as.numeric()} coerces a \code{brob}  to numeric; if given
  a \code{glub}, the imaginary component is ignored (and a warning given).

  Function \code{as.complex()} coerces to complex.
}
\author{Robin K. S. Hankin}
\note{
  If \eqn{\left|x\right|}{|x|} is greater than
  \code{.Machine$double.xmax}, then \code{as.numeric(x)} returns
  \code{Inf} or \code{-Inf} but no warning is given.
}
\examples{
a <- as.brob(1:10)
a <- cbrob(a, as.brob(10)^1e26)
a
as.numeric(a)

as.complex(10i + a)

}
\keyword{math}
