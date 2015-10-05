hodar.rpart.build <-
function(formula, dat, mn_split=30, c_p = 0){
	res = rpart(formula, data=dat, control = rpart.control(minsplit=mn_split, cp = c_p))
}
