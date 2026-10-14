#' @importFrom stats rnorm

#' @export
"rbrob" <- function(n = 10){
    brob(
        x = rnorm(n, sample(c(-500,500,0), n, replace=TRUE)),
        positive=sample(c(TRUE,FALSE), n, replace=TRUE))
}

#' @export
"rbrobb" <- function(n=30){rbrob(n=n)}
