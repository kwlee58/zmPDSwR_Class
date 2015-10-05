hodar.arules.sparse <-
function(trans, conf = 0.1, supp = 0.1) {
	res = apriori(trans, parameter = list(support=supp, confidence=conf))
	res
}
