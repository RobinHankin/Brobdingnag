setClass("brobmat", slots = c(x="matrix",positive="logical"))

`.brobmat.valid` <- function(object){

    if(length(object@x) != length(object@positive)){
        return("length mismatch")
    } else {
        return(TRUE)
    }
}

setValidity("brobmat", .Brob.valid)

`newbrobmat` <- function(x,positive){
    new("brobmat", x=x, positive=c(positive)) # this is the only use of new() here
}

`brobmat` <- function(...){
    jj <- matrix(...)
    return(newbrobmat(abs(jj),c(jj>0)))
}
    
`is.brobmat` <- function(x){is(x,"brobmat")}

setMethod("getX","brobmat",function(x){x@x})
setMethod("getP","brobmat",function(x){
    out <- getX(x)
    storage.mode(out) <- "logical"
    out[] <- x@positive
    ## No occurrences of '@' after this line
    return(out)
})

`as.brobmat` <- function(x){
  if(is.brob(x)){
    return(newbrobmat(matrix(getX(x)),matrix(getP(x))))  # n-by-1
  } else if(is.numeric(x)){
      x <- as.matrix(x)
      return(newbrobmat(log(abs(x)), c(x>=0)))
  }
}

`is.brobmat` <- function(x){is(x,"brobmat")}   

setAs("brobmat", "matrix", function(from){
  out <- exp(getX(from))
  negs <- !getP(from)
  out[negs] <- -out[negs]
  return(out)
} )

setMethod("as.matrix",signature(x="brobmat"),function(x){as(x,"matrix")})

`.brobmat.print` <- function(x, digits=5){
    out <- getX(x)
    out[] <- paste(c("-","+")[1+getP(x)],"exp(",signif(out,digits),")",sep="")
    noquote(out)
}

`print.brobmat` <- function(x, ...){
  jj <- .brobmat.print(x, ...)
  print(jj)
  return(invisible(jj))
}

setMethod("show", "brobmat", function(object){print.brobmat(object)})

setMethod("[", "brobmat",
          function(x, i, j,  drop){
              xv <- getX(x)[i,j,drop=drop]
              if(drop & (!is.matrix(xv))){
                  return(brob(xv,getP(x)[i,j]))
              } else {
                  return(newbrobmat(xv, getP(x)[i,j,drop=FALSE]))
              }
          } )

setReplaceMethod("[",signature(x="brobmat"),
                 function(x,i,j,value){
                   jj.x <- getX(x)
                   jj.pos <- getP(x)
                   if(is.brobmat(value)){
                     jj.x[i,j] <- getX(value)  # matrix or vector
                     jj.pos[i,j] <- getP(value)
                     return(brobmat(x=jj.x,positive=jj.pos))
                   } else {
                     x[i,j] <- as.brob(value)
                     return(x)
                   }
                 } )



