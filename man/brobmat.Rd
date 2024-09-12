\name{brobmat}
\alias{brobmat}
\alias{brobmat_to_brob}
\alias{as.brobmat}
\alias{t}
\alias{t.brobmat}
\alias{newbrobmat}
\alias{as.brobmat}
\alias{is.brobmat}
\alias{print.brobmat}
\alias{diag}
\title{Brobdingnagian matrices}
\description{
Basic matrix arithmetic for Brobdingnagian numbers.  Matrix addition,
multiplication extraction and replacement implemented but not the 
determinant or matrix inverse.
}
\usage{
brobmat(..., positive)
newbrobmat(x,positive)
as.brobmat(x)
is.brobmat(x)
brobmat_to_brob(x)
diag(x,...)
\method{print}{brobmat}(x,...)
t(x,...)
}
\arguments{
  \item{x}{Argument}
  \item{\dots}{Further arguments}
  \item{positive}{Logical, indicating whether an element is positive}
}
\details{
  Basic arithmetic for Brobdingnagian matrices.

  To create a Brobdingnagian matrix, use \code{as.brobmat()}; function
  \code{brobmat()} can be confusing.

  Function \code{brobmat()} is like \code{brob()} in that it interprets
  its first argument as the exponent (but creates a matrix); the sign of
  the entry is given by Boolean argument \code{positive}.  Function
  \code{as.brobmat()} coerces a numeric matrix to a \code{brobmat}.

}
\value{
Generally return a \code{brobmat} or \code{brob}.
}
\author{Robin K. S. Hankin}
\examples{

(M <- brobmat(-10:19,5,6))
all(M > 0)  # should be TRUE (sic)

brobmat(


as.brobmat(matrix(-10:19,5,6))

}
