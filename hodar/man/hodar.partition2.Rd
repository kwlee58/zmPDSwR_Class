\name{hodar.partition2}
\alias{hodar.partition2}
\title{
hodar.partition2
}
\description{
Convenience method to create two partitions of the data, prior to data mining.
}
\usage{
hodar.partition2(dat, trainSize = 0.7 * nrow(dat), seed = 2013)
}

\arguments{
  \item{dat}{
The data frame to partition.
}
  \item{trainSize}{
Number of rows to place in the training partition. The default value is 0.7 of the original number of rows.
}
  \item{seed}{
The random seed to initialize the random number generator with. The default is 2013.
}
}

\value{
A list with:
\item{data}{The original data}
\item{training}{Rows in the training partition}
\item{validation}{Rows in the validation partition}
}

\author{
Viswa Viswanathan
}

\examples{
library(hodar)
data(housing)
dat = hodar.partition2(housing)
nrow(dat$training)
nrow(dat$validation)
dat1 = hodar.partition2(housing, 300)
nrow(dat1$training)
nrow(dat1$validation)

## The function is currently defined as
function (dat, trainSize = 0.7 * nrow(dat), seed = 2013) 
{
    set.seed(seed)
    sam = sample(1:nrow(dat), trainSize, replace = F)
    res = list(data = dat, training = dat[sam, ], validation = dat[-sam, 
        ])
    res
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
