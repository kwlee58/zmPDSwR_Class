\name{hodar.knn.reg.multiple.k}
\alias{hodar.knn.reg.multiple.k}
\title{
hodar.knn.reg.multiple.k
}
\description{
Convenience function to run knn.reg for multiple values of k and report the RMS error for each. 
Also plots the RMS error against k. Use this for selecting the best value for k. 
}
\usage{
hodar.knn.reg.multiple.k(trg_predictors, val_predictors, trg_target, val_target, start_k, end_k)
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
The column number of the target attribute in the training partition. This column contains
the actual value of the target attribute (or independent variable).
}
  \item{val_target}{
The column number of the target attribute in the validation partition (the data for which we are computing the predictions). 
This coulumn contains the actual value of the target attribute (or independent variable) -- used to compute the RMS error.
}
  \item{start_k}{
Starting value (or lower limit) for k 
}
  \item{end_k}{
Ending value (or upper limit) for k.
}
}

\value{
No return value. Reports the RME error for various k values and also plots these.
}

\author{
Viswa Viswanathan
}

\examples{
library(hodar)
library(FNN)
data(education)
education = hodar.dummy(education, c(2))
education = hodar.scale.many(education,c(3:5, 7:9))
dat = hodar.partition3(education)
hodar.knn.reg.multiple.k(dat$training[,c(3:5,7:9)], dat$validation[,c(3:5,7:9)], 
			dat$training[,6], dat$validation[,6], 1, 10)

## The function is currently defined as
function (trg_predictors, val_predictors, trg_target, val_target, 
    start_k, end_k) 
{
    rms_errors = vector()
    for (k in start_k:end_k) {
        rms_error = hodar.knn.reg(trg_predictors, val_predictors, 
            trg_target, val_target, k)
        rms_errors = c(rms_errors, rms_error)
    }
    plot(rms_errors, type = "o", xlab = "k", ylab = "RMSE")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
