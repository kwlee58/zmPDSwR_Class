\name{hodar.rmse}
\alias{hodar.rmse}

\title{
hodar.rmse
}
\description{
Computes the RMS error based on a predictive/regression model and some data.
}
\usage{
hodar.rmse(model, data, target)
}

\arguments{
  \item{model}{
A fitted regression model (could be from linear regression, knn,reg, rpart, etc. 
The model should be capable of being used as an argument to the predict function.
}
  \item{data}{
The data for which we want to compute the RMS error.
}
  \item{target}{
The column number or name that contains the actual values.
}
}

\value{
Returns the RMS error that the model yields on the data.
}

\author{
Viswa Viswanathan
}

\examples{
library(hodar)
data(housing)
dat = hodar.partition2(housing)
fit = lm(MEDV ~ ., data = dat$training)
hodar.rmse(fit, dat$training)
hodar.rmse(fit, dat$validation)

## The function is currently defined as
function (model, data, target) 
{
    res = data[, target] - predict(model, data)
    rmse = sqrt(mean(res * res))
    rmse
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
