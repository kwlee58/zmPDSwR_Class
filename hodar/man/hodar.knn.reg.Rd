\name{hodar.knn.reg}
\alias{hodar.knn.reg}

\title{
hodar.knn.reg
}
\description{
Convenience method to run knn.reg from package FNN and report the RMS error.
}
\usage{
hodar.knn.reg(trg_predictors, val_predictors, trg_target, val_target, k)
}

\arguments{
  \item{trg_predictors}{
Predictor attributes/columns in the training partition. Express as a vector of column numbers. 
These values should generally be standardized, because KNN computes distances.
}
  \item{val_predictors}{
Predictor attributes/columns in the validation partition. Express as a vector of column numbers. 
These values should generally be standardized, because KNN computes distances.
}
  \item{trg_target}{
%The column number of the target attribute in the training partition. This column contains
the actual value of the target attribute (or independent variable).
}
  \item{val_target}{
The column number of the target attribute in the validation partition (the data for which we are computing the predictions). 
This coulumn contains the actual value of the target attribute (or independent variable) -- used to compute the RMS error.
}
  \item{k}{
Number of neighbors to use
}
}

\value{
Returns the RMS error.
}

\author{
Viswa Viswanathan}
\examples{
library(hodar)
data(education)
education = hodar.dummy(education, c(2))
education = hodar.scale.many(education,c(3:5, 7:9))
dat = hodar.partition3(education)
hodar.knn.reg(dat$training[,c(3:5,7:9)], dat$validation[,c(3:5,7:9)], 
			dat$training[,6], dat$validation[,6], 2)


## The function is currently defined as
function (trg_predictors, val_predictors, trg_target, val_target, 
    k) 
{
    library(FNN)
    res = knn.reg(trg_predictors, val_predictors, trg_target, 
        k, algorithm = "brute")
    errors = res$pred - val_target
    rmse = sqrt(sum(errors * errors)/nrow(val_predictors))
    cat(paste("RMSE for k=", toString(k), ":", sep = ""), rmse, 
        "\n")
    rmse
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
