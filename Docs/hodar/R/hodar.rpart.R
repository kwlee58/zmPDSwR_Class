hodar.rpart <-
function(formula, dat, mn_split=30, c_p = 0.01){
	mod = hodar.rpart.build(formula, dat, mn_split, c_p)
	pmod = hodar.rpart.prune(mod)
	hodar.rpart.plot(pmod)
	pmod
}
