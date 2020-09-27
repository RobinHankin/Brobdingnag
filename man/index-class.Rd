\name{index-class}
\Rdversion{1.1}
\docType{class}
\alias{index-class}

\title{Class \code{"index"}}
\description{
A virtual class for matrix extraction, copied from the \code{Matrix}
package.
}
\section{Objects from the Class}{A virtual Class: No objects may be created from it.}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "brobmat", i = "index", j = "index")}: ... }
    \item{[}{\code{signature(x = "brobmat", i = "index", j = "missing")}: ... }
    \item{[}{\code{signature(x = "brobmat", i = "missing", j = "index")}: ... }
    \item{[<-}{\code{signature(x = "brobmat", i = "index", j = "index")}: ... }
    \item{[<-}{\code{signature(x = "brobmat", i = "index", j = "missing")}: ... }
    \item{[<-}{\code{signature(x = "brobmat", i = "missing", j = "index")}: ... }
	 }
}
\references{

Douglas Bates and Martin Maechler (2019).  Matrix: Sparse and Dense
Matrix Classes and Methods. {R} package version 1.2-18.
\url{https://CRAN.R-project.org/package=Matrix}

}
\author{Bates and Maechler, I guess}
\seealso{\code{\linkS4class{brobmat}}}
\examples{
showClass("index")
}
\keyword{classes}
