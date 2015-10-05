\name{hodar.arules.sparse}
\alias{hodar.arules.sparse}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
hodar.arules.sparse
}
\description{
Convenience function to run arules when transactions are provided in sparse format
}
\usage{
hodar.arules.sparse(trans, conf = 0.1, supp = 0.1)
}
\arguments{
  \item{trans}{
Transaction information in sparse format
}
  \item{conf}{
Cutoff confidence level for generating rules -- default is 0.1
}
  \item{supp}{
Cutoff support level for generating rules default is 0.1
}
}

\value{
Returns a rules object as defined in the arules package.
}

\author{
Viswa Viswanathan
}
\examples{
library(hodar)
data(grocery)
sparse = as(split(grocery[,2], grocery[,1]), "transactions")
rules = hodar.arules.sparse(sparse, 0.8, 0.2)
inspect(rules)

## The function is currently defined as
function (trans, conf = 0.1, supp = 0.1) 
{
    library(arules)
    res = apriori(trans, parameter = list(support = supp, confidence = conf))
    res
  }
}

