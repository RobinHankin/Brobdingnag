\name{Math}
\alias{abs}
\alias{log}
\alias{exp}
\alias{cosh}
\alias{sinh}
\alias{acos}
\alias{acosh}
\alias{asin}
\alias{asinh}
\alias{atan}
\alias{atanh}
\alias{cos}
\alias{sin}
\alias{tan}
\alias{tanh}
\alias{cos}
\alias{sin}
\alias{tan}
\alias{tanh}
\alias{trunc}
\alias{lgamma}
\alias{cumsum}
\alias{gamma}
\alias{ceiling}
\alias{floor}
\alias{sqrt}
\alias{sqrt,brob-method}
\alias{sqrt,glub-method}
\alias{Math,brob-method}
\alias{Math,glub-method}
\title{Various logarithmic and circular functions for brobs}
\description{
Various elementary functions for brobs
}
\arguments{
  \item{x}{Object of class \code{brob} (or sometimes \code{glub})}
  \item{base}{In function \code{log()}, the base of the logarithm}
}
\details{
  For \code{brob}s: apart from \code{abs()}, \code{log()}, \code{exp()},
  \code{sinh()} and \code{cosh()}, these functions return
  \code{f(as.numeric(x))} so are numeric; the exceptional functions
  return \code{brob}s.

  For \code{glub}s: mostly direct transliteration of the appropriate
  formula; one might note that \code{log(z)} is defined as
  \code{glub(log(Mod(x)),Arg(x))}. 
}
\author{Robin K. S. Hankin}  
\examples{
exp(as.brob(3000))  #exp(3000) is represented with zero error
}
\keyword{math}
