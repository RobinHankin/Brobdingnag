\name{plot}
\alias{plot}
\alias{plot,brob-method}
\alias{plot,brob,missing-method}
\alias{plot,brob,ANY-method}
\alias{plot,ANY,brob-method}
\alias{plot,glub-method}
\alias{plot,glub,missing-method}
\alias{plot,glub,ANY-method}
\alias{plot,ANY,glub-method}
\title{Basic plotting of Brobs}
\description{
  Plotting methods.  Essentially, any brob is coerced to a numeric and
  any glub is coerced to a complex, and the argument or arguments are
  passed to \code{plot()}.
}
\usage{
plot(x, y, ...)
}
\arguments{
  \item{x,y}{Brob or glub}
  \item{\dots}{Further arguments passed to \code{plot()}}
}
\author{Robin K. S. Hankin}
\examples{
plot(as.brob(1:10))
}
\keyword{math}
