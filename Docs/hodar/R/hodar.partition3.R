hodar.partition3 <-
function(dat, trainSize=0.7*nrow(dat), validationSize = (nrow(dat) - trainSize)/2, seed = 2013) {
	if(trainSize+validationSize >= nrow(dat)) {
		cat("Error: Training size + validation size equals or exceeds the total number of cases.\n")
		cat("You can leave both of these empty to make the function use a 70-15-15 division\n")
		cat("by using hodar.partition3(<data frame name>) \n or specify the size of the training partition alone\n")
		cat("by using hodar.partition3(<data frame name>, <no of cases in training>) or \n")
		cat("specify the sizes for both training and validation by using\n")
		cat("hodar.partition3(<data frame name>, <no of cases in training>, <no of cases in validation>\n") 
		return()
	}
	

	set.seed(seed)

	sam = sample(1:nrow(dat), trainSize, replace=F)

	trg = dat[sam,]

	rest = dat[-sam,]

	sam = sample(1:nrow(rest), validationSize, replace=F)

	val = rest[sam,]

	tes = rest[-sam,]

	res = list(data = dat, training = trg, validation = val, test = tes)

	res

}
