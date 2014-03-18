## Load libraries and set working directory
install.packages("devtools")
library(devtools)
install.packages("roxygen2")
library(roxygen2)
setwd("/Users/elifozdemir/Desktop/WashU 1.2/R Programming/Problem Sets/RPackageProblemSet") #This will need to be changed to match your directory
getwd() #check
## This is run once when the package strcuture is first created
create(path="./regressionPack", check=FALSE)

## At this point put the *.R files into the correcto directories and edit the DESCRIPTION file

## Let's look through the R directory in this order:

# regressionPack-package.r
# Regresssion.R
# regAnalysis.R
# AllRegresion-class.R
# allRegression.R

# Now the NAMESPACE

## This can be run many times as the code is updates
current.code <- as.package("regressionPack")
load_all(current.code)
document(current.code)

## Check the code for compliance
check(current.code)

## Install the package
install(pkg=current.code, local=TRUE)

help(regAnalysis)
help(exampleDataset)
help(regressionPack)
demo(regAnalysis)

## Build a version of the package to share manually
build(current.code, path=getwd())

## Let's look at a function
getRegression
getMethod(regAnalysis, "Regression")
getMethod(regAnalysis, "AllRegression")
getMethod(allRegression)

