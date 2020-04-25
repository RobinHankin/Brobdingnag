## Following modified from the Matrix package:
setClassUnion("index", members =  c("numeric", "logical", "character"))


## "x[]":
setMethod("[",
          signature(x = "brobmat",
                    i = "missing", j = "missing",
                    drop = "ANY"),
	  function(x, i, j, ..., drop){
              return(x)
          } )


## select rows:
setMethod("[",
          signature(x = "brobmat",
                    i = "index", j = "missing",
                    drop = "ANY"),
	  function(x,i,j, ..., drop) {
              stop("method 1 not implemented")
	  } )

## select columns
setMethod("[",
          signature(x = "brobmat",
                    i = "missing", j = "index",
                    drop = "missing"),
	  function(x,i,j, ..., drop) {
              stop("method 2 not implemented")
	  } )

## select both rows *and* columns
setMethod("[",
          signature(x = "brobmat",
                    i = "index", j = "index",
                    drop = "missing"),
	  function(x,i,j, ..., drop) {
              stop("method 3 not implemented")
	  } )

## bail out if any of (i,j,drop) is "non-sense"
setMethod("[", signature(x = "brobmat", i = "ANY", j = "ANY", drop = "ANY"),
	  function(x,i,j, ..., drop)
	  stop("invalid or not-yet-implemented 'Matrix' subsetting"))

if(FALSE){
setMethod("[", "brobmat",
          function(x, i, j,  drop){
              dput(x)
              dput(i)
              dput(j)
              if(missing(j)){ return(as.brob(x)[i,]) }
              xv <- getX(x)[i,j,drop=drop]
              if(drop & (!is.matrix(xv))){
                  return(brob(xv,getP(x)[i,j]))
              } else {
                  return(newbrobmat(xv, getP(x)[i,j,drop=FALSE]))
              }
          } )
}
