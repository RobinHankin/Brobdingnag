\name{glub-class}
\docType{class}
\alias{glub-class}
\alias{.cPair,brob,glub-method}
\alias{.cPair,ANY,glub-method}
\alias{.cPair,glub,glub-method}
\alias{.cPair,glub,ANY-method}
\alias{.cPair,glub,brob-method}
\title{Class "glub" }
\description{Complex Brobdingnagian numbers}
\section{Objects from the Class}{
A \code{glub} object holds two slots, both \code{brobs}, representing
the real and imaginary components of a complex vector.
}
\section{Slots}{
	 \describe{
    \item{\code{real}:}{Object of class \code{"brob"}  representing the
      real component}
    \item{\code{imag}:}{Object of class \code{"brob"} representing the
      imaginary component}
  }
}
\section{Extends}{
Class \code{"swift"}, directly.
}
\section{Methods}{
  \describe{
    \item{.cPair}{\code{signature(x = "brob", y = "glub")}: ... }
    \item{.cPair}{\code{signature(x = "ANY", y = "glub")}: ... }
    \item{.cPair}{\code{signature(x = "glub", y = "glub")}: ... }
    \item{.cPair}{\code{signature(x = "glub", y = "ANY")}: ... }
    \item{.cPair}{\code{signature(x = "glub", y = "brob")}: ... }
    \item{Im<-}{\code{signature(x = "glub")}: ... }
    \item{Re<-}{\code{signature(x = "glub")}: ... }
	 }
}
\author{Robin K. S. Hankin}
\seealso{
  \code{\link{brob-class}},\code{\link{swift-class}}
}
\examples{
a <- as.brob(45)
new("glub",real=a, imag=a)

as.brob(5+5i)   # standard R idiom; imaginary component discarded
as.glub(5+5i)   # returns a Glubbdubdribian object


}
\keyword{classes}
