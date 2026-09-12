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
\alias{[,brob,ANY,ANY,ANY-method}
\alias{[,brobmat-method}
\alias{[,brobmat,ANY,ANY,ANY-method}
\alias{[,brobmat,index,index,ANY-method}
\alias{[,brobmat,index,missing,ANY-method}
\alias{[,brobmat,matrix,missing,ANY-method}
\alias{[,brobmat,missing,index,ANY-method}
\alias{[,brobmat,missing,missing,ANY-method}
\alias{[,glub,ANY,ANY,ANY-method}
\alias{[<-,brobmat-method}
\alias{[<-,brob,ANY,ANY,ANY-method}
\alias{[<-,brobmat,index,index,ANY-method}
\alias{[<-,brobmat,index,missing,ANY-method}
\alias{[<-,brobmat,matrix,missing,ANY-method}
\alias{[<-,brobmat,missing,index,ANY-method}
\alias{[<-,brobmat,missing,missing,ANY-method}
\alias{[<-,glub,ANY,ANY,ANY-method}
\title{Extract or Replace Parts of brobs or glubs}
\description{
   Methods for \code{"["} and  \code{"[<-"}, i.e., extraction or
   subsetting of brobs and glubs.
 }
\usage{
\S4method{[}{brob}(x, i, j, \dots, drop = TRUE)
\S4method{[}{glub}(x, i, j, \dots, drop = TRUE)
\S4method{[}{brobmat}(x, i, j, \dots, drop = TRUE)
\S4method{[}{brob}(x, i, j, \dots) <- value
\S4method{[}{glub}(x, i, j, \dots) <- value
\S4method{[}{brobmat}(x, i, j, \dots) <- value
}
\arguments{
  \item{x}{Object of class brob or glub}
  \item{i, j, \dots}{elements to extract or replace}
  \item{value}{replacement value}
  \item{drop}{Boolean, indicating whether to \code{drop} the result}
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
