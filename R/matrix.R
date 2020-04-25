

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

`brobmat` <- function(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL,positive){
    if(is.matrix(data)){
        M <- data
    } else if(is.brob(data)){
        return(newbrobmat(x=matrix(getX(data),nrow=length(data),ncol=ncol,byrow=byrow,dimnames=dimnames), positive=c(getP(data))))
    } else { 
        M <- matrix(data = data, nrow = nrow, ncol = ncol, byrow = byrow, dimnames = dimnames)
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
                   stop(paste(.Generic, "not implemented on brobmats"))
                     )
          } )

setMethod("Arith",signature(e1 = "brobmat", e2="missing"),
          function(e1,e2){
            switch(.Generic,
                   "+" = e1,
                   "-" = newbrobmat(getX(e1),positive=!getP(e1)),
                   stop(paste("Unary operator", .Generic,
                              "not allowed on brobmats"))
                   )
          } )


"brobmat.arith" <- function(e1,e2){
  switch(.Generic,
         "+" = brobmat.add  (e1,  e2),
         "-" = brobmat.add  (e1, -e2),
         "*" = brobmat.mult (e1, e2),
         "/" = brobmat.mult (e1, brobmat.inverse(e2)),
         "^" = brobmat.power(e1, e2),
         stop(paste("binary operator \"", .Generic, "\" not defined for Brobdingnagian numbers"))
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
         stop(paste(.Generic, "not supported for brobmats numbers"))
         )
}

setMethod("Compare", signature(e1="brobmat", e2="ANY"    ), brobmat.compare)
setMethod("Compare", signature(e1="ANY"    , e2="brobmat"), brobmat.compare)
setMethod("Compare", signature(e1="brobmat", e2="brobmat"), brobmat.compare)



`brobmat_matrixprod` <- function(x,y){
    stopifnot(ncol(x)==nrow(y))
    out <- brobmat(NA,nrow(x),ncol(y))
    for(i in seq_len(ncol(x))){
        for(j in seq_len(nrow(y))){
            out[i,j] <- sum(x[i,,drop=TRUE]*y[,j,drop=TRUE])
        } # j loop closes
    } # i loop closes
}
setMethod("%*%", signature(x="brobmat", y="ANY"), brobmat_matrixprod)
