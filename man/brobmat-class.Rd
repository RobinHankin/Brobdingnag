\name{brobmat-class}
\Rdversion{1.1}
\docType{class}
\alias{brobmat-class}
\alias{[,brobmat,ANY,ANY-method}
\alias{[,brobmat,index,index-method}
\alias{[,brobmat,index,missing-method}
\alias{[,brobmat,missing,index-method}
\alias{[,brobmat,missing,missing-method}
\alias{[<-,brobmat,index,index-method}
\alias{[<-,brobmat,index,missing-method}
\alias{[<-,brobmat,missing,index-method}
\alias{[<-,brobmat,missing,missing-method}
\alias{\%*\%,ANY,brobmat-method}
\alias{\%*\%,brobmat,ANY-method}
\alias{\%*\%,brobmat,brobmat-method}
\alias{Arith,ANY,brobmat-method}
\alias{Arith,brob,brobmat-method}
\alias{Arith,brobmat,ANY-method}
\alias{Arith,brobmat,brob-method}
\alias{Arith,brobmat,brobmat-method}
\alias{Arith,brobmat,missing-method}
\alias{as.matrix,brobmat-method}
\alias{as.vector,brobmat-method}
\alias{coerce,brobmat,matrix-method}
\alias{colnames,brobmat-method}
\alias{colnames<-,brobmat-method}
\alias{Compare,ANY,brobmat-method}
\alias{Compare,brobmat,ANY-method}
\alias{Compare,brobmat,brobmat-method}
\alias{diag,brobmat-method}
\alias{diag,ANY-method}
\alias{dimnames,brobmat-method}
\alias{dimnames<-,brobmat-method}
\alias{getP,brobmat-method}
\alias{getP,ANY-method}
\alias{getP,numeric-method}
\alias{getX,brobmat-method}
\alias{getX,ANY-method}
\alias{getX,numeric-method}
\alias{length,brobmat-method}
\alias{Math,brobmat-method}
\alias{ncol,brobmat-method}
\alias{nrow,brobmat-method}
\alias{rownames,brobmat-method}
\alias{rownames<-,brobmat-method}
\alias{show,brobmat-method}
\alias{t,brobmat-method}
\alias{t,ANY-method}

\title{Class \code{"brobmat"}}
\description{
The \code{brobmat} class provides basic Brobdingnagian arithmetic for matrices.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("brobmat", ...)},
although functions \code{brobmat()}, \code{as.brobmat()} are more
user-friendly.
}
\section{Slots}{
  \describe{
    \item{\code{x}:}{Object of class \code{"matrix"} ~~ }
    \item{\code{positive}:}{Object of class \code{"logical"} ~~ }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "brobmat", i = "ANY", j = "ANY")}: ... }
    \item{[}{\code{signature(x = "brobmat", i = "index", j = "index")}: ... }
    \item{[}{\code{signature(x = "brobmat", i = "index", j = "missing")}: ... }
    \item{[}{\code{signature(x = "brobmat", i = "missing", j = "index")}: ... }
    \item{[}{\code{signature(x = "brobmat", i = "missing", j = "missing")}: ... }
    \item{[<-}{\code{signature(x = "brobmat", i = "index", j = "index")}: ... }
    \item{[<-}{\code{signature(x = "brobmat", i = "index", j = "missing")}: ... }
    \item{[<-}{\code{signature(x = "brobmat", i = "missing", j = "index")}: ... }
    \item{[<-}{\code{signature(x = "brobmat", i = "missing", j = "missing")}: ... }
    \item{\%*\%}{\code{signature(x = "ANY", y = "brobmat")}: ... }
    \item{\%*\%}{\code{signature(x = "brobmat", y = "ANY")}: ... }
    \item{\%*\%}{\code{signature(x = "brobmat", y = "brobmat")}: ... }
    \item{Arith}{\code{signature(e1 = "ANY", e2 = "brobmat")}: ... }
    \item{Arith}{\code{signature(e1 = "brob", e2 = "brobmat")}: ... }
    \item{Arith}{\code{signature(e1 = "brobmat", e2 = "ANY")}: ... }
    \item{Arith}{\code{signature(e1 = "brobmat", e2 = "brob")}: ... }
    \item{Arith}{\code{signature(e1 = "brobmat", e2 = "brobmat")}: ... }
    \item{Arith}{\code{signature(e1 = "brobmat", e2 = "missing")}: ... }
    \item{as.matrix}{\code{signature(x = "brobmat")}: ... }
    \item{as.vector}{\code{signature(x = "brobmat")}: ... }
    \item{coerce}{\code{signature(from = "brobmat", to = "matrix")}: ... }
    \item{colnames}{\code{signature(x = "brobmat")}: ... }
    \item{colnames<-}{\code{signature(x = "brobmat")}: ... }
    \item{Compare}{\code{signature(e1 = "ANY", e2 = "brobmat")}: ... }
    \item{Compare}{\code{signature(e1 = "brobmat", e2 = "ANY")}: ... }
    \item{Compare}{\code{signature(e1 = "brobmat", e2 = "brobmat")}: ... }
    \item{diag}{\code{signature(x = "brobmat")}: ... }
    \item{dimnames}{\code{signature(x = "brobmat")}: ... }
    \item{dimnames<-}{\code{signature(x = "brobmat")}: ... }
    \item{getP}{\code{signature(x = "brobmat")}: ... }
    \item{getX}{\code{signature(x = "brobmat")}: ... }
    \item{length}{\code{signature(x = "brobmat")}: ... }
    \item{Math}{\code{signature(x = "brobmat")}: ... }
    \item{ncol}{\code{signature(x = "brobmat")}: ... }
    \item{nrow}{\code{signature(x = "brobmat")}: ... }
    \item{rownames}{\code{signature(x = "brobmat")}: ... }
    \item{rownames<-}{\code{signature(x = "brobmat")}: ... }
    \item{show}{\code{signature(object = "brobmat")}: ... }
    \item{t}{\code{signature(x = "brobmat")}: ... }
  }
}
\references{
Brobdingnag R News paper
}
\author{Robin K. S. Hankin}
\seealso{
\code{\link{as.brob}}, \code{\linkS4class{brob}}
}
\examples{
showClass("brobmat")
}
\keyword{classes}
