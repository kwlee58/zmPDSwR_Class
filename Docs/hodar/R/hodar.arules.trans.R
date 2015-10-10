hodar.arules.trans <-
function(dat, conf = 0.1, supp = 0.1) {
	
	sparse = as(split(dat[,2], dat[,1]), "transactions")
	res = hodar.arules.sparse(sparse, conf, supp)
	res
}
