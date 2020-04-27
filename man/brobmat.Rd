\name{brobmat}
\alias{brobmat}
\alias{brobmat_to_brob}
\alias{as.brobmat}
\alias{t}
\alias{t.brobmat}
\alias{newbrobmat}
\alias{as.brobmat}
\alias{is.brobmat}
\alias{getat}
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
getat(e1,e2)
\method{print}{brobmat}(x,...)
t(x,...)
}
\arguments{
  \item{x}{Argument}
  \item{e1,e2}{Brobmats}
  \item{\dots}{Further arguments}
  \item{positive}{Logical, indicating whether an element is positive}
}
\details{
Basic arithmetic for Brobdingnagian matrices.
}
\value{
Generally return a \code{brobmat} or \code{brob}.
}
\author{Robin K. S. Hankin}
\examples{

brobmat(1:30,5,6)

}