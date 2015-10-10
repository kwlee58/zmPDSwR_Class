hodar.partition2 <-
function(dat, trainSize = 0.7*nrow(dat), seed = 2013) {

	set.seed(seed)

	sam = sample(1:nrow(dat), trainSize, replace=F)

	res = list(data = dat, training = dat[sam,], validation = dat[-sam,])

	res

}
