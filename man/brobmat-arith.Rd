\name{brobmat.mult}
\alias{brobmat.mult}
\alias{brobmat.add}
\alias{brobmat.mult}
\alias{brobmat.power}
\alias{brobmat.inverse}
\alias{brobmat.greater}
\alias{brobmat.equal}
\alias{brobmat.compare}
\alias{brobmat.arith}
\alias{brobmat_matrixprod}
\title{
Brobdingagian matrix arithmetic
}
\description{Basic arithmetic for Brobdingnagian matrices}
\usage{
brobmat.mult(e1, e2)
brobmat.add(e1, e2)
brobmat.mult(e1, e2)
brobmat.power(e1, e2)
brobmat.inverse(e1)
brobmat.greater(e1, e2)
brobmat.equal(e1, e2)
}
\arguments{
  \item{e1,e2}{Arguments coerced to \code{brobmat}
  }
}
\details{
These functions are helper functions used by the \code{brobmat} Arith
group.
}
\value{
Return a \code{brobmat}, or logical for the comparison operators.
}
\author{Robin K. S. Hankin}
\examples{
a <- brobmat(1:54,6,9)
rownames(a) <- letters[1:6]
a + 1e30
a-a

b <- as.brobmat(matrix(rnorm(27),9,3))
colnames(b) <- month.abb[1:3]

a \%*\% b

}