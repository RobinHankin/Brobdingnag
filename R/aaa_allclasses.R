setClass("brobmat", slots = c(x="matrix",positive="logical"))
setClass("swift",
         representation = "VIRTUAL"
         )

setClass("brob",
         slots    = c(x="numeric",positive="logical"),
         contains = "swift"
         )

setClass("glub",
         slots    = c(real="brob",imag="brob"),
         contains = "swift"
         )


