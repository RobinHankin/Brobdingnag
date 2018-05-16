\name{sum}
\alias{sum}
\alias{min}
\alias{max}
\alias{prod}
\alias{range}
\alias{Summary,brob-method}
\alias{Summary,glub-method}
\title{Various summary statistics for brobs and glubs}
\description{Various summary statistics for brobs and glubs
}
\arguments{
  \item{x,\dots}{Objects of class \code{brob} or, in the case of
    \code{sum()} and \code{prob()}, class \code{glub}}
  \item{na.rm}{Boolean, with default \code{FALSE} meaning to interpret
    \code{NA}s literally and \code{TRUE} meaning to ignore any such
    elements}
}
\details{
  For a \code{brob} object, being \code{NA} is not entirely
  straightforward.  The S4 method for \code{is.na} is too
  \dQuote{strict} for some of the functions considered here.  Consider
  \code{max(a)} where \code{a} includes only positive, fully
  specified, elements, and elements with known negative sign and
  exponents that include \code{NA} values.  Here, \code{max(a)}
  is unambiguously determined.
 
  Similar logic applies to \code{min()} and, by extension,
  \code{range()}. 
}
\author{Robin K. S. Hankin}
\note{
  Function \code{prod()} is \emph{very} slow for long \code{glub}
  vectors.  It has to compute four Brobdingnagian products and two
  Brobdingnagian sums per element of its argument, and this takes a long
  time.
}
\seealso{\code{\link{is.na}}}
\examples{
a <- as.brob(1:10)
max(cbrob(1:10,brob(NA,FALSE)))
}
\keyword{math}
