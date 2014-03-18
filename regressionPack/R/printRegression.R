#' Prints summary info for Regression class objects 
#' 
#' @usage print(x) 
#' 
#' @param x A Regression class object
#' 
#' @author Elif Ozdemir: \email{eozdemir@wustl.edu}
#' @seealso \code{\link{showRegression}}
#' @rdname printRegression
#' @aliases printRegression, Regression-method
#' @export
setGeneric(name="printRegression",
           def=function(object)
           {standardGeneric("printRegression")}
)

#' @export
setMethod("printRegression", "Regression", 
          definition=function(object){
            cat("Number of observations:", length(object@y), "\n")
            cat("Number of regressions:", length(object@coef), "\n")
            cat("Maximum R-squared:", max(object@Rsquare), "\n")
            cat("Minimum R-squared:", min(object@Rsquare), "\n")
            cat("Mean coefficient:\n")
            sapply(1:nrow(object@coef), function(x){
              cat(mean(object@coef[x,],na.rm=TRUE),"\n")
            }) #end of sapply
          })#end of setMethod