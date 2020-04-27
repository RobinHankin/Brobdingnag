\name{Extract.brob}
\alias{[.brob}
\alias{[<-.brob}
\alias{[.glub}
\alias{[<-.glub}
\alias{[,brob-method}
\alias{[<-,brob-method}
\alias{[,glub-method}
\alias{[<-,glub-method}
\alias{[,brob,ANY,ANY-method}
\alias{[,glub,ANY,ANY-method}
\alias{[<-,brob,ANY,ANY-method}
\alias{[<-,glub,ANY,ANY-method}
\title{Extract or Replace Parts of brobs or glubs}
\description{
   Methods for \code{"["} and  \code{"[<-"}, i.e., extraction or
   subsetting of brobs and glubs.
}
\arguments{
  \item{x}{Object of class brob or glub}
  \item{i}{elements to extract or replace}
  \item{value}{replacement value}
}
\value{
  Always returns an object of the same class as \code{x}.
}
\author{Robin K. S. Hankin}
\note{
  If \code{x} is a numeric vector and \code{y} a brob, one might expect
  typing \code{x[1] <- y} to result in \code{x} being a brob.  This is
  impossible, according to John Chambers.
}
\examples{
a <- as.brob(10)^c(-100,0,100,1000,1e32)

a[4]

a[4] <- 1e100

a

}
\keyword{math}
