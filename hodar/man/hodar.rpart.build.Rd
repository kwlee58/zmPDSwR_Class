\name{hodar.rpart.build}
\alias{hodar.rpart.build}

\title{
hodar.rpart.build
}
\description{
Build an unpruned classification tree using the rpart function.
}
\usage{
hodar.rpart.build(formula, dat, mn_split = 30, c_p = 0)
}

\arguments{
  \item{formula}{
The formula for the model using the formula interface.
}
  \item{dat}{
The data frame for which we want to build a classification tree.
}
  \item{mn_split}{
Minimum number of cases at a node to be considered for (recursive) partitioning -- default 30.
}
  \item{c_p}{
Complexity factor -- default 0.
}
}

\value{
Returns a classification tree object as in the rpart package.
}

\author{
Viswa Viswanathan
}



\examples{
library(hodar)
data(lcars)
# The following builds the complete tree
cmodel = hodar.rpart.build(Car_type ~ ., lcars, 2, 0)
# Plot it
hodar.rpart.plot(cmodel)
cmodel
# The following builds a smaller tree by using the mn_split parameter
cmodel = hodar.rpart.build(Car_type ~ ., lcars, 5, 0)
hodar.rpart.plot(cmodel)

## The function is currently defined as
function (formula, dat, mn_split = 30, c_p = 0) 
{
    library(rpart)
    res = rpart(formula, data = dat, control = rpart.control(minsplit = mn_split, 
        cp = c_p))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
