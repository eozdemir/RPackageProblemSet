#' Regression analysis 
#'
#' Regression of all possible combinations of covariates
#'
#' @param x A matrix object
#' @param y A numeric object with the same number of elements as the number \code{x} rows.
#'
#' @return An object of class Regression containing
#'  \item{coef}{A coefficient matrix}
#'  \item{Rsquare}{A numeric vector}
#'  \item{x}{The first object input} 
#'  \item{y}{The second object input}
#' @author Elif Ozdemir
#' @note This function fits all possible combinations of covariates into regression
#' @examples
#' 
#' myX <- matrix(rnorm(30, mean=10, sd=5), ncol=3)
#' myY <- sample(1:100, 10)
#' regAnalysis(myX, myY)
#' @rdname regAnalysis
#' @aliases regAnalysis,ANY-method
#' @export
setGeneric(name="regAnalysis",
           def=function(x, y, ...)
           {standardGeneric("regAnalysis")}
           )

#' @export
setMethod(f="regAnalysis",
          definition=function(x, y, ...){
          x<- cbind(1,x) #add an intercept vector
          covCombn<- sapply(1:ncol(x), function(a){ #list for combination of covariates
            apply(combn(1:ncol(x),a), 2, function(b){
            tempCombn<- logical(length=ncol(x)) #assign empty logical and fill it with through the loop
            tempCombn[z]<- TRUE
            return(tempCombn)
          })#end of apply              
          })#end of supply
          covCombnMat<- matrix(unlist(covCombn), nrow=ncol(x)) #matrix of the covariate combinations
          #outputs
          coefficients<- matrix(nrow=ncol(x), ncol=2^ncol(x)-1)
          r2<- vector(length=2^ncol(x)-1)
          #fit the regression
          a_ply(.data=1:ncol(covCombn), .margins=1, .fun=function(c){
            model<- lm(y~x[,selectorMatrix[,c]]-1)
            coefficients[covCombn[,c],c]<- model[[1]]
            r2[c]<<- summary(model)[["r.squared"]] 
          })
          return(new("Regression", coef=coef, Rsquare=Rsquare, x=x[,2:ncol(x)], y=y)) #first one is for the intercept
          }
          )