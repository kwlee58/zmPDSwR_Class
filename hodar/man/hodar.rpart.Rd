\name{hodar.rpart}
\alias{hodar.rpart}

\title{
hodar.rpart
}
\description{
Convenience function to build, prune and plot a classification tree.
}
\usage{
hodar.rpart(formula, dat, mn_split = 30, c_p = 0.01)
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
Returns a tree object as defined by the rpart package. As a side effect, this function also plots the pruned tree.
}

\author{
Viswa Viswanathan
}

\examples{
library(hodar)
data(lcars)
# The following builds the complete tree, prunes and plots it
cmodel = hodar.rpart(Car_type ~ ., lcars, 2, 0)

## The function is currently defined as
function (formula, dat, mn_split = 30, c_p = 0.01) 
{
    library(rpart)
    mod = hodar.rpart.build(formula, dat, mn_split, c_p)
    pmod = hodar.rpart.prune(mod)
    hodar.rpart.plot(pmod)
    pmod
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
