#' Coefficient analysis 
#'
#' Employs output of the \code{\link{regAnalysis}} function to evaluate the importance of coefficients
#'
#' @param x A Regression class object
#'
#' @return An object of class Coefficient containing
#'  \item{coef}{A coefficient matrix}
#'  \item{Rsquare}{A numeric vector}
#'  \item{MeanRsquare}{A numeric vector}
#'  \item{x}{The first object input} 
#'  \item{y}{The second object input}
#' @author Elif Ozdemir
#' @note This function uses the fits of all possible combinations of covariates to evaluate their importance
#' @seealso \code{\link{regAnalysis}}
#'
#' @examples
#' myX <- matrix(rnorm(30, mean=10, sd=5), ncol=3)
#' myY <- sample(1:100, 10)
#' model<- regAnalysis(myX, myY)
#' coefAnalysis(model)
#' 
#' @rdname coefAnalysis
#' @aliases coefAnalysis,Regression-method
#' @export
setGeneric(name="coefAnalysis",
           def=function(object)
           {standardGeneric("coefAnalysis")}
)

#' @export
setMethod(f="coefAnalysis", "Regression"
          definition=function(object){
          MeanRsquare<- apply(object@coef, 1, function(a) mean(object@Rsquare)) 
          return(new("Coefficient", MeanRsquare=MeanRsquare, coef=object@coef, Rsquare=object@Rsquare, x=object@x, y=object@y)) #first one is for the intercept
          }
)