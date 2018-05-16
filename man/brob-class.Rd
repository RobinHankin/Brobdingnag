\name{brob-class}
\docType{class}
\alias{brob-class}
\alias{.cPair,ANY,ANY-method}
\alias{.cPair,brob,brob-method}
\alias{.cPair,brob,ANY-method}
\alias{.cPair,brob,complex-method}
\alias{.cPair,ANY,brob-method}
\alias{.cPair,complex,brob-method}
\alias{getP,brob-method}
\alias{getX,brob-method}
\alias{sign<-,brob-method}

\title{Class "brob" }
\description{
  The formal S4 class for Brobdingnagian numbers
  }
\section{Objects from the Class}{
Objects \emph{can} be created by calls of the form \code{new("brob",
  ...)} but this is not encouraged.  Use functions \code{brob()} and,
especially, \code{as.brob()} instead.
}
\section{Slots}{
  \describe{
    \item{\code{x}:}{Object of class \code{"numeric"} holding the log
      of the absolute value of the number to be represented }
    \item{\code{positive}:}{Object of class \code{"logical"} indicating
      whether the number is positive (see Note, below)}
  }
}
\section{Extends}{
Class \code{"swift"}, directly.
}
\author{Robin K. S. Hankin}
\note{
  Slot \code{positive} indicates non-negativity, as zero is
  conventionally considered to be \dQuote{positive}.
}
\seealso{
\code{\link{glub-class}},\code{\link{swift-class}}
}
\examples{
new("brob",x=5,positive=TRUE)  # not intended for the user

as.brob(5)  # Standard user-oriented idiom
}
\keyword{classes}
