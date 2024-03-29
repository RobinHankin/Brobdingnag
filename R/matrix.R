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

`brobmat` <- function(..., positive){
    data <- list(...)[[1]]
    if(is.matrix(data)){ 
        M <- data
    } else if(is.brob(data)){
        jj <- list(...)
        jj[[1]] <- getX(data)
        M <- do.call(matrix,jj) # signs not accounted for
        return(newbrobmat(M,positive=getP(data)))
    } else { 
        M <- matrix(...)
    }
    if(missing(positive)){positive <- rep(TRUE,length(M))}
    positive <- cbind(c(M),positive)[,2]>0
    return(newbrobmat(M,positive=positive))
}

`is.brobmat` <- function(x){is(x,"brobmat")}

setMethod("getX","brobmat",function(x){x@x})
setMethod("getX","numeric",function(x){x})
setMethod("getP","brobmat",function(x){
    out <- getX(x)
    storage.mode(out) <- "logical"
    out[] <- x@positive
    ## No occurrences of '@' after this line
    return(out)
})
setMethod("getP","numeric",function(x){x>0})
setMethod("length","brobmat",function(x){length(getX(x))})

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

`brobmat_to_brob` <- function(x){ brob(c(getX(x)),c(getP(x))) }


setMethod("as.matrix",signature(x="brobmat"),function(x){as(x,"matrix")})
setGeneric("nrow")
setGeneric("ncol")
setMethod("nrow",signature(x="brobmat"),function(x){nrow(getX(x))})
setMethod("ncol",signature(x="brobmat"),function(x){ncol(getX(x))})


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



setMethod("Math", "brobmat",
          function(x){
            switch(.Generic,
                   abs    = brobmat(getX(x)),
                   log    = {
                     out <- getX(x)
                     out[!getP(x)] <- NaN
                     out  # numeric matrix
                   },
                   log10  = {
                     out <- getX(x)
                     out[!getP(x)] <- NaN
                     out/log(10)  # numeric matrix

                   },
                   log2 = {
                     out <- getX(x)
                     out[!getP(x)] <- NaN
                     out/log(2)  # numeric matrix
                   },
                   exp    =,
                   cosh   =,
                   sinh   =,
                   acos   =,
                   acosh  =,
                   asin   =,
                   asinh  =,
                   atan   =,
                   atanh  =,
                   cos    =,
                   sin    =,
                   tan    =,
                   tanh   =,
                   trunc  =,
                   lgamma =,
                   cumsum =,
                   gamma  =,
                   ceiling=,
                   floor  =,
                   stop(gettextf("Function %s not implemented on brobmat objects", dQuote(.Generic)))
                     )
          } )

setMethod("Arith",signature(e1 = "brobmat", e2="missing"),
          function(e1,e2){
            switch(.Generic,
                   "+" = e1,
                   "-" = newbrobmat(getX(e1),positive=!getP(e1)),
                   stop(gettextf("unary operator %s not implemented on brobmat objects", dQuote(.Generic)))
                   )
          } )


"brobmat.arith" <- function(e1,e2){
  switch(.Generic,
         "+" = brobmat.add  (e1,  e2),
         "-" = brobmat.add  (e1, -e2),
         "*" = brobmat.mult (e1, e2),
         "/" = brobmat.mult (e1, brobmat.inverse(e2)),
         "^" = brobmat.power(e1, e2),
         stop(gettextf("binary operator %s not implemented on Brobdingnagian numbers", dQuote(.Generic)))
         ) }

setMethod("Arith", signature(e1 = "brobmat", e2="brob"   ), brobmat.arith)
setMethod("Arith", signature(e1 = "brob"   , e2="brobmat"), brobmat.arith)
setMethod("Arith", signature(e1 = "brobmat", e2="ANY"    ), brobmat.arith)
setMethod("Arith", signature(e1 = "ANY"    , e2="brobmat"), brobmat.arith)
setMethod("Arith", signature(e1 = "brobmat", e2="brobmat"), brobmat.arith)

`getat` <- function(e1,e2=e1){
    if(length(e1)>=length(e2)){
        return(attributes(getX(e1)))
    } else {
        return(attributes(getX(e2)))
    }
}

`brobmat.add` <- function(e1,e2){
    out <- as.brob(e1) + as.brob(e2)
    jj <- getX(out)
    attributes(jj) <- getat(e1,e2)
    return(newbrobmat(jj,getP(out)))
}

`brobmat.mult` <- function(e1,e2){
    out <- as.brob(e1) * as.brob(e2)
    jj <- getX(out)
    attributes(jj) <- getat(e1,e2)
    return(newbrobmat(jj,getP(out)))
}

`brobmat.inverse` <- function(e1){
    if(is.brobmat(e1)){
        out <- 1/as.brob(e1)
        jj <- getX(out)
        attributes(jj) <- getat(e1)
        return(newbrobmat(jj,getP(out)))
    } else {
        return(1/e1)
    }
}

`brobmat.power` <- function(e1,e2){
    out <- as.brob(e1) ^ as.brob(e2)
    jj <- getX(out)
    attributes(jj) <- getat(e1,e2)
    return(newbrobmat(jj,getP(out)))
}

"brobmat.equal" <- function(e1,e2){
    out <- as.brob(e1) == as.brob(e2)
    attributes(out) <- getat(e1,e2)
    return(out)
}

"brobmat.greater" <- function(e1,e2){
    out <- as.brob(e1) > as.brob(e2)
    attributes(out) <- getat(e1,e2)
    return(out)
}

"brobmat.compare" <- function(e1,e2){
   if( (length(e1) == 0) | (length(e2)==0)) {
       return(logical(0))
   }

  switch(.Generic,
         "==" =  brobmat.equal(e1,e2),
         "!=" = !brobmat.equal(e1,e2),
         ">"  =  brobmat.greater(e1,e2),
         "<"  = !brobmat.greater(e1,e2) & !brobmat.equal(e1,e2),
         ">=" =  brobmat.greater(e1,e2) |  brobmat.equal(e1,e2),
         "<=" = !brobmat.greater(e1,e2) |  brobmat.equal(e1,e2),
         stop(gettextf("comparison operator %s not implemented on brobmat objects", dQuote(.Generic)))
         )
}

setMethod("Compare", signature(e1="brobmat", e2="ANY"    ), brobmat.compare)
setMethod("Compare", signature(e1="ANY"    , e2="brobmat"), brobmat.compare)
setMethod("Compare", signature(e1="brobmat", e2="brobmat"), brobmat.compare)


`brobmat_matrixprod` <- function(x,y){
    stopifnot(ncol(x)==nrow(y))
    out <- brobmat(NA,nrow(x),ncol(y))
    for(i in seq_len(nrow(x))){
        for(j in seq_len(ncol(y))){
            out[i,j] <- sum(x[i,,drop=TRUE]*y[,j,drop=TRUE])
        } # j loop closes
    } # i loop closes
    if(!is.null(rownames(x))){rownames(out) <- rownames(x)}
    if(!is.null(colnames(x))){colnames(out) <- colnames(y)}
    return(out)
}

setMethod("%*%", signature(x="brobmat", y="ANY"    ), brobmat_matrixprod)
setMethod("%*%", signature(x="ANY"    , y="brobmat"), brobmat_matrixprod)
setMethod("%*%", signature(x="brobmat", y="brobmat"), brobmat_matrixprod)

setGeneric("as.vector")
setMethod("as.vector", signature(x="brobmat"), function(x){as.brob(x)})
setMethod("as.vector", signature(x="brob"), function(x){x})

setGeneric("rownames")
setMethod("rownames", signature(x="brobmat"), function(x){rownames(getX(x))})

setGeneric("colnames")
setMethod("colnames", signature(x="brobmat"), function(x){colnames(getX(x))})

setGeneric("dimnames")
setMethod("dimnames", signature(x="brobmat"), function(x){dimnames(getX(x))})

setGeneric("rownames<-")
setMethod("rownames<-", signature(x="brobmat"),
          function(x,value){
              jj <- getX(x)
              rownames(jj) <- value
              return(brobmat(jj,getP(x)))
          } )

setGeneric("colnames<-")
setMethod("colnames<-", signature(x="brobmat"),
          function(x,value){
              jj <- getX(x)
              colnames(jj) <- value
              return(brobmat(jj,getP(x)))
          } )

setGeneric("dimnames<-")
setMethod("dimnames<-", signature(x="brobmat"),
          function(x,value){
              jj <- getX(x)
              dimnames(jj) <- value
              return(brobmat(jj,getP(x)))
          } )

setGeneric("diag", function(x, ...){standardGeneric("diag")})
setMethod("diag", signature(x="brobmat"),function(x,...){brob(diag(getX(x)),diag(getP(x)))})
setMethod("diag", signature(x="ANY"), function(x,...){base::diag(x)})

setGeneric("t", function(x, ...) standardGeneric("t"))
setMethod("t", signature(x="brobmat"),function(x,...){brob(t(getX(x)),t(getP(x)))})
setMethod("t", signature(x="ANY"),function(x,...){base::t(x)})


