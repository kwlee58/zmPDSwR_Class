hodar.rpart.reg.plot <-
function(model) {
	
	prp(model, type=2, nn=TRUE, fallen.leaves=TRUE, faclen=4, varlen=8, shadow.col="gray")
}
