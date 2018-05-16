\name{Arith-methods}
\docType{methods}
\alias{Arith-methods}
\alias{Arith,brob,missing-method}
\alias{Arith,brob,ANY-method}
\alias{Arith,brob,brob-method}
\alias{Arith,brob,complex-method}
\alias{Arith,ANY,brob-method}
\alias{Arith,ANY,glub-method}
\alias{Arith,glub,missing-method}
\alias{Arith,glub,glub-method}
\alias{Arith,glub,ANY-method}
\alias{Arith,glub,complex-method}
\alias{Arith,complex,brob-method}
\alias{Arith,complex,glub-method}
\alias{Arith,brob,glub-method}
\alias{Arith,glub,brob-method}
\title{Methods for Function Arith in package Brobdingnag}
\description{
Methods for Arithmetic functions in package Brobdingnag: \code{+},
\code{-}, \code{*}, \code{/}, \code{^}
}
\author{Robin K. S. Hankin}
\note{

  The unary arithmetic functions (viz \dQuote{\code{+}} and
  \dQuote{\code{-}}) do no coercion. 
  
  The binary arithmetic functions coerce \code{numeric} <op> \code{brob} to
  \code{brob}; and \code{numeric} <op> \code{glub},
  \code{complex} <op> \code{brob}, and \code{brob} <op> \code{glub},
  to \code{glub}.
}
\examples{
x <- as.brob(1:10)
y <- 1e10

x+y

as.numeric((x+y)-1e10)

x^(1/y)



}
\keyword{methods}
\keyword{math}
