\name{hodar.arules.trans}
\alias{hodar.arules.trans}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
hodar.arules.trans function
}
\description{
Creates association rules for a set of transactions expressed in transaction format and returns a "rules" object as defined in the arules package.
}
\usage{
hodar.arules.trans(dat, conf = 0.1, supp = 0.1)
}
\arguments{
  \item{dat}{
The transactions in sparse format
}
  \item{conf}{
Cutoff confidence level -- default is 0.1
}
  \item{supp}{
Cutoff support level -- default is 0.1
}
}

\value{
rules object as defined in the arules package
}
\author{
Viswa Viswanathan
}

\examples{
library(hodar)
data(grocery)
rules = hodar.arules.trans(grocery)
inspect(rules)
rules.1 = hodar.arules.trans(grocery, conf = 0.1, supp = 0.4)
inspect(rules.1)

## The function is currently defined as
function (dat, conf = 0.1, supp = 0.1) 
{
    library(arules)
    sparse = as(split(dat[, 2], dat[, 1]), "transactions")
    res = hodar.arules.sparse(sparse, conf, supp)
    res
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
