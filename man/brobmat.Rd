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
\title{Brobdingagian matrices}
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

  Function \code{brobmat()} is like \code{brob()} in that it interprets
  its first argument as the exponent (but creates a matrix).  Function
  \code{as.brobmat()} coerces a numeric matrix to a
  \code{brobmat}.
}
\value{
Generally return a \code{brobmat} or \code{brob}.
}
\author{Robin K. S. Hankin}
\examples{

brobmat(-10:19,5,6)
as.brobmat(matrix(-10:19,5,6))

}