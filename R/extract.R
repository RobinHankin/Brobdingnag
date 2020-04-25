

## "x[]":
setMethod("[",
          signature(x = "brobmat",
                    i = "missing", j = "missing",
                    drop = "ANY"),
	  function(x, i, j, ..., drop){
              return(x)
          } )


## select rows, x[i,]:
setMethod("[",
          signature(x = "brobmat",
                    i = "index", j = "missing",
                    drop = "ANY"),
	  function(x,i,j, ..., drop) {
              if(missing(drop)){drop <- TRUE}
              xv <- getX(x)[i,,drop=drop]
              if(drop & (!is.matrix(xv))){
                  return(brob(xv,getP(x)[i,]))
              } else {
                  return(newbrobmat(xv, getP(x)[i,,drop=FALSE]))
              }
          } )

## select columns, x[,j]:
setMethod("[",
          signature(x = "brobmat",
                    i = "missing", j = "index",
                    drop = "ANY"),
	  function(x,i,j, ..., drop) {
              if(missing(drop)){drop <- TRUE}
              xv <- getX(x)[,j,drop=drop]
              if(drop & (!is.matrix(xv))){
                  return(brob(xv,getP(x)[,j]))
              } else {
                  return(newbrobmat(xv, getP(x)[,j,drop=FALSE]))
              }
	  } )

## select both rows *and* columns
setMethod("[",
          signature(x = "brobmat",
                    i = "index", j = "index",
                    drop = "ANY"),
	  function(x,i,j, ..., drop) {
              if(missing(drop)){drop <- TRUE}
              xv <- getX(x)[i,j,drop=drop]
              if(drop & (!is.matrix(xv))){
                  return(brob(xv,getP(x)[i,j]))
              } else {
                  return(newbrobmat(xv, getP(x)[i,j,drop=FALSE]))
              }

	  } )

## bail out if any of (i,j,drop) is "non-sense"
setMethod("[",
          signature(x = "brobmat",
                    i = "ANY", j = "ANY",
                    drop = "ANY"),
	  function(x,i,j, ..., drop){
              stop("invalid or not-yet-implemented brobmat subsetting")
          } )

